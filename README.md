## Terminal Emulator setup
**Recommended Terminal Emulator:**  
- Alacritty

**Adding font ligature support: (Alacritty)**  
ensure that rust and cargo are installed, alongside with fontconfig + fontconfig-dev packages (search in your package manager for details)
Then, run in the terminal:  
```
git clone https://github.com/zenixls2/alacritty

cd alacritty
git checkout ligature
cargo build --release

sudo mv /usr/bin/alacritty /usr/bin/alacritty.bak

sudo cp ./target/release/alacritty /usr/bin
```

## LSP Support

[Look here for more details](https://external.ink?to=/github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md)
