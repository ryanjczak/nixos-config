{ pkgs, ... }: {
  home.username = "ryan";
  home.homeDirectory = "/home/ryan";

  home.sessionVariables = {
    STEAM_EXTRA_COMPAT_TOOLS_PATHS = "\${HOME}/.steam/root/compatibilitytools.d";
  };

  home.packages = with pkgs; [
    # Code Editors
    vscode

    # CLI Tools
    lazygit
    lazydocker
    ani-cli

    # Communication
    discord
    webcord
    teams-for-linux

    # Gaming
    protonup
    prismlauncher
    wine
    winetricks
    lutris

    # Desktop Apps
    tidal-hifi
  ];

  programs = {
    wezterm.enable = true;
    starship.enable = true;
  };

  home.stateVersion = "24.05";

  programs.home-manager.enable = true;
}
