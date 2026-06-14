# UI Style Guide & Art Direction

This document defines the confirmed visual identity of **The World I Can Develop** (codename *Demon King*):
palette, typography, panel styling, and image-generation direction. It is the single source of truth for the
look and feel of menus, components, characters, environments, and promotional screens.

## How to read this document

The reference mockup mixes two very different things, and this guide keeps them apart:

- **`Status: Canonical`** — the visual language. Palette, mood, typography, panel styling, and art direction
  are decided and should be applied everywhere.
- **`Status: Illustrative`** — sample *game data* shown in the mockup (specific faction names, character
  attribute names, HP/MP/XP, inventory rarities, Lyra "Harmony Level", "Fragments Restored %"). These are
  placeholders used to populate the picture. They are **not yet canonical** and must be designed in their own
  roadmap phases. See [Illustrative vs Canonical](#illustrative-vs-canonical) before treating any number or
  label as a committed mechanic.

The mockup depicts a polished "finished game" (a level 42 character, a full inventory, five factions). The
project is currently at the placeholder-panel stage (roadmap P4). This guide describes the **visual target**;
it does not change the [MVP Scope](mvp-scope.md) or the [Development Roadmap](development-roadmap.md).

---

## Art direction `Status: Canonical`

The confirmed direction is **Arcane Developer Fantasy UI**. It combines:

- elegant dark fantasy;
- modern anime JRPG aesthetics;
- a structured RPG interface;
- divine-code motifs;
- readable, professional panels.

The interface should feel like a **sacred console for editing reality** — a fusion of an arcane grimoire, a
developer console, a fantasy RPG menu, and a divine control system. The player does not simply cast a spell;
they read and rewrite the hidden code of the world through [Rune](rune-system.md).

Mood: mysterious, elegant, epic, readable, mature but not vulgar, portfolio-grade. The UI must never sacrifice
legibility for aesthetics.

---

## Color palette `Status: Canonical`

The palette has **four dominant colors** plus a supporting set for text, metadata, and error states. The core
combination to preserve in every screen and image is **obsidian + deep violet + divine gold + rune cyan**.

### Dominant colors

| Token | Hex | Use |
|---|---|---|
| Obsidian black | `#080812` | Primary background, menu base, visual depth |
| Deep violet | `#2A163F` | Shadows, dark-fantasy atmosphere, magical depth |
| Divine gold | `#D6B46A` | Borders, titles, ornaments, sacred elements |
| Rune cyan | `#38E8FF` | Magical energy, hover, Rune code, active effects |

### Supporting colors

| Token | Hex | Use |
|---|---|---|
| Night violet / blue-black | `#111827` | Secondary panels, cards, RPG windows |
| Ash white | `#E6E1D5` | Primary text |
| Silver gray | `#9CA3AF` | Secondary text, descriptions, metadata |
| Corrupted crimson | `#8A1F2D` | Errors, danger, forbidden magic, corruption |

> Note: an earlier draft listed eight "dominant" colors. The corrected model is **four dominant + a supporting
> palette**, so contrast and hierarchy stay controlled.

---

## UI principles `Status: Canonical`

The UI should look like a divine interface, not text laid on top of a background.

**Do:**

- dark, semi-transparent panels;
- thin golden borders and elegant fantasy ornaments;
- cyan glow on active/hovered/focused elements;
- luminous runes and suspended magical code;
- symmetrical, ordered menus;
- clear typography suited to an RPG.

**Avoid:**

- crowded mobile-game layouts;
- excessive icons or oversaturated colors;
- pure sci-fi / dominant cyberpunk neon;
- chaotic menus or low-contrast text;
- cartoon or chibi styling.

---

## Screen layout `Status: Canonical (layout)` · `Illustrative (contents)`

Target reference layout:

```text
┌──────────────────────────────────────────────────────────────┐
│                        Main Game Area                         │
│                  Title / Scene / Central Menu                 │
├───────────────┬──────────────────────────────┬───────────────┤
│ Character     │                              │ World Memory   │
│ Stats         │      Narrative / Menu         │ Lyra           │
│ Inventory     │      Main Interaction         │ Factions       │
│ Active Quests │                              │ Status         │
├───────────────┴──────────────────────────────┴───────────────┤
│                         Rune Console                          │
└──────────────────────────────────────────────────────────────┘
```

The arrangement (left RPG panels, central interaction, right world panels, bottom Rune console) is the visual
target. **In the MVP these panels are simple placeholders** — the roadmap requires that "the first version must
remain simple" (P4). The screen should still communicate that the game is composed of multiple systems:
character, inventory, quests, world memory, factions, Lyra, the Rune console, dynamic narrative, and persistent
world state.

> A main menu (Continue / New World / Exit) and a fully populated in-game HUD do not normally coexist on one
> screen. The reference image composites both for presentation; real screens should show one state at a time.

---

## Panels

Styling for every panel is canonical; the **data shown inside** is illustrative unless noted.

### Main menu `Status: Canonical`

Centered, elegant, readable. Base entries: **Continue**, **New World**, **Load Chronicle**, **Character**,
**Settings**, **Exit**. Buttons: horizontal rectangles, dark fill, thin golden borders, fantasy ornaments,
cyan glow on the selected item, serif fantasy text, light hover/focus animation. Buttons should look engraved
into a divine interface.

### Character panel `Status: Canonical (style)` · `Illustrative (data)`

Preferably on the left. Shows: portrait, name, class/title, level, HP, MP, XP, main attributes, a quick
inventory, and active quests. Styled as a clean, modern RPG sheet in fantasy dressing.

> The attribute names in the mockup (Intelligence, Wisdom, Willpower, Focus, Luck) and the HP/MP/XP bars are
> **illustrative**. The committed entity model — including which stats and resources exist — is defined in
> roadmap **P8**, and HP/MP are not yet confirmed MVP mechanics.

### Inventory panel `Status: Canonical (style)` · `Illustrative (rarities)`

A grid of card-like slots. Each item: icon, rarity-coherent border, quantity, descriptive tooltip, category,
optional effect.

> A rarity *system* (e.g. Common → Divine, Corrupted) is **not yet defined**. The design canon lists item
> *types*, not rarity tiers. Use the proposed tiers below only as a visual placeholder until rarities are
> designed (P8+):
>
> | Rarity | UI color |
> |---|---|
> | Common | Gray |
> | Uncommon | Soft green |
> | Rare | Cyan |
> | Epic | Violet |
> | Legendary | Gold |
> | Divine | White/gold/cyan |
> | Corrupted | Crimson/dark violet |

### Active quests panel `Status: Canonical (style)` · `Illustrative (entries)`

Few essential fields per quest: title, short description, icon, status, optional priority, optional link to the
involved region or faction. Keep the panel light. Quests should stay on-theme: world discovery, reality
editing, memory, fragments, divine code, and the protagonist's rise.

### World Memory panel `Status: Canonical (style)` · `Illustrative (map & metrics)`

Represents persistent world state: a dark map with cyan nodes and energy lines, luminous fragments, and golden
symbols for important places.

> The "Fragments Restored 68%" metric and the interactive world map are **illustrative**. Persistent state is
> currently modeled abstractly as structured state, event log, and summaries (see [Memory System](memory-system.md)).
> A concrete world-state representation — and any "memory restored" metric — would be designed around P8/P16, not
> in the MVP.

### Lyra panel `Status: Canonical (style)` · `Illustrative ("Harmony Level")`

[Lyra](lyra-assistant.md) is not a normal NPC: she is the divine assistant connected to the Rune system. Her
panel should be brighter, cleaner, and more cyan than the others to mark her as an intelligent, divine entity.
It can show: portrait/icon, name, title, functional/emotional state, contextual suggestions, warnings, world
analysis, and Rune-script support.

> The mockup shows a **"Harmony Level"** for Lyra. This is **illustrative and currently off-canon**: per
> [Lyra Assistant](lyra-assistant.md), Lyra is a guidance layer that does not mutate game state and has no
> stats, and *companion progression* is explicitly out of [MVP scope](mvp-scope.md). Treat any Lyra
> progression/relationship metric as undecided until designed deliberately.

### Factions panel `Status: Canonical (style)` · `Illustrative (faction names)`

Each faction: name, icon, reputation, diplomatic status, relationship bar, optional identity color.

> The faction *names* in the mockup (Codex Order, Null Reavers, Arcanum Synod, Free Developers, Forgotten Ones)
> are **illustrative**. The canon only references "factions" generically (see [Gameplay Systems](gameplay-systems.md)).
> Naming and faction mechanics are post-MVP lore work and must be ratified before they enter the canon.

### Rune Console `Status: Canonical`

One of the strongest identity elements: a programmer's console reimagined as a divine, magical interface.
Features: obsidian background, monospace text, cyan code, line numbers, system output, Lyra hints, magical
errors, Rune icons, arcane circles, and light compile/execute animations.

The console syntax shown in the mockup is a **stylistic example**. The committed command set and validation
rules live in [Rune System](rune-system.md); keep console examples consistent with that document. Illustrative
session:

```text
[Lyra] Rune sequence stable.
[World] Fire sphere generated.
[System] Mana cost: 18
```

The Rune Console is where the "programming + magic" theme becomes explicit.

---

## Rune visual language `Status: Canonical`

Rune needs a recognizable signature: luminous cyan symbols, suspended pseudocode, geometric magic circles,
arcane circuit-like lines, floating text fragments, compile effects, golden particles, and subtle reality
distortion. Rune should read as the hidden language the world was written in — not a generic elemental spell.
See [Rune System](rune-system.md) for mechanics.

---

## Typography `Status: Canonical`

Two type families:

- **Fantasy serif** — titles, main menus, section names, place names, important quests. Elegant, readable,
  fantasy, not overly gothic.
- **Monospace** — Rune Console, scripts, logs, debug, system messages, Rune errors. Clean, readable, technical,
  consistent with the programming theme.

---

## Character, Lyra & environment art `Status: Canonical`

These prompts complement the technical pipeline in [Image Generation Pipeline](image-generation-pipeline.md);
that document owns models, tooling, and asset categories.

**Characters** — modern high-quality anime fantasy JRPG design: elegant proportions, detailed fantasy outfits,
expressive faces, cinematic lighting, obsidian/gold/cyan/violet accents, mature but portfolio-safe. Key
characters should carry role-specific visual cues (visible runes, magical accessories, faction symbols,
recurring colors, recognizable silhouette).

**Lyra** — silver/luminous-white hair, cyan or light-blue eyes, white/gold/cyan attire, runic details, ethereal
and almost holographic presence, calm intelligent expression, pseudocode fragments around her. A fusion of minor
goddess, AI assistant, guide spirit, and living interface of the divine code.

**Environments** — cinematic anime dark fantasy: monumental architecture, ancient ruins, divine libraries,
magical academies, night cities, floating castles, corrupted dungeons, arcane laboratories, volumetric light,
violet/blue atmosphere, golden inscriptions, cyan runes. Ancient yet modifiable, as if a hidden logical
structure lay beneath the fantasy surface.

### Base prompts

UI:

```text
dark fantasy RPG user interface, obsidian glass panels, thin golden borders, glowing cyan runic code, elegant
JRPG menu design, readable layout, divine programming theme, fantasy parchment accents, high contrast typography,
polished game UI, professional portfolio quality, no clutter, no modern sci-fi neon overload
```

UI negative:

```text
messy interface, unreadable text, low quality, mobile game clutter, excessive icons, cheap fantasy UI, generic
sci-fi UI, bad alignment, blurry, watermark, logo
```

Characters:

```text
modern high-quality anime fantasy JRPG character design, elegant dark fantasy, refined mature tone, detailed
outfit, expressive face, cinematic lighting, luminous runic details, obsidian and gold color accents, deep
violet shadows, clean lineart, soft painterly rendering, portfolio-safe, non-vulgar, consistent character design
```

Characters negative:

```text
low quality, blurry, bad anatomy, extra fingers, deformed hands, inconsistent face, messy clothing, unreadable
details, cheap cartoon style, overly realistic, explicit content, vulgar pose, nsfw, watermark, text, logo
```

Environments:

```text
cinematic anime fantasy environment, dark elegant JRPG world, vast magical architecture, obsidian stone, golden
divine ornaments, glowing cyan runic inscriptions, deep violet atmosphere, soft volumetric lighting, highly
detailed background, mysterious and majestic mood, painterly anime style, no characters
```

Rune magic:

```text
divine runic code magic, floating holographic pseudocode, glowing cyan symbols, golden arcane circles, reality
rewriting effect, elegant dark fantasy energy, magical programming interface, cinematic lighting, high detail,
anime JRPG style
```

### Composition rule

Every generated image should follow:

```text
[BASE STYLE] + [SUBJECT] + [ROLE / FUNCTION] + [MOOD] + [COLOR PALETTE] + [COMPOSITION] + [QUALITY TAGS]
```

---

## Visual consistency rules `Status: Canonical`

To stay recognizable, every screen or image must honor **at least three** of these: obsidian black or night
blue; divine gold accents; rune cyan light; deep violet atmosphere; magical-code elements; elegant fantasy
detailing; an ordered, readable layout. Legibility always wins over decoration.

---

## Illustrative vs Canonical

Everything in the reference mockup that is **not yet a committed design decision**, with where it should be
decided:

| Mockup element | Status | Where it belongs |
|---|---|---|
| Palette, typography, panel styling, art direction | **Canonical** | This document |
| Faction names (Codex Order, Null Reavers, Arcanum Synod, Free Developers, Forgotten Ones) | Illustrative | Post-MVP lore; canon only has generic "factions" ([Gameplay Systems](gameplay-systems.md)) |
| Lyra "Harmony Level" / progression metric | Illustrative — conflicts with current design | Undecided; Lyra has no stats and companion progression is out of MVP ([Lyra Assistant](lyra-assistant.md), [MVP Scope](mvp-scope.md)) |
| Attribute names (Intelligence, Wisdom, Willpower, Focus, Luck) | Illustrative | Game entities, roadmap **P8** |
| HP / MP / XP bars | Illustrative | Game entities, roadmap **P8** (HP/MP not yet confirmed) |
| Inventory rarity tiers (Common → Divine, Corrupted) | Illustrative | Roadmap **P8+** |
| "Fragments Restored 68%" and interactive world map | Illustrative | World-state model, roadmap **P8/P16** ([Memory System](memory-system.md)) |
| Level 42 character, full inventory, "finished game" framing | Illustrative / key art | Marketing key art, not the MVP UI |
| Background figures + monumental architecture | Key art | Splash art, distinct from functional UI |

**Key art vs functional UI:** promotional compositions (hooded figures, vast architecture, overlaid menu on a
full HUD) are key art and follow the art direction freely. Functional UI screens must stay buildable, readable,
and consistent with the roadmap's current phase.

---

## Future additions

Not specified yet; to define as the UI matures:

- **Accessibility / contrast** — verify WCAG contrast for gold-on-obsidian and cyan accents; provide a
  high-contrast path for body text.
- **Responsive behavior** — how the three-column layout and panels collapse on smaller screens.
- **Component states** — empty, loading, and error states for each panel (especially Rune Console output and
  a Lyra "thinking" state).
- **Design tokens → SCSS** — map the palette and type scale to variables in `frontend/src/styles.scss`
  (currently empty) so this guide stays in sync with the implementation.
