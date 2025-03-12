{
  programs.firefox.policies."Bookmarks" = let
    bookmarks = [
      {
        "title" = "MyNixOS";
        "url" = "https://mynixos.com/";
        "icon" = "https://cdn.jsdelivr.net/gh/NixOS/nixos-artwork@master/logo/nix-snowflake-colours.svg";
      }
      {
        "title" = "Wiki NixOS";
        "url" = "https://wiki.nixos.org/";
        "icon" = "https://cdn.jsdelivr.net/gh/NixOS/nixos-artwork@master/logo/nix-snowflake-colours.svg";
      }
      {
        "title" = "GitHub";
        "url" = "https://github.com";
      }
      {
        "title" = "Proton Mail";
        "url" = "https://mail.proton.me/u/0/inbox";
      }
      {
        "title" = "Cloudflare";
        "url" = "https://dash.cloudflare.com/";
      }
      {
        "title" = "YouTube";
        "url" = "https://www.youtube.com";
      }
    ];
  in
    map (b:
      {
        "Title" = b.title;
        "URL" = b.url;
        "Placement" = "toolbar";
      }
      // (
        if b ? icon
        then {"Favicon" = b.icon;}
        else {}
      )
      // (
        if b ? folder
        then {"Folder" = b.folder;}
        else {}
      ))
    bookmarks;
}
