# Hyprland auf Arch Linux – v13

Setup-Dokumentation · TUXEDO W65_W67RZ · Intel HD 530  
Stand: Juni 2026 (v13)

---

## 1. System

| Hardware | TUXEDO W65_W67RZ |
|---|---|
| GPU | Intel HD Graphics 530 (Skylake-H GT2) |
| Monitor | LG 32UN880 · 3840x2160 · 30 Hz · HDMI · Skalierung 125% |
| Hyprland | 0.55.4 |
| Kernel-Treiber | i915 (Intel, out-of-the-box) |
| Display Manager | GDM (parallel zu GNOME) |

---

## 2. Installierte Pakete

| Paket | Zweck |
|---|---|
| hyprland | Wayland Compositor |
| waybar | Statusleiste |
| wofi | App-Launcher |
| kitty | Terminal-Emulator |
| ghostty | Terminal-Emulator (Workspace 3, unten rechts) |
| xdg-desktop-portal-hyprland | XDG Portal |
| polkit-kde-agent | Polkit Authentifizierung |
| qt5-wayland / qt6-wayland | Qt Wayland-Unterstützung |
| grim | Screenshot-Tool |
| slurp | Bereichsauswahl für Screenshots |
| hyprpaper | Wallpaper-Daemon (installiert, swaybg aktiv) |
| swaybg | Wallpaper (aktiv) |
| hyprlock | Sperrbildschirm |
| hypridle | Automatische Displayabschaltung |
| mako | Benachrichtigungs-Daemon |
| cliphist | Clipboard-History |
| wl-clipboard | Wayland Clipboard |
| nautilus | Dateimanager (Workspace 3, oben links) |
| lf | TUI-Dateimanager |
| imagemagick | Bildbearbeitung (Wallpaper-Konvertierung) |
| playerctl | Media-Tasten (MPRIS) |
| mpv-mpris | MPRIS-Plugin für mpv |
| wlsunset | Blaulichtfilter (automatisch nach Sonnenuntergang) |
| swayosd | On-Screen-Display für Lautstärke |
| hyprpicker | Farbpipette |
| qt5ct / qt6ct | Qt Theming |
| socat | Socket-Kommunikation |
| noto-fonts / noto-fonts-extra | Basis-Schriftfamilie |
| ttf-nerd-fonts-symbols | Nerd Font Icons (waybar) |
| nwg-look | GTK-Theming unter Wayland |
| arc-gtk-theme | Arc-Dark GTK-Theme (AUR) |
| network-manager-applet | Netzwerk-Applet im Tray |
| hyprswitch | Window-Switcher (Alt+Tab Ersatz) |
| satty | Screenshot-Annotation (AUR) |
| cutecom | Serielles Terminal (Qt, Wayland-nativ, WS7) |
| tio | Serielles Terminal (TUI, AUR) |
| gthumb | Bildanzeiger |
| thunderbird-esr | E-Mail (Flatpak: org.mozilla.thunderbird_esr, WS3 unten links) |

---

## 3. Tastenkombinationen

SUPER-Taste = Windows-Taste

### 3.1 Allgemein

| Tastenkombination | Funktion |
|---|---|
| **SUPER + Return** | Neues Terminal (kitty) |
| **SUPER + D** | App-Launcher (wofi) |
| **SUPER + Q** | Aktives Fenster schließen |
| **SUPER + M** | Hyprland beenden |
| **SUPER + F** | Vollbild |
| **SUPER + V** | Floating-Modus umschalten |
| **SUPER + F1** | Sperrbildschirm (hyprlock) |
| **SUPER + CTRL + 1** | Workspace 1 Layout starten (workspace1.sh) |
| **SUPER + CTRL + 2** | Workspace 2 Layout starten (workspace2.sh) |
| **SUPER + CTRL + 3** | Workspace 3 Layout starten (workspace3.sh) |
| **SUPER + CTRL + 7** | Workspace 7 Layout starten (workspace7.sh) |
| **SUPER + P** | Media: Play/Pause (playerctl) |
| **SUPER + Ö** | Media: Previous (playerctl) |
| **SUPER + Ä** | Media: Next (playerctl) |
| **SUPER + N** | Blaulichtfilter toggle (wlsunset) |
| **SUPER + F11** | Lautstärke leiser (swayosd) |
| **SUPER + F12** | Lautstärke lauter (swayosd) |
| **SUPER + C** | Farbpipette (hyprpicker → Clipboard) |
| **SUPER + SHIFT + A** | Screenshot mit satty-Annotation |
| **ALT + Tab** | Window-Switcher (hyprswitch) |

### 3.2 Fensterfokus

| Tastenkombination | Funktion |
|---|---|
| **SUPER + H** | Fokus links |
| **SUPER + L** | Fokus rechts |
| **SUPER + K** | Fokus oben |
| **SUPER + J** | Fokus unten |

### 3.3 Fenster verschieben

| Tastenkombination | Funktion |
|---|---|
| **SUPER + SHIFT + H** | Fenster nach links |
| **SUPER + SHIFT + L** | Fenster nach rechts |
| **SUPER + SHIFT + K** | Fenster nach oben |
| **SUPER + SHIFT + J** | Fenster nach unten |

### 3.4 Workspaces

| Tastenkombination | Funktion |
|---|---|
| **SUPER + 1–9** | Workspace wechseln |
| **SUPER + SHIFT + 1–9** | Fenster auf Workspace verschieben |

### 3.5 Maus

| Tastenkombination | Funktion |
|---|---|
| **SUPER + Linke Maustaste** | Fenster verschieben |
| **SUPER + Rechte Maustaste** | Fenstergröße ändern |

### 3.6 Screenshot & Display

| Tastenkombination | Funktion |
|---|---|
| **SUPER + SHIFT + S** | Screenshot (Bereich auswählen → ~/Bilder/) |
| **SUPER + F1** | Display sperren (hyprlock) |

### 3.7 Clipboard

| Tastenkombination | Funktion |
|---|---|
| **SUPER + SHIFT + V** | Clipboard-Historie (cliphist + wofi) |

---

## 4. Konfigurationsdateien

| Datei | Zweck |
|---|---|
| `~/.config/hypr/hyprland.conf` | Haupt-Konfiguration |
| `~/.config/hypr/hyprlock.conf` | Sperrbildschirm |
| `~/.config/hypr/hypridle.conf` | Idle-Timeouts |
| `~/.config/hypr/hyprpaper.conf` | Wallpaper-Config (inaktiv) |
| `~/.config/hypr/wallpapers/artemis-earth.jpg` | Wallpaper (3840x2160, Erde+Mond) |
| `~/.config/waybar/config-desktop.jsonc` | waybar Desktop-Config |
| `~/.config/waybar/config-laptop.jsonc` | waybar Laptop-Config |
| `~/.config/hypr/monitor-setup.sh` | Monitor-Autodetect (eDP-1/HDMI-A-1) |
| `~/.config/mako/config` | Benachrichtigungen |
| `~/.config/hypr/scripts/workspace1.sh` | Workspace 1 Layout-Skript |
| `~/.config/hypr/scripts/workspace2.sh` | Workspace 2 Layout-Skript |
| `~/.config/hypr/scripts/workspace3.sh` | Workspace 3 Layout-Skript |
| `~/.config/hypr/scripts/workspace7.sh` | Workspace 7 Layout-Skript |
| `~/.config/nwg-look/config` | GTK-Theme Konfiguration |
| `~/.local/share/applications/signal.desktop` | Signal mit --password-store=gnome-libsecret |

Alle Hyprland-Configs sind in `~/dotfiles` via GNU Stow verwaltet (Git-Repo).

---

## 4b. Umgebungsvariablen (env)

| Variable | Wert |
|---|---|
| XDG_CURRENT_DESKTOP | Hyprland |
| XDG_SESSION_TYPE | wayland |
| XDG_SESSION_DESKTOP | Hyprland |
| LIBVA_DRIVER_NAME | i965 (Intel) |
| WLR_NO_HARDWARE_CURSORS | 0 |
| QT_QPA_PLATFORMTHEME | qt5ct |
| QT_AUTO_SCREEN_SCALE_FACTOR | 1 |
| XCURSOR_THEME | Adwaita |
| XCURSOR_SIZE | 24 |

---

## 5. Autostart (exec-once)

```
/usr/lib/polkit-kde-authentication-agent-1
/home/withold/.config/hypr/monitor-setup.sh
swaybg -o HDMI-A-1 -i ~/.config/hypr/wallpapers/artemis-earth.jpg -m fill
hypridle
wl-paste --type text --watch cliphist store
wl-paste --type image --watch cliphist store
mako
swayosd-server
wlsunset -l 51.0 -L 13.8
nm-applet --indicator
hyprswitch init --show-title &
~/.config/waybar/launch.sh
```

---

## 6. Bekannte Fixes

### 6.1 Thunar: Terminal-Emulator nicht gefunden

Thunar verwendet xfce4 intern. Fehlermeldung: `Could not find fallback TerminalEmulator application`.

```bash
mkdir -p ~/.config/xfce4
echo 'TerminalEmulator=kitty' > ~/.config/xfce4/helpers.rc
```

### 6.2 HTerm: unscharfe Schrift unter XWayland

HTerm ist eine Java/Swing-App. Bei 1.25x Skalierung bleibt die Schrift unscharf. Aktiv verwendet wird CuteCom (Qt, Wayland-nativ).

### 6.3 Signal: Datenbankfehler unter Hyprland

```bash
cp /usr/share/applications/signal.desktop ~/.local/share/applications/
sed -i 's|^Exec=signal-desktop|Exec=signal-desktop --password-store=gnome-libsecret|' ~/.local/share/applications/signal.desktop
```

### 6.4 hyprswitch: Daemon not running

```
exec-once = hyprswitch init --show-title &
```

GTK-Warning über Arc-Dark CSS-Pfad ist harmlos.

### 6.5 Brave: Autostart deaktiviert

Brave startete automatisch über GNOME-Autostart und verursachte hohe CPU-Last (~40%).

```bash
rm ~/.config/autostart/com.brave.Browser.desktop
```

### 6.6 hypridle: dpms-Listener entfernt

UGREEN USB-Switch trennt Tastatur/Maus beim Umschalten → `on-resume` greift nicht → Monitor bleibt aus. Listener entfernt.

```
# entfernt:
# listener { timeout = 600; on-timeout = hyprctl dispatch dpms off; on-resume = hyprctl dispatch dpms on }
```

### 6.7 Proxmox: „No valid subscription" Modal entfernen

```bash
ssh root@192.168.178.6
sed -i "s/if (data.status !== 'Active')/if (false)/" /usr/share/javascript/proxmox-widget-toolkit/proxmoxlib.js
systemctl restart pveproxy
```

Danach Browser-Cache leeren (Ctrl+Shift+R).

---

## 6a. Window Rules

Effektive Auflösung bei 1.25x Skalierung: 3072x1728. Waybar: 32px. Gaps: 10px.

### Globale Float-Rule (seit v13)

Ab Hyprland 0.55 (hyprlang-Syntax):

```
windowrule = match:class .*, float on
```

Alle Fenster ohne explizite Rule floaten damit standardmäßig. Verhindert dass Popup-Fenster (Thunderbird Compose, VS Code Dialoge etc.) den Workspace maximiert belegen.

### Workspace 7 – CuteCom links oben, 1/4 Breite, 1/2 Höhe

```
windowrule = match:class cutecom, workspace 7 silent
windowrule = match:class cutecom, float on
windowrule = match:class cutecom, size 768 838
windowrule = match:class cutecom, move 10 42
```

### Workspace 7 – OpenPLC Editor (beremiz) rechte Hälfte

```
windowrule = match:class beremiz, workspace 7 silent
windowrule = match:class beremiz, float on
windowrule = match:class beremiz, size 1536 1676
windowrule = match:class beremiz, move 1546 42
```

### Workspace 2 – Chromium

```
windowrule = match:class chromium, workspace 2 silent
windowrule = match:class chromium, float on
windowrule = match:class chromium, size 1536 1676
windowrule = match:class chromium, move 768 42
```

### Nautilus – nur float (GTK4 ignoriert size/move aus windowrule)

```
windowrule = match:class org.gnome.Nautilus, float on
```

Positionierung erfolgt im workspace3.sh via `moveactive`/`resizeactive` nach dem Start.

---

## 6b. Workspace 3 Layout

Skript: `~/.config/hypr/scripts/workspace3.sh` · Aufruf: SUPER+CTRL+3

Layout: 4 Fenster, je 2 übereinander links und rechts.

| Fenster | Breite | Höhe | Position X | Position Y |
|---|---|---|---|---|
| Nautilus (oben links) | 1142 | 833 | 10 | 42 |
| Thunderbird ESR (unten links) | 1142 | 833 | 10 | 885 |
| kitty (oben rechts) | 1910 | 833 | 1152 | 42 |
| ghostty (unten rechts) | 1910 | 833 | 1152 | 885 |

Hinweise:
- Thunderbird wird als Flatpak gestartet: `flatpak run org.mozilla.thunderbird_esr`
- Nautilus (GTK4) ignoriert dispatch-Rules → wird per `focuswindow` + `moveactive exact` nachpositioniert
- sleep-Werte im Script ggf. anpassen wenn Fenster nicht korrekt landen

```bash
#!/bin/bash
WS=3
hyprctl clients -j | python3 -c "
import json,sys
for x in json.load(sys.stdin):
    if x['workspace']['id']==$WS: print(x['address'])
" | while read addr; do
    hyprctl dispatch closewindow address:$addr
done
sleep 0.5
hyprctl dispatch workspace $WS
hyprctl dispatch exec "[workspace $WS silent; float; size 1142 833; move 10 42] nautilus --new-window /home/withold"
sleep 2
hyprctl dispatch focuswindow class:org.gnome.Nautilus
hyprctl dispatch moveactive exact -78 88
hyprctl dispatch resizeactive exact 1142 833
sleep 0.5
hyprctl dispatch exec "[workspace $WS silent; float; size 1142 833; move 1 885] flatpak run org.mozilla.thunderbird_esr"
sleep 2
hyprctl dispatch focuswindow class:org.mozilla.thunderbird_esr
hyprctl dispatch moveactive exact 1 885
hyprctl dispatch resizeactive exact 1142 833
sleep 0.5
hyprctl dispatch exec "[workspace $WS silent; float; size 1910 833; move 1152 42] kitty"
sleep 0.5
hyprctl dispatch exec "[workspace $WS silent; float; size 1910 833; move 1152 885] ghostty"
```

---

## 6c. Workspace 7 Layout

Skript: `~/.config/hypr/scripts/workspace7.sh` · Aufruf: SUPER+CTRL+7

Layout: CuteCom links (768x838), OpenPLC Editor rechts (1536x1676). Float.

| Fenster | Breite | Höhe | Position X | Position Y |
|---|---|---|---|---|
| CuteCom (links) | 768 | 838 | 10 | 42 |
| OpenPLC Editor / beremiz (rechts) | 1536 | 1676 | 1546 | 42 |

---

## 6d. Workspace 1 Layout

Skript: `~/.config/hypr/scripts/workspace1.sh` · Aufruf: SUPER+CTRL+1

Layout: kitty links (1517x1672, x=12), Brave rechts (1517x1672, x=1543). Float.

| Fenster | Breite | Höhe | Position X | Position Y |
|---|---|---|---|---|
| kitty (links) | 1517 | 1672 | 12 | 44 |
| Brave (rechts) | 1517 | 1672 | 1543 | 44 |

---

## 6e. Workspace 2 Layout

Skript: `~/.config/hypr/scripts/workspace2.sh` · Aufruf: SUPER+CTRL+2

Layout: Chromium zentriert (1536x1676, x=768). Float.

| Fenster | Breite | Höhe | Position X | Position Y |
|---|---|---|---|---|
| Chromium (zentriert) | 1536 | 1676 | 768 | 42 |

---

## 6f. Monitor-Fallback eDP-1

Monitor-Config in `hyprland.conf`:

```
monitor = HDMI-A-1, 3840x2160@30, 0x0, 1.25
monitor = eDP-1, 1920x1080@60, 3840x0, 1
```

eDP-1 wird beim Start automatisch deaktiviert wenn HDMI-A-1 aktiv ist, via `exec-once`:

```
exec-once = /home/withold/.config/hypr/monitor-setup.sh
```

Skript `~/.config/hypr/monitor-setup.sh`:

```bash
#!/bin/bash
export WAYLAND_DISPLAY=wayland-1
export XDG_RUNTIME_DIR=/run/user/1000
sleep 3
if hyprctl monitors all | grep -q "HDMI-A-1"; then
    wlr-randr --output eDP-1 --off
fi
```

Hinweise:
- `WAYLAND_DISPLAY` und `XDG_RUNTIME_DIR` müssen explizit gesetzt werden (exec-once-Kontext)
- `hyprctl keyword monitor "eDP-1, disable"` funktioniert zur Laufzeit **nicht**
- `hyprctl dispatch dpms off eDP-1` deaktiviert nur DPMS, nicht den Output
- `wlr-randr --output eDP-1 --off` ist die funktionierende Lösung
- Paket: `wlr-randr` (AUR: `yay -S wlr-randr`)
- Laptop solo (kein HDMI): eDP-1 bleibt aktiv — Skalierung für Solo-Betrieb noch offen (Todo)

---

## 6g. dotfiles via GNU Stow

Hyprland-Config ist in `~/dotfiles` verwaltet:

```bash
# Einmalig einrichten
mkdir -p ~/dotfiles/.config/hypr
cp -r ~/.config/hypr/* ~/dotfiles/.config/hypr/
cd ~/dotfiles
stow --adopt .
```

Nach Änderungen committen:

```bash
cd ~/dotfiles
git add .config/hypr/
git commit -m "beschreibung"
git push
hyprctl reload
```

---

## 7. Offene Punkte / Todo

| | Punkt | Notiz |
|---|---|---|
| ☐ | waybar Monitor-Wechsel | Alias waybar-desktop / waybar-laptop in ~/.zshrc |
| ☐ | hypridle testen | 5 min sperren |
| ☐ | Wallpaper Laptop | Bild für eDP-1 (interner Bildschirm) |
| ☐ | eDP-1 Solo-Skalierung | Workspace-Layouts zu groß ohne LG (SUPER+CTRL+2/3) |
| ☐ | wlsunset testen | Nach Sonnenuntergang (19:45) auf Wirkung prüfen |
| ☑ | Hyprland Installation | Parallel zu GNOME via GDM |
| ☑ | Monitor-Konfiguration | HDMI-A-1, 4K@30Hz, 1.25x |
| ☑ | waybar | Desktop + Laptop Config |
| ☑ | waybar Datum | format: %d.%m.%Y  %H:%M, Linksklick → ISO |
| ☑ | Wallpaper | artemis-earth.jpg via swaybg |
| ☑ | Sperrbildschirm | hyprlock, SUPER+F1 |
| ☑ | Clipboard-Manager | cliphist, SUPER+SHIFT+V |
| ☑ | Benachrichtigungen | mako |
| ☑ | Screenshot | grim + slurp, SUPER+SHIFT+S |
| ☑ | Dateimanager | nautilus |
| ☑ | Workspace 1 + 2 Skripte | workspace1.sh (kitty+Brave), workspace2.sh (Chromium) |
| ☑ | Workspace 3 Layout | 4 Fenster: Nautilus+Thunderbird links, kitty+ghostty rechts |
| ☑ | Workspace 7 Layout | CuteCom + OpenPLC, SUPER+CTRL+7 |
| ☑ | SUPER+CTRL+N Schema | Einheitlich für alle Workspace-Skripte |
| ☑ | Signal | --password-store=gnome-libsecret Fix |
| ☑ | playerctl + mpv-mpris | Media-Tasten SUPER+P/Ö/Ä |
| ☑ | wlsunset | Blaulichtfilter Dresden 51.0N/13.8E, SUPER+N |
| ☑ | swayosd | Lautstärke OSD, SUPER+F11/F12 |
| ☑ | hyprpicker | Farbpipette SUPER+C |
| ☑ | qt5ct/qt6ct | Qt Theming, Fusion-Stil |
| ☑ | Fonts | noto-fonts, noto-fonts-extra, ttf-nerd-fonts-symbols |
| ☑ | GTK-Theming | nwg-look, Arc-Dark, Adwaita Cursor |
| ☑ | nm-applet | Netzwerk-Applet im Tray |
| ☑ | CapsLock deaktiviert | kb_options = caps:none in hyprland.conf input-Block |
| ☑ | hyprswitch | Window-Switcher, ALT+Tab |
| ☑ | satty | Screenshot-Annotation, SUPER+SHIFT+A |
| ☑ | cutecom | Ersatz für HTerm auf Workspace 7, Wayland-nativ |
| ☑ | Brave Autostart entfernt | ~/.config/autostart/com.brave.Browser.desktop gelöscht |
| ☑ | Monitor-Fallback eDP-1 | monitor-setup.sh via wlr-randr, WAYLAND_DISPLAY gesetzt |
| ☑ | hypridle dpms off entfernt | UGREEN USB-Switch blockiert on-resume |
| ☑ | Wallpaper | artemis-earth.jpg (Erde+Mond, gecroppt) |
| ☑ | Float alle Fenster | windowrule = match:class .*, float on (v13) |
| ☑ | ghostty | Zweites Terminal auf WS3 unten rechts |
| ☑ | Thunderbird ESR | Flatpak, WS3 unten links |
| ☑ | dotfiles via Stow | ~/dotfiles Git-Repo, hypr-Config verlinkt |
| ☑ | Proxmox Modal entfernt | proxmoxlib.js patch, pveproxy restart |
