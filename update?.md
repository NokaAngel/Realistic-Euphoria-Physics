# Realistic Euphoria Physics (GTA IV & RDR2)

Enhance your FiveM experience with *Realistic Euphoria Physics*, a mod that brings the chaotic, exaggerated ragdoll physics of GTA IV and the grounded, cinematic reactions of RDR2 to GTA V. Created by NokaAngel (aka TheRaccoon), this resource lets you toggle between two distinct euphoria styles, complete with vehicle grab mechanics, detailed shot reactions, and optimized network syncing.

**Current Version**: v1.1.0 (April 10, 2025)  
**Game**: GTA V (FiveM)  
**License**: [MIT LICENSE](https://opensource.org/licenses/MIT)

---

## Features

- **Dual Physics Styles**:
  - **GTA IV**: High-force, flailing ragdolls with bouncy vehicle hits (e.g., `bounceForce = 150.0`).
  - **RDR2**: Subtle, realistic reactions with crumpling effects (e.g., `crumpleForce = 20.0`).
  - Switch styles via `SELECTED_STYLE` in `client.lua`.
- **Grab-on-Vehicle Mechanic**: Peds have a 50% chance (`GRAB_ON_VEHICLE_CHANCE`) to grab vehicles when hit, influenced by health and speed.
- **Shot Reactions**: Bone-specific responses (e.g., lethal headshots, staggering limbs) with animations.
- **Optimization**: Visibility filtering (`NETWORK_VISIBILITY_DISTANCE = 100.0`), caching, and event cooldowns for performance.
- **Network Sync**: Server-side validation and proximity-based broadcasting for seamless multiplayer.
- **Version Checking**: Automatic updates check via `https://versions.theraccoon.dev/`.

---

## Installation

1. **Download**: Grab the latest release from [GitHub Releases](https://github.com/NokaAngel/Realistic-Euphoria-Physics/releases) or clone this repo.
2. **Extract**: Place the `Realistic-Euphoria-Physics` folder in your FiveM server’s `resources` directory.
3. **Configure**: Edit `client.lua` to set `SELECTED_STYLE` ("GTAIV" or "RDR2") and tweak physics settings if desired.
4. **Enable**: Add `ensure Realistic-Euphoria-Physics` to your `server.cfg`.
5. **Restart**: Restart your server or use `refresh` followed by `start Realistic-Euphoria-Physics`.

---

## Configuration

Adjust these settings in `client.lua`:
- `SELECTED_STYLE`: `"GTAIV"` or `"RDR2"` (default: `"GTAIV"`).
- `GRAB_ON_VEHICLE_CHANCE`: Base grab chance (default: `50`).
- `HEALTH_MODIFIER_STRENGTH`: Health impact on grab chance (default: `0.5`).
- `SPEED_MODIFIER_STRENGTH`: Speed impact on grab chance (default: `0.5`).
- `MAX_SPEED_FOR_GRAB`: Speed threshold for grab chance reduction (default: `15.0`).
- See `PHYSICS_CONFIGS` and `SHOT_REACTION_CONFIGS` for detailed physics tuning.

---

## Changelog

See [releases](https://github.com/NokaAngel/Realistic-Euphoria-Physics/releases/tag/v1.1.0) for full details. Highlights from v1.1.0:
- Added GTA IV and RDR2 physics styles.
- Introduced grab-on-vehicle feature.
- Enhanced shot reactions and network optimization.

---

## Credits

- **Author**: NokaAngel (aka TheRaccoon)
- **Discord**: Join [my Discord](https://discord.gg/RxHQjtg7c8) for support or feedback!
- **Inspiration**: GTA IV and RDR2 euphoria systems.

---

## Contributing

Feel free to fork, submit pull requests, or report issues on GitHub.
