{
  programs = {
    fastfetch = {
      enable = true;
      settings = builtins.fromJSON (builtins.readFile ../../config/fastfetch.jsonc);
    };
  };
}
