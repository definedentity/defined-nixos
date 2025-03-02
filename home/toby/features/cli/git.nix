{
  programs.git = {
    enable = true;

    extraConfig = {
      init.defaultBranch = "main";
    };

    signing = {
      signByDefault = true;
      key = "56A60775C714FE76";
    };

    userName = "Nguyen Minh Tho";
    userEmail = "definedentity@proton.me";

    ignores = [
      ".cache/"
      ".direnv/"
      ".idea/"
      ".vscode/"
      "npm-debug.log"
    ];
  };
}
