# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## Troubleshooting

### macOS: Picker crashes nvim (Code Signature Invalid)

On macOS 26+, nvim may crash when opening pickers (file finder, etc.) due to stricter code signature validation on dynamically loaded tree-sitter parser `.so` files.

**Fix:** Re-sign all parser files with an ad-hoc signature:

```bash
find ~/.local/share/nvim -name "*.so" -exec codesign --force --sign - {} \;
```

Run this again after updating parsers (`:TSUpdate`).
