{ ... }:

{
  xdg.configFile."fastfetch/config.jsonc".text = builtins.toJSON {
    "$schema" = "https://github.com/fastfetch-cli/fastfetch/raw/dev/doc/json_schema.json";
    logo = "arch";
    display = {
      separator = ": ";
      color.keys = "blue";
      color.separator = "blue";
    };
    modules = [
      "hostname"
      "os"
      "kernel"
      "shell"
      "terminal"
      "de"
      "wm"
      "cpu"
      "gpu"
      "memory"
      "disk"
    ];
  };
}
