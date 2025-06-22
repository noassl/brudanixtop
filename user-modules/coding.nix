{ ... }:

{
  programs.git = {
    enable = true;
    userName  = "Janik";
    userEmail = "jneissl27@gmail.com";
    extraConfig = {
      init.defaultBranch = "main";
    };
  };
}
