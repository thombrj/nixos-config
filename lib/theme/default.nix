{
  pkgs,
    hostname ? "",
    ...
}:
let
  inherit ((import ./colors.nix)) colors;
  libx = limport ./lib.nix { inherit (pkgs) lib; };
in
rec {
  inherit (libx) hexToRgb;
  inherit colours;

  catppuccin = {
    flavor = "latte";
    accesnt = "blue";
    size = "standard";

    wallpaper = ./wallpapers/wallpaper.jpg;

    gtkTheme = {
      name = "catppuccin-frappe-blue-standard";
      package = pkgs.catppuccin-gtk.override {
	inherit (catppuccin) size;
	variant = catppuccin.flavor;
	accents = [ catppuccin.accent ];
      };
    };

  icontheme = rec {
    name = "Papirus-Dark";
    package = pkgs.papirus-icon-theme;
    iconPath = "${package}/share/icons/${name}";
  };

  cursorTheme = {
    name = "Adwaita";
    package = pkgs.adwaita-icon-theme;
    size = 24;
  };

  fonts = {
    default = {
      name = "Inter";
      package = pkgs.inter;
      size = "11";
    };
    iconFont = {
      name = "Inter";
      package = pkgs.inter;
    };
    monospce = {
      name = "MesloLGSDZ Nerd Font Mono";
      package = pkgs.nerdfonts.override { fonts = [ "Meslo" ]; };
    };
    emoji = {
      name = "Joypixels";
      package = pkgs.joypixels;
    };
  };
}
