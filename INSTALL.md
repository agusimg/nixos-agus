# Rhodium port para `agusc@nixos` (Intel Iris Xe + RTX 3050)

Port de https://github.com/pabloagn/rhodium (niri + waybar + fuzzel + fish + greetd).
Licencia original en `LICENSE`.

## Antes de aplicar
1. Respaldá tu config actual (`cp -r ~/nixos-config ~/nixos-config.bak`).
2. Copiá TODO el contenido de este zip a tu carpeta de config (reemplazando).
   Tiene que ser un repo git y los archivos tienen que estar agregados:
   `git add -A` (los flakes ignoran lo no trackeado).
3. Tu `hardware-configuration.nix` ya está en `hosts/host_001/`. Si tu ruta de
   boot/UUIDs cambió, regeneralo con `nixos-generate-config --show-hardware-config`.

## Aplicar (sin riesgo primero)
```
cd <tu-config>
git add -A
nixos-rebuild build --flake .#nixos        # evalúa y compila, NO activa nada
sudo nixos-rebuild switch --flake .#nixos  # recién acá cambia el sistema
```
Si el `build` falla, mandame el error completo (con `--show-trace`).
Rollback: elegí la generación anterior en el menú de systemd-boot.

## Datos que editás (todo está en `data/`)
- `data/users/users.nix`  usuario, email, grupos
- `data/hosts/hosts.nix`  zona horaria, teclado, monitor, PRIME (bus IDs)
- `hosts/host_001/default.nix`  ajustes de sistema

## Notas
- `nvidia-offload <cmd>` corre algo en la RTX 3050 (Steam: `nvidia-offload %command%`).

## Recorte de tamaño (todo comentado con `# trimmed (size)`, buscalo con grep para reactivar)
- Lenguajes: quedan bash, C/C++, Java, Python (sin Jupyter/kaleido), Lua, Nix, Typst, JS, SQL, web/config.
  Fuera: Haskell, .NET, Julia, Kotlin, Scala, OCaml, Rust, Go, R, LaTeX (texlive-full), etc.
- Fuera: agentes IA, cloud/infra/DBs, edición de video/foto, Blender/Inkscape/GIMP/Figma, OBS, VLC, Plex,
  Obsidian/Okular/Standard Notes, Signal/Telegram/Matrix/Mastodon, Emacs/Kakoune, RStudio/Texmaker,
  OnlyOffice, Proton Mail, QEMU, Zen/Qutebrowser/Brave/Tor, Nushell, mermaid-cli, tareas/pomodoro.
- Fuentes: de 60 familias a 12 (JetBrainsMono, FiraCode, JuliaMono, Inter, Noto, Roboto, DejaVu,
  Liberation, Open Sans, Latin Modern). Se acabaron las 18 variantes Nerd Font (Iosevka, Recursive, etc.).
- Para ver cuánto va a descargar ANTES de aplicar: `nixos-rebuild build --flake .#nixos`
  (imprime "will be fetched (X MiB download, Y GiB unpacked)").
