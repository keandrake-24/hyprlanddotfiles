{ pkgs, ... }:

{
    imports = [
        ./swayconfiguration.nix
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
        networkmanagerapplet #the applet
        google-chrome #your browser
        noto-fonts #fonts
        noto-fonts-cjk
        noto-fonts-emoji
        shotman #a lightweight screenshotter
        dunst #lightweight notification daemon
        auto-cpufreq #optimize battery to insane heights (this improved my thinkpad with horrible battery that could go from 20% to 0% under load to last around 4 hours)
        pipewire #dont you want audio?
        pulsemixer #dont you want to control your audio?
        pactl #audio again
        brightnessctl #controlling your brigtness
    ];
    services.pipewire = {
        enable = true;
        alsa.enable = true;
        pulse.enable = true; # PulseAudio compatibility
    };
    systemd.services.auto-cpufreq = {
        enable = true;
        serviceConfig = {
            Res# Example: GDM supports Waylandtart = "always";
        }
    }

    # Enable the X server
    services.xserver.enable = true;
     
    services.displayManager.ly.enable = true; 
}
