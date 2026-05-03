{ ... }:

{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "davisenra";
        email = "davi.senra98@gmail.com";
      };
      init.defaultBranch = "main";
      push.autoSetupRemote = true;
      core.editor = "micro";
    };
  };
}
