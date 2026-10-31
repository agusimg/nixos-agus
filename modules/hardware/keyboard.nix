{
  lib,
  pkgs,
  host,
  ...
}:
let
  tz = host.timeZone or "UTC";
  locale = host.locale or "en_US.UTF-8";
  extraLocale = host.extraLocale or locale;
  kb = host.keyboard or { };
in
{
  environment.systemPackages = with pkgs; [
    xorg.xev # xorg key registry
  ];

  time.timeZone = tz; # Time zone
  i18n.defaultLocale = locale; # Locale

  # Additional properties (dates, money, units...) from host data
  i18n.extraLocaleSettings = lib.genAttrs [
    "LC_ADDRESS"
    "LC_IDENTIFICATION"
    "LC_MEASUREMENT"
    "LC_MONETARY"
    "LC_NAME"
    "LC_NUMERIC"
    "LC_PAPER"
    "LC_TELEPHONE"
    "LC_TIME"
  ] (_: extraLocale);

  console.keyMap = kb.consoleKeyMap or "us"; # Default console Keymap

  services.xserver.xkb = {
    layout = kb.layout or "us";
    variant = kb.variant or "";
  };

  # NOTE: Required for kmonad / Steam Input (extest)
  hardware.uinput = {
    enable = true;
  };
}
