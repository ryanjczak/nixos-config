{ pkgs, ... }: { 
  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  programs.dconf.enable = true;

  environment.systemPackages = [ 
    pkgs.gnome.gnome-tweaks
   ];
}
