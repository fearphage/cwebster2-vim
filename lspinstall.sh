#!/usr/bin/env bash
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux; mcode=linux;;
    Darwin*)    machine=Mac; mcode=darwin;;
    *)          machine="UNKNOWN:${unameOut}"
esac

install_lsp_servers_npm() {
  echo
  echo "Installing bash, docker, json, yaml, ts/js, and vimscript language servers"
  echo
  (
    npm install --silent -g \
      bash-language-server \
      dockerfile-language-server-nodejs \
      vscode-json-languageserver \
      yaml-language-server \
      typescript-language-server \
      vim-language-server \
      vls \
      svelte-language-server \
      eslint_d
  )
}

install_lsp_terraform() {
  echo
  echo "Installing terraform language server"
  echo
  (
    TFLSVER=${TFLSVER:-0.12.1}
    TFLSARCH=${TFLSARCH:-amd64}
    TFLSOS=${TFLSOS:-$mcode}
    curl -fLo "${HOME}"/bin/terraform-ls.zip "https://releases.hashicorp.com/terraform-ls/${TFLSVER}/terraform-ls_${TFLSVER}_${TFLSOS}_${TFLSARCH}.zip"
    unzip "${HOME}"/bin/terraform-ls.zip -d "${HOME}"/bin
    rm "${HOME}"/bin/terraform-ls.zip
    chmod 755 "${HOME}"/bin/terraform-ls
  )
}

install_lsp_servers_cargo() {
  echo
  echo "Installing rust and tex language servers"
  echo
  (
    echo "Fetching the rust analyzer language server"
    rustup component add rust-src
    curl -fLo "${HOME}"/bin/rust-analyzer "https://github.com/rust-analyzer/rust-analyzer/releases/latest/download/rust-analyzer-linux"
    chmod 755 "${HOME}"/bin/rust-analyzer

    echo "Building the tex language server"
    cargo install --git https://github.com/latex-lsp/texlab.git --locked
  )
}

install_lsp_servers_go() {
  echo
  echo "Installing language servers"
  echo
  (
    echo "Installing the go language server"
    (
      # this is needed because go get is bad
      set -x
      set +e
      GO111MODULE=on go get golang.org/x/tools/gopls@latest
    )
    echo "Installing efm general purpose ls"
    go get github.com/mattn/efm-langserver
  )
}

install_lsp_servers_python() {
  echo
  echo "Installing the python language server"
  echo
  (
    pip install --quiet python-language-server
  )
}
install_lsp_servers_lua() {
  echo
  echo "Building the lua language server"
  echo
  (
      mkdir -p "${HOME}"/src
      cd "${HOME}"/src
      if [ -d lua-language-server/.git ]; then
        cd lua-language-server
        git pull
      else
        git clone https://github.com/sumneko/lua-language-server
        cd lua-language-server
      fi
      git submodule update --init --recursive
      cd 3rd/luamake
      compile/install.sh
      cd ../..
      ./3rd/luamake/luamake rebuild
  )
}
install_lsp_servers() {
  echo
  echo "Installing language servers"
  echo
  (
    install_lsp_servers_npm
    install_lsp_terraform
    install_lsp_servers_cargo
    install_lsp_servers_go
    install_lsp_servers_python
    install_lsp_servers_lua

    echo
    echo
    echo "Language servers installed"
    echo
    cd "${HOME}"
  )
}

usage() {
  echo "all, node, rust, python, golang, terraform, lua"
}
main() {
  local cmd=$1

  if [[ -z "$cmd" ]]; then
    usage
    exit 1
  fi

  if [[ $cmd == "all" ]]; then
    install_lsp_servers
  elif [[ $cmd == "node" ]]; then
    install_lsp_servers_npm
  elif [[ $cmd == "rust" ]]; then
    install_lsp_servers_cargo
  elif [[ $cmd == "python" ]]; then
    install_lsp_servers_python
  elif [[ $cmd == "golang" ]]; then
    install_lsp_servers_go
  elif [[ $cmd == "terraform" ]]; then
    install_lsp_terraform
  elif [[ $cmd == "lua" ]]; then
    install_lsp_servers_lua
  else
    usage
  fi
}

main "$@"
