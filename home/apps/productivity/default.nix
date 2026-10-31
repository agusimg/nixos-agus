{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # --- Calculators ---
    libqalculate # CLI Calculator
    qalculate-gtk # GUI Calculator
    # element # CLI Periodic Table # trimmed (size)

    # --- Calendars ---
    # kdePackages.korganizer
    # evolution
    # calcurse # CLI calendar
    # calcure # Modern calcurse alternative # trimmed (size)
    # ulauncher # GUI-based launcher

    # --- Task Management ---
    # taskwarrior3 # Comprehensive task management CLI # trimmed (size)
    # taskwarrior-tui # TUI for taskwarrior # trimmed (size)

    # --- Timers ---
    # uair # trimmed (size)
    # pom # trimmed (size)
    # openpomodoro-cli # trimmed (size)
    yad # GUI dialogue for shell scripts
  ];
}
