{
  pkgs,
  users,
  ...
}:
let
  user_001_data = users.user_001;
in
{
  users.users."${user_001_data.username}" = {
    name = user_001_data.username;
    isNormalUser = user_001_data.isNormalUser or true;
    description = user_001_data.fullName;
    extraGroups = user_001_data.extraGroups;
    shell = pkgs.fish;
    home = "/home/${user_001_data.username}";
    # NOTE: no password is defined here on purpose: the existing user keeps its own.
  };

  # NOTE: Required for devenv
  nix.settings.trusted-users = [
    "root"
    user_001_data.username
  ];

  users.defaultUserShell = pkgs.zsh; # Default shell for all users
}
