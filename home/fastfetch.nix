{ ... }:

{
  xdg.configFile."fastfetch/config.jsonc".text = builtins.toJSON {
    "$schema" = "https://github.com/fastfetch-cli/fastfetch/raw/dev/doc/json_schema.json";
    logo = "nixos_small";
    display = {
      separator = "  → ";
      color.keys = "blue";
    };
    modules = [
      "title"
      "separator"
      "os"
      "kernel"
      "shell"
      "terminal"
      "wm"
      "cpu"
      "gpu"
      "memory"
      "disk"
      "break"
      "colors"
    ];
  };
}