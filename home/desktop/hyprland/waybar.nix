{
  programs.waybar = {
    enable = true;
    settings = {
      "layer": "bottom",
      "position": "top",
      "height": 30,

      "modules-left": ["sway/workspaces", "sway/mode"],
      "modules-center": ["sway/window"],
      "modules-right": ["tray", "custom/spotify", "custom/weather", "custom/mail", "custom/storage", "backlight", "pulseaudio", "network", "idle_inhibitor", "battery", "clock"],
      "sway/mode": {
          "format": " {}"
      },
      "sway/workspaces": {
          "format": "{name}",
          "disable-scroll": true
      },
      "sway/window": {
          "max-length": 80,
          "tooltip": false
      },
      "clock": {
          "format": "{:%a %d %b %H:%M}",
          "tooltip": false
      },
      "battery": {
          "format": "{capacity}% {icon}",
          "format-alt": "{time} {icon}",
          "format-icons": ["", "", "", "", ""],
          "format-charging": "{capacity}% ",
          "interval": 30,
          "states": {
              "warning": 25,
              "critical": 10
          },
          "tooltip": false
      },
      "network": {
          "format": "{icon}",
          "format-alt": "{ipaddr}/{cidr} {icon}",
          "format-alt-click": "click-right",
          "format-icons": {
              "wifi": ["", "" ,""],
              "ethernet": [""],
              "disconnected": [""]
          },
          "on-click": "termite -e nmtui",
      "tooltip": false
      },
      "pulseaudio": {
          "format": "{icon}",
          "format-alt": "{volume} {icon}",
          "format-alt-click": "click-right",
          "format-muted": "",
          "format-icons": {
              "phone": [" ", " ", " ", " "],
              "default": ["", "", "", ""]
          },
          "scroll-step": 10,
          "on-click": "pavucontrol",
          "tooltip": false
      },
      "custom/spotify": {
          "interval": 1,
          "return-type": "json",
          "exec": "~/.config/waybar/modules/spotify.sh",
          "exec-if": "pgrep spotify",
          "escape": true
      },
      "custom/storage": {
          "format": "{} ",
          "format-alt": "{percentage}% ",
          "format-alt-click": "click-right",
          "return-type": "json",
          "interval": 60,
          "exec": "~/.config/waybar/modules/storage.sh"
      },
      "backlight": {
          "format": "{icon}",
          "format-alt": "{percent}% {icon}",
          "format-alt-click": "click-right",
          "format-icons": ["", ""],
          "on-scroll-down": "light -A 1",
          "on-scroll-up": "light -U 1"
      },
      "custom/weather": {
          "format": "{}",
          "format-alt": "{alt}: {}",
          "format-alt-click": "click-right",
          "interval": 1800,
          "return-type": "json",
          "exec": "~/.config/waybar/modules/weather.sh",
          "exec-if": "ping wttr.in -c1"
      },
      "idle_inhibitor": {
          "format": "{icon}",
          "format-icons": {
              "activated": "",
              "deactivated": ""
          },
          "tooltip": false
      },
      "custom/mail": {
          "format": "",
          "format-alt": "{alt} ",
          "format-alt-click": "click-right",
          "interval": 60,
          "return-type": "json",
          "exec": "~/.config/waybar/modules/mail.py",
          "tooltip": false
      },
      "custom/test": {
          "format": "{}",
          "exec": "/tmp/test blub",
          "param": "blah",
          "interval": 5
      },
      "tray": {
          "icon-size": 18
      }
    };
  };
}