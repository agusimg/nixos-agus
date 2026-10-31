{ inputs }:
final: prev: {
  # Upstream Rhodium builds `rhodium-fonts` from Berkeley Mono (paid) + Server Mono,
  # pulled from a PRIVATE flake input (iridium-rh). Replaced here by the free
  # (SIL OFL) JetBrainsMono Nerd Font. The font family used across all configs
  # is "JetBrainsMono Nerd Font".
  rhodium-fonts = prev.nerd-fonts.jetbrains-mono;
}
