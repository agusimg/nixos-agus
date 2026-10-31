{
  # Each entry describes ONE Linux user. `username` becomes /home/<username> and
  # the Home Manager user, so it MUST match the user that already exists on the
  # machine (it keeps its current password: no password is set anywhere here).
  users = {
    user_001 = {
      username = "agusc";
      fullName = "Agustin Conti";
      emailMain = "agusconti033@proton.me";
      extraGroups = [
        "wheel"
        "networkmanager"
        "video"
        "audio"
        "input"
        "docker" # NOTE: docker group is root-equivalent
        "uinput" # NOTE: needed by Steam Input (extest) and kmonad
      ];
      isNormalUser = true;
      shell = "fish";
    };
  };
}
