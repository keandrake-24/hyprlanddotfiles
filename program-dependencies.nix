{ pkgs, ... }:

{
    imports = [
        ./swayconfiguration.nix
        ./hyprconfiguration.nix
    ];
    # System packages
    environment.systemPackages = with pkgs; [
        # Add your program dependencies here, for example:
        alacritty #your terminal
        waybar #your taskbar 
        nwg-look #your gtk theme installer
        lolcat # a must definitely
        fastfetch # also a must
        ranger # eh this is pretty good not necessary to have a TUI file manager
        thunar #your file manager
        networkmanagerapplet
        google-chrome
        noto-fonts
        noto-fonts-cjk
        noto-fonts-emoji
        font-awesome
        dunst
        auto-cpufreq
    ];
    services.pipewire = {
        enable = true;
        alsa.enable = true;
        pulse.enable = true; # PulseAudio compatibility
    };
    systemd.services.auto-cpufreq = {
        enable = true;
        serviceConfig = {
            Restart = "always";
        }
    }

    # Enable the X server
    services.xserver.enable = true;
     
    # Optionally enable Wayland
    services.displayManager.ly.enable = true; # Example: GDM supports Wayland
}
