{ pkgs }: {
  desktopPackages = with pkgs; [
    gimp

    libreoffice-qt
    hunspell    
    hunspellDicts.uk_UA
    hunspellDicts.th_TH
  ];
}