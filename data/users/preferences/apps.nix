{
  apps = {
    # Core
    shell = "fish";
    shelAlt = "zsh";
    terminal = "kitty";
    terminalAlt = "ghostty";
    browser = "firefox";
    browserAlt = "brave";
    wm = "niri";

    # Files
    editor = "nvim";
    editorAlt = "hx";
    ide = "zeditor";
    ideAlt = "hx";
    filesTerminal = "yazi";
    filesGraphic = "thunar";

    # Media
    imageViewer = "imv";
    videoPlayer = "mpv";
    audioPlayer = "mpv";

    # Productivity
    pdfViewer = "org.pwmt.zathura";
    pager = "most";
  };

  # Browser profile names. firefox.personal is required (home/environment/mime.nix
  # points web links at that launcher entry). Empty = the browser's default profile.
  profiles = {
    firefox = {
      personal = "";
    };
  };
}
