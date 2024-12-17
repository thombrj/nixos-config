{ pkgs, config, ... }:
{
  users.users.bryce = {
    isNormalUser = true;
    shell = pkgs.zsh;
    extraGroups = 
      [
        "audio"
	"networkmanager"
	"users"
        "wheel"
      ];
    packages = [ pkgs.home-manager ];
  };

#  environment.sessionVaraibles = {
#    EDITOR = "vim";
#  };
}


