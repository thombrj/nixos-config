rec {
  colours = rec {
    inherit (catppuccin-frappe)
      pink
      red
      yellow
      green
      ;
    inherit (catppuccin-frappe) subtext0 subtext1 text;
    inherit (catppuccin-frappe) overlay0 overlay1 overlay2;
    inherit (catppuccin-frappe) surface0 surface1 surface2;

    accent = darkBlue;
    black = catppuccin-frappe.crust;
    white = catppuccin-frappe.rosewater;
    lightPink = catppuccin-frappe.flamingo;
    lightRed = catppuccin-frappe.maroon;
    orange = catppuccin-frappe.peach;
    cyan  = catppuccin-frappe.teal;
    blue = catppuccin-frappe.sapphire;
    darkBlue= catppuccin-frappe.blue;
    lightBlue = catppuccin-frappe.sky;
    purple = catppuccin-frappe.mauve;
    lightPurple = catppuccin-frappe.lavender;
    bg = catppuccin-frappe.base;
    bgDark = catppuccin-frappe.mantle;
  };
 
  catppuccin-latte = {
    rosewater = #f2d5cf;
    flamingo = #eebebe;
    pink = #f4b8e4;
    mauve = #ca9ee6;
    red = #e78284;
    maroon = #ea999c;
    peach = #ef9f76;
    yellow = #e5c890;
    green = #a6d189;
    teal = #81c8be;
    sky = #99d1db;
    sapphire = #85c1dc;
    blue  = #8caaee;
    lavender = #babbf1;
    text  = #c6d0f5;
    subtext1 = #b5bfe2;
    subtext0 = #a5adce;
    overlay2 = #949cbb;
    overlay1 = #838ba7;
    overlay0 = #737994;
    surface2 = #626880;
    surface1 = #51576d;
    surface0 = #414559;
    base = #303446;
    mantle = #292c3c;
    crust = #232634;
  };
} 
