{ config,  pkgs, ... }:
{
  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      enable-hot-corners = false;
      gtk-theme = "adw-gtk3-dark";
    };
    "org/gnome/desktop/peripherals/touchpad" = {
      natural-scroll = false;
    };
    "org/gnome/desktop/wm/keybindings" = {
      close = ["<Shift><Super>q"];
      toggle-fullscreen = ["<Super>f"];
      switch-to-workspace-1 = ["<Super>1"];
      switch-to-workspace-2 = ["<Super>2"];
      switch-to-workspace-3 = ["<Super>3"];
      switch-to-workspace-4 = ["<Super>4"];
      minimize = [];
      move-to-workspace-1 = ["<Shift><Super>1"];
      move-to-workspace-2 = ["<Shift><Super>2"];
      move-to-workspace-3 = ["<Shift><Super>3"];
      move-to-workspace-4 = ["<Shift><Super>4"];
    };
    "org/gnome/mutter" = {
      dynamic-workspaces = false;
      edge-tiling = true;
      toggle-tiled-left = ["<Super>h"];
      toggle-tiled-right = ["<Super>l"];
    };
    "org/gnome/mutter/wayland/keybindings" = {
      restore-shortcuts = [];
    };
    "org/gnome/settings-daemon/plugins/media-keys" = {
      help = [];
      screensaver = ["<Super>Escape"];
      custom-keybindings = [
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/"
      ];
    };
    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      binding = "<Super>Return";
      command = "kgx";
      name = "Open new terminal";
    };
    "org/gnome/desktop/wm/preferences" = {
      num-workspaces = 4;
      workspace-names = [ "Main" ];
    };
    "org/gnome/shell" = {
      disable-user-extensions = false;

      # `gnome-extensions list` to find the extension names 
      enabled-extensions = [
       "AlphabeticalAppGrid@stuarthayhurst"
       "blur-my-shell@aunetx"
       "Vitals@CoreCoding.com"
      ];
    };
    "org/gnome/shell/keybindings" = {
      switch-to-application-1 = [];
      switch-to-application-2 = [];
      switch-to-application-3 = [];
      switch-to-application-4 = [];
    };
  };
  
  home.packages = with pkgs; [
    adw-gtk3
    gnomeExtensions.vitals
    gnomeExtensions.blur-my-shell
    gnomeExtensions.alphabetical-app-grid
  ];

  gtk.enable = true;
}
