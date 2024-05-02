#!/bin/bash
# rust stuff
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -y
cargo install sccache
RUSTC_WRAPPER='sccache cargo install {package}'
rustup component add rust-src
rustup component add rust-analyzer
rustup component add clippy
# to use:
# cargo clippy --fix --\
#     -W clippy::pedantic \
#     -W clippy::nursery \
#     -W clippy::unwrap_used \
#    -W clippy::expect_used
# bin replacements
cargo install nu
cargo install coreutils
cargo install starship
cargo install zellij 
cargo install eza 
cargo install ripgrep 
cargo install zoxide 
cargo install bat 
cargo install fd-find 
cargo install gping
cargo install mprocs 
cargo install bottom --locked
cargo install du-dust
cargo install evcxr_repl
cargo install evcxr_jupyter
cargo install bob-nvim
cargo install bacon
cargo install tree-sitter-cli
cargo install cargo-info
# cargo install ncspot
cargo install porsmo
cargo install speedtest-rs
# cargo install wiki-tui
# cargo install rtx-cli
cargo install gitui
cargo install irust
cargo install fzf


# rust dev crates
# cargo add tokio
# cargo add color-eyre
# cargo add tracing
# cargo add reqwest
# cargo add rayon
# cargo add aws-sdk-rust
# cargo add clap
# cargo add sqlx
# cargo add chrono
# cargo add egui
# cargo add yew
