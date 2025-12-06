{ config, pkgs, ... }:

{
    # Enable the sway window manager
    services.sway = {
        enable = true;
        extraPackages = with pkgs; [
            xorg.xwayland
        ];
    };

    environment.systemPackages = with pkgs; [ rofi ];

    # Enable xdg-desktop-portal for Wayland
    services.xdg.portal = {
        enable = true;
        extraPortals = [ pkgs.xdg-desktop-portal-wlr ];
    };

    # Optional: Set environment variables for Wayland
    environment.variables = {
        QT_QPA_PLATFORM = "wayland"; # Enable Wayland for Qt apps
        XDG_CURRENT_DESKTOP = "sway";
        XDG_SESSION_TYPE = "wayland";
    };
}