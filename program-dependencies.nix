{ pkgs, ... }:

{
    imports = [
        ./swayconfiguration.nix
        ./hyprconfiguration.nix
    ];
    # System packages
    environment.systemPackages = with pkgs; [
        # Add your program dependencies here, for example:
        alacritty
        waybar
        nwg-look
        git
        networkmanagerapplet
        google-chrome
    ];

    # Enable the X server
    services.xserver.enable = true;
     
    # Optionally enable Wayland
    services.displayManager.ly.enable = true; # Example: GDM supports Wayland
}