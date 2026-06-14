# Final Project Analysis

## 1. Introduction

**The World I Can Develop** is a software project for creating a local-first, AI-driven, text-based fantasy RPG built around a strong narrative component, a persistent world, a memory system, an interface more structured than a simple chat window, and role-playing game progression.

The project was internally born under the working name **Demon King**, but the chosen title for the game is **The World I Can Develop**.

The title reflects the core mechanic of the work: the protagonist does not merely explore a fantasy world, but gains the ability to develop it, modify it, program it, and make it evolve through a divine-magical language called **Rune**, supported by a divine AI agent called **Lyra**.

The project aims to combine:

* text-based fantasy RPG;
* AI-driven narrative;
* persistent worldbuilding;
* companion system;
* narrative romance;
* power-fantasy progression;
* mechanics inspired by programming;
* local AI;
* local image generation;
* professional technical documentation;
* publishability on GitHub and portfolio value.

The goal is not to build a simple fantasy chat, but a real modular software product, with an interface, game logic, persistent memory, visual assets, and technical documentation.

---

### 1.1 Language Decision and Repository Presentation

The analysis document may remain in Italian as a personal design document, but the final software project must be developed in **English** to maximize portfolio value and international readability.

As a consequence, in the public repository the following must be in English:

* code;
* technical comments;
* file, class, function, method, and API names;
* README;
* public documentation;
* commit messages;
* issues, milestones, and pull requests;
* versioned technical prompts;
* ADRs and architectural documentation.

The public tone must remain technical, mature, and professional. The relationship/romance system should be presented as a **narrative relationship system**, **companion progression**, or **character-driven storytelling**, avoiding vulgar wording or phrasing unsuitable for GitHub/CV use.

---

## 2. Software Objective

The main objective of **The World I Can Develop** is to allow the player to experience a personal, dynamic, and persistent fantasy adventure in which the protagonist is transported into, or inserted within, a complex narrative world and receives from a goddess a unique power: **Rune**, a divine-magical language based on pseudocode.

Through Rune, the protagonist can create, modify, combine, and execute instructions capable of altering the fantasy reality of the game. The protagonist therefore does not receive a simple spell, but an actual **reality development system**.

The software must provide:

* a high-quality text-based fantasy story;
* a coherent and persistent world;
* an experience more structured than a chat;
* a text RPG UI;
* a character progression system;
* a local AI narrative engine;
* persistent memory of events;
* companion system;
* narrative romance system;
* management of quests, inventory, relationships, and world state;
* Rune system based on fantasy pseudocode;
* divine AI agent Lyra;
* local image generation for fantasy/anime assets;
* organized and versionable Markdown documentation.

The main value of the project lies in creating a personalized narrative experience where AI generates dialogue, descriptions, reactions, and strategic support, while the software maintains control over rules, world state, progression, memory, and coherence.

---

## 3. Project Context

The project comes from the desire to build an AI-based web software for a text-based fantasy role-playing game, with a tone that is:

* epic;
* adventurous;
* mature;
* romantic;
* elegant;
* character-oriented;
* narratively polished;
* suitable for public and professional presentation.

The initial idea was to create an AI-driven text RPG inspired by adventure isekai, fantasy JRPGs, power fantasy, and games with a deep companion system.

During the design phase, several fundamental pillars emerged:

* the game must not be a simple chat;
* it must have a UI with RPG panels and systems;
* it must use local AI, avoiding mandatory cloud dependencies;
* it must have persistent memory;
* it must distinguish between generated narrative and deterministic rules;
* it must be publishable on GitHub;
* it must have professional documentation;
* it must be usable as a portfolio project;
* it must include a programming-inspired touch through Rune;
* it must include an in-lore AI agent, Lyra;
* it must use local image generation for visual assets.

The project must be developed in phases, starting from a solid text MVP and then adding more advanced systems such as semantic memory, asset manager, deep companion system, integrated image generation, and world simulation.

### 3.1 Technical Direction of the MVP

For the MVP, the project starts with a single, clear stack suitable for a portfolio repository. This choice prevents the work from being scattered across too many alternatives and allows a first playable, documented, and testable loop to be built immediately.

**MVP Stack:**

| Area | MVP Choice | Status | Notes |
| --- | --- | --- | --- |
| Frontend | Angular + TypeScript | Confirmed | Structured UI, consistent with Angular skills and portfolio value. |
| Backend | Spring Boot + Java 17/21 | Confirmed | REST APIs, deterministic rules, persistence, and integration with local AI. |
| Database | PostgreSQL | Confirmed | Game state, campaigns, quests, inventory, memory, and lore. |
| Semantic memory | pgvector | Planned | To be prepared or introduced after the first MVP, when semantic retrieval is needed. |
| Local AI | Ollama | Confirmed | Local interface for open-source LLM models. |
| Local environment | Docker Compose | Confirmed | Organized startup of database and local services. |
| Python/FastAPI AI microservice | Optional future | Post-MVP | To be considered only if AI orchestration becomes too complex inside the Java backend. |
| Image generation | Stable Diffusion / SDXL via Forge | Confirmed, outside the MVP loop | Initially used to create assets, not as a dependency of the base gameplay. |

The first MVP must therefore focus on **Angular + Spring Boot + PostgreSQL + Ollama**. FastAPI remains a future possibility, not the starting point.

---

## 4. Functional Requirements

### 4.1 Game Start

**Description:**
At the beginning of the adventure, the software must ask the player for the protagonist's name.

**Objective:**
Make the adventure personal and not based on a predefined character.

**Expected behavior:**

1. The user opens the software.
2. The system displays a start screen.
3. The game asks for the protagonist's name.
4. The name is saved in the game state.
5. The name is used in dialogues, the character sheet, and the narrative.

**Constraints:**

* the name must be persistent;
* it must be retrievable from narrative memory;
* it must be modifiable only through a controlled function.

**Priority:** High.

---

### 4.2 AI-Driven Narrative System

**Description:**
The heart of the game must be a narrative system supported by local AI, capable of generating descriptions, dialogue, events, reactions, and consequences consistent with the game state.

**Objective:**
Create a dynamic narrative, less rigid than a fully scripted RPG.

**Expected behavior:**

1. The player chooses or writes an action.
2. The backend retrieves game state, context, memory, and relevant information.
3. The AI generates a coherent narrative response.
4. The backend validates any state changes.
5. The system updates the game, quests, relationships, inventory, or world.
6. The new state is saved.

**Constraints:**

* the AI must not freely modify the game state;
* the game engine must control rules, rewards, items, and progression;
* the main lore must remain coherent;
* the narrative tone must remain stable;
* the AI response must be filtered or structured when it produces technical changes.

**Priority:** High.

---

### 4.3 Interface More Complex Than a Chat

**Description:**
The game must not be a simple chat window. It must have a structured text RPG interface.

**Objective:**
Give the player the feeling of using a real game software product, not a generic chatbot.

**Planned components:**

* main narrative area;
* action menu;
* free action input;
* character sheet;
* inventory;
* quest log;
* companion panel;
* current location panel;
* world state summary;
* important event history;
* Rune panel;
* Lyra panel;
* AI and game settings.

**Expected behavior:**

* the user reads the narrative;
* consults stats, inventory, and quests;
* writes or selects actions;
* uses Rune to propose magical scripts;
* receives suggestions or analysis from Lyra;
* sees coherent updates in the UI;
* can resume the game later.

**Constraints:**

* the first version must remain simple;
* the UI must be modular;
* the MVP must not be blocked by too many graphical features;
* each panel must have a clear responsibility.

**Priority:** High.

---

### 4.4 Character Sheet

**Description:**
The protagonist must have a character sheet with both narrative and mechanical information.

**Objective:**
Make character progression visible.

**Planned data:**

* name;
* level;
* class;
* experience;
* main stats;
* powers;
* abilities;
* Rune mastery;
* resource linked to Rune;
* reputation;
* physical or magical status;
* equipment;
* main relationships;
* narrative objectives.

**Expected behavior:**

* the sheet is created at the beginning of the game;
* it is updated after relevant events;
* it shows character growth;
* it is used by the backend for calculations and narrative conditions.

**Constraints:**

* numeric values must be managed by the software;
* the AI may describe growth, but must not arbitrarily alter data;
* Rune must have controlled progression.

**Priority:** High.

---

### 4.5 Power Given by the Goddess: Rune

**Confirmed decision:**
In **The World I Can Develop**, the goddess gives the protagonist a unique power: the ability to use a divine-magical language based on pseudocode, called **Rune**.

Rune is not a simple elemental magic system, but a limited form of access to the hidden structure of the world. Through Rune, the protagonist can create, modify, combine, and execute instructions capable of altering the fantasy reality of the game.

The goddess therefore does not give the protagonist traditional magic, but an actual **reality development system**.

---

#### Chosen Names

| Element | Chosen name | Description |
| --- | --- | --- |
| Game title | **The World I Can Develop** | Reflects the idea of a world that the protagonist can develop, modify, and evolve. |
| Internal/project name | **Demon King** | Working name for the project during the design phase. |
| Magical language | **Rune** | Divine/pseudocode language used to interact with the deep rules of the world. |
| Divine AI agent | **Lyra** | Intelligent guide given by the goddess together with Rune. Helps interpret the world, suggest scripts, and analyze situations. |

---

#### General Functioning of Rune

Rune allows the protagonist to write magical commands in a form similar to pseudocode. These commands can generate physical, elemental, mental, narrative, or systemic effects.

Unlike classic magic, Rune works as an arcane development language: the protagonist does not merely cast predefined spells, but can build instructions, combine them, save them, improve them, and execute them.

Conceptual example:

```pseudo
element fire = new Fire()

loop(50) {
    fire.power++
}

fire.shape("sphere")
fire.acceleration = 100
fire.launch(target)
```

As the protagonist grows, Rune can evolve from a simple elemental generation tool into an increasingly deep system, capable of reading, interpreting, and modifying more complex structures of the world.

---

#### Power Progression

Rune must grow gradually throughout the adventure.

##### Phase 1 — Basic Elemental Scripts

The protagonist can create small, simple magical effects.

Examples:

* create fire;
* generate wind;
* produce light;
* move small objects;
* temporarily enhance an action.

##### Phase 2 — Command Combination

The protagonist can combine different instructions to create more complex spells.

Examples:

* create a fireball;
* increase the speed of a magical projectile;
* apply a shape to an element;
* chain simple effects;
* modify trajectory, intensity, or duration.

##### Phase 3 — Saved Scripts

The protagonist can save recurring scripts and quickly recall them.

Example:

```pseudo
cast FireBall(target)
```

This allows complex sequences to become reusable abilities.

##### Phase 4 — World Analysis

Rune allows hidden information about objects, enemies, locations, or anomalies to be read.

Examples:

* analyze an enemy's weaknesses;
* read an object's magical properties;
* identify traps;
* detect anomalies in reality;
* interpret ancient magical structures.

##### Phase 5 — Modification of Deep Parameters

In advanced phases, the protagonist can interact with deeper parameters of characters, entities, or narrative systems.

Examples:

* temporarily alter a personality trait;
* modify a magical condition;
* break constraints imposed by a curse;
* correct anomalies in the world;
* partially rewrite local rules of reality.

This phase must be handled carefully to prevent the power from becoming too free or breaking game progression.

---

#### Rune Balancing Constraints

Rune must be powerful, but not unlimited.

Recommended constraints:

* consumption of an arcane resource;
* script complexity limits;
* syntax or logic errors;
* minimum level for certain instructions;
* cooldowns for complex scripts;
* instability risk;
* need for prior knowledge;
* impossibility of freely modifying everything from the beginning;
* validation by the game engine.

The system must give the player the feeling of being able to “develop” the world, without removing challenge, progression, and narrative consequences.

**Priority:** Highest.

---

### 4.6 Lyra: Divine AI Agent

**Description:**
**Lyra** is the intelligent agent given by the goddess together with Rune.

She is not just a guiding voice, but a presence integrated into the protagonist's power. Lyra functions as interpreter, assistant, analyst, and narrative interface between the player and the Rune system.

**Objective:**
Give the player a diegetic guide, meaning one internal to the game world, capable of explaining Rune, suggesting strategies, and supporting interaction with the fantasy reality.

**Lyra's narrative responsibilities:**

* explain how Rune works;
* help the protagonist understand the world;
* suggest possible scripts;
* analyze enemies, locations, objects, and anomalies;
* warn the player about risks or limits;
* provide strategic interpretations;
* maintain memory of scripts, events, and discoveries.

**Technical gameplay responsibilities:**

* propose valid Rune commands;
* help transform the player's intentions into pseudocode;
* explain why a script fails;
* identify missing requirements;
* suggest optimized versions of a script;
* act as a diegetic tutorial for the system;
* help retrieve information from memory.

**Constraints:**

* Lyra must not solve everything for the player;
* she should suggest, not eliminate difficulty;
* her level of autonomy must be defined;
* she must have a recognizable personality;
* she must be integrated both into the lore and the interface.

**Priority:** High.

---

### 4.7 Inventory

**Description:**
The game must manage items, equipment, materials, consumables, and rewards.

**Objective:**
Add RPG structure and concrete progression.

**Expected behavior:**

* the player can receive items;
* items are saved;
* some items can be equipped;
* some can be consumed;
* some can unlock dialogue, quests, or narrative paths;
* some items can interact with Rune.

**Item types:**

* weapons;
* armor;
* accessories;
* consumables;
* materials;
* key items;
* relics;
* narrative items;
* fragments or components linked to Rune.

**Constraints:**

* the inventory must be managed by the backend;
* the AI may describe items, but must not modify them without validation;
* each item must have an identifier, name, description, and type.

**Priority:** High.

---

### 4.8 Quest System

**Description:**
The system must manage main quests, side quests, personal quests, companion quests, and dynamic events.

**Objective:**
Give direction to the game and organize narrative progression.

**Planned types:**

* main quest;
* side quest;
* companion quest;
* relationship quest;
* faction quest;
* Rune-related quest;
* Lyra-related quest;
* random events;
* AI-supported emergent quests.

**Expected behavior:**

* the system records active quests;
* each quest has objectives;
* quests can be updated;
* completion produces rewards;
* some quests modify relationships, reputation, or world state.

**Constraints:**

* main quests must be more controlled;
* emergent quests must respect the world state;
* the system must avoid contradictions;
* Lyra can help interpret objectives and anomalies, but must not complete quests for the player.

**Priority:** High.

---

### 4.9 Companion System

**Description:**
The player can meet, recruit, and develop relationships with travel companions.

**Objective:**
Create emotional, narrative, and strategic depth.

**Each companion should have:**

* name;
* race;
* class;
* party role;
* personality;
* physical appearance;
* background;
* personal goals;
* trust level;
* relationship with the protagonist;
* opinions about the player's choices;
* personal quest;
* possible dedicated relationship path.

**Expected behavior:**

* companions react to the protagonist's actions;
* they remember important events;
* they can approve or disapprove of choices;
* they can unlock dialogue, quests, and narrative scenes;
* they can influence combat, travel, and decisions;
* they can have specific reactions to the use of Rune.

**Constraints:**

* companions must remain character-consistent;
* they must be treated as complete narrative characters;
* they must not be simple decorative elements;
* they must integrate with memory and quest systems.

**Priority:** High.

---

### 4.10 Narrative Romance System

**Description:**
The project includes a relationship and romance system, designed as a narrative component connected to companions, dialogue, trust, and emotional choices.

**Objective:**
Add depth to relationships between characters and make interactions more personal.

**Expected behavior:**

* characters can develop trust, affinity, complicity, or distance;
* the player's choices influence relationships;
* some characters can have dedicated relationship paths;
* the relationship evolves gradually;
* the relationship can influence quests, dialogue, and endings.

**Main elements:**

* trust;
* affinity;
* respect;
* personal dialogue;
* relationship events;
* companion quests;
* narrative consequences;
* emotional growth of characters.

**Editorial line:**

The romance system must be described and designed as a narrative relationship system, with a mature, elegant tone suitable for public presentation.

**Constraints:**

* maintain language and content suitable for GitHub, portfolio, and CV;
* avoid unprofessional wording in the documentation;
* present the system as a component of character-driven storytelling;
* prioritize emotional development, dialogue, and narrative consequences.

**Priority:** Medium-High.

---

### 4.11 Persistent Memory System

**Description:**
The game must remember events, choices, important dialogue, visited places, encountered characters, relationships, inventory, and narrative consequences.

**Objective:**
Prevent the game from feeling like a chat without continuity.

**Expected behavior:**

* every important event is saved;
* the system can retrieve past information;
* the AI uses only relevant context;
* characters and the world remember important events;
* the game can be resumed in later sessions;
* Rune and Lyra can consult previous information when useful.

**Memory types:**

* technical state;
* narrative state;
* important events;
* chronology;
* periodic summaries;
* relationship with NPCs;
* world state;
* canonical lore;
* saved Rune scripts;
* analyses performed by Lyra.

**Constraints:**

* not everything must be saved;
* certain data, narrative events, and raw chronology must be distinguished;
* the context sent to the AI must be selected;
* memory must not create confusion or contradictions.

**Priority:** High.

---

### 4.12 Retrieval of Past Information

**Description:**
The system must be able to retrieve specific events, such as a sentence said by a character long before, a promise made during a quest, or a Rune script already used.

**Objective:**
Create advanced narrative continuity.

**Expected behavior:**

* important events are indexed;
* relevant dialogues are saved;
* Rune scripts are recorded;
* the system retrieves information when needed;
* characters react based on memory;
* Lyra can recall previous events, discoveries, and attempts;
* the AI receives only useful context.

**Proposed solution:**

* relational database for structured state;
* future semantic memory through PostgreSQL + pgvector;
* event classification by importance;
* periodic summaries of the chronology.

**Priority:** Medium for MVP, High for the full project.

---

### 4.13 Text-Based Combat System

**Description:**
The game must include narrative combat regulated by deterministic logic.

**Objective:**
Combine narrative creativity with mechanical control.

**Expected behavior:**

1. The player chooses an action.
2. The player can use normal actions or Rune scripts.
3. The game engine calculates outcome, damage, or consequences.
4. The AI describes the result narratively.
5. Character state is updated.
6. Combat can produce experience, loot, or consequences.

**Constraints:**

* the AI must not arbitrarily decide victory or defeat;
* damage, resources, and stats must be managed by the backend;
* Rune must pass through technical and narrative validation;
* the narrative must reflect the calculated results.

**Priority:** Medium-High.

---

### 4.14 Persistent World System

**Description:**
The game world must have continuity, politics, factions, gods, races, cities, territories, and conflicts.

**Objective:**
Create a strong, non-generic setting.

**Planned elements:**

* kingdoms;
* cities;
* villages;
* dungeons;
* gods;
* races;
* factions;
* guilds;
* political conflicts;
* historical events;
* key locations;
* companions and main characters;
* reality anomalies linked to Rune;
* hidden world structures interpretable by Lyra.

**Expected behavior:**

* canonical lore is saved in documentation;
* the game consults the world before generating events;
* the player's choices can modify the world state;
* memory distinguishes stable lore from dynamic events;
* Rune can gradually interact with deeper structures of the world.

**Constraints:**

* the world must not be continuously reinvented;
* the main lore must be documented;
* the AI must respect canonical information;
* deep changes through Rune must be controlled.

**Priority:** High.

---

### 4.15 Local Image Generation

**Description:**
The project will use a fully local image generation solution based on **Stable Diffusion / SDXL**.

This choice allows:

* local execution;
* no dependency on cloud services;
* full control over models;
* support for anime, fantasy, romance, and character art styles;
* possible future direct integration into the software.

**Main decision:**
Image generation will be handled through a local pipeline based on **Stable Diffusion / SDXL**.

**Priority:**
Medium for visual asset production.
Low for direct integration into the software MVP.

---

#### 4.15.1 Main Interface: Stable Diffusion WebUI Forge

**Chosen technology:**
**Stable Diffusion WebUI Forge**.

Forge will be the main tool for image generation.

**Reasons for the choice:**

* it is easier to use than ComfyUI;
* it is suitable for getting started quickly;
* it works well with NVIDIA GPUs;
* it supports SDXL models;
* it manages checkpoints, LoRA, VAE, and embeddings;
* it is practical for daily use through a local browser.

**Planned usage:**

Forge will be used to:

* generate images from prompts;
* test different models;
* use LoRA to customize style and characters;
* create visual assets for the project;
* produce character art, narrative scenes, environments, and illustrations.

**Status:** Confirmed.

---

#### 4.15.2 Main Model: WAI Illustrious SDXL

**Chosen model:**
**WAI Illustrious SDXL**.

This will be the main image generation model for the project.

**Planned usage:**

* modern anime style;
* character art;
* fantasy characters;
* narrative images;
* illustrations for the game;
* stylized and coherent scenes;
* visual support for companions, gods, key characters, and environments.

**Reason for the choice:**
WAI Illustrious SDXL was chosen because it is suitable for modern anime rendering, has good overall quality, and provides a valid base for working with LoRA, character design, and stylized fantasy images.

**Status:** Confirmed.

---

#### 4.15.3 Secondary Model: Pony Diffusion V6 XL

**Chosen model:**
**Pony Diffusion V6 XL**.

This will be the secondary or alternative model compared to WAI Illustrious SDXL.

**Planned usage:**

* stylized characters;
* fantasy creatures;
* non-human races;
* fantasy scenes;
* comparative testing against the main model;
* alternative concepts for characters, monsters, companions, and environments.

**Reason for the choice:**
Pony Diffusion V6 XL is useful as an alternative because it offers interesting results for fantasy and stylized content. It will mainly be used for comparisons, visual experiments, and assets that require a different style from the main model.

**Status:** Confirmed.

---

#### 4.15.4 Use of Images in the Project

In the first phase, image generation does not necessarily need to be integrated directly into the software. It will mainly be used to produce visual assets for the project.

Assets may include:

* companion portraits;
* gods;
* key characters;
* fantasy races;
* creatures;
* environments;
* cities;
* dungeons;
* important narrative scenes;
* promotional images;
* README images;
* visual references for worldbuilding.

In the future, the software may integrate a system for associating images with:

* characters;
* places;
* quests;
* scenes;
* events;
* companion sheets;
* world map.

---

#### 4.15.5 Technical Constraints for Images

Image generation must respect these constraints:

* local execution;
* no mandatory cloud dependency;
* use of models compatible with available hardware;
* loading models only when necessary;
* reuse of already generated assets;
* avoid unnecessary regeneration of the same scene or character;
* maintain aesthetic consistency through prompts, LoRA, reference sheets, and organized asset naming;
* keep public documentation suitable for GitHub and portfolio use.

---

### 4.16 Save System

**Description:**
The game must save the game state.

**Objective:**
Allow continuous sessions.

**Expected behavior:**

* automatic saving;
* state recovery after closing;
* persistence of name, character sheet, inventory, quests, and memory;
* persistence of saved Rune scripts;
* persistence of Lyra's main analyses;
* future possibility of manual saves;
* future possibility of multiple campaigns.

**Constraints:**

* in the first version, a single save may be enough;
* the architecture must not prevent multi-save or multi-campaign support in the future.

**Priority:** High.

---

### 4.17 Multi-Game or Multi-Player Support

**Description:**
The question was raised whether the system should support multiple games or multiple players.

**Status:** To be clarified.

**Recommended solution:**

* design the database with `Player`, `Campaign`, and `SaveGame` entities;
* use a single user in the MVP;
* avoid locking the architecture into one hardcoded game.

**Priority:** Medium.

---

### 4.18 Git Management and Versioning

**Description:**
The project must be published and managed with Git, using organized commits and step-by-step development.

**Objective:**
Maintain control over the code and make the project presentable.

**Expected behavior:**

* repository initialization;
* small and descriptive commits;
* feature branches;
* polished README;
* technical documentation;
* roadmap;
* issues or task list;
* possible GitHub publication.

**Constraints:**

* maintain professional language;
* separate public documentation from private notes;
* use consistent naming;
* avoid content unsuitable for portfolio presentation.

**Priority:** High.

---

### 4.19 Development Through Micro-Phases

**Description:**
The project must be developed in extremely small micro-phases, each understandable, testable, documentable, and committable.

**Objective:**
Avoid scope creep, unmanageable large commits, and overly broad changes. The project also has an educational purpose: each phase must help the creator concretely understand what was done.

**Expected behavior:**

1. Each phase has a single objective.
2. Each phase specifies touched files, tasks, tests, documentation, and commit message.
3. After each phase, a summary is written.
4. Each important change updates the related documentation.
5. The code is tested before closing the phase.
6. Development proceeds from repository skeleton, frontend shell, backend shell, database, game models, game loop, AI adapter, Rune, and Lyra.

**Constraints:**

* avoid huge changes in a single commit;
* avoid implementing advanced systems before the MVP loop;
* each phase must be explainable in an interview;
* each phase must leave the repository in a readable state.

**Priority:** Highest.

---

### 4.20 Claude Code Configuration as an Assisted Development System

**Description:**
The project will use Claude Code as an assisted development environment, organized with `CLAUDE.md`, skills, subagents, and hooks.

**Objective:**
Transform the AI developer from a simple chat into a controlled development operating system, with rules, roles, checklists, protections, and repeatable workflows.

**Planned components:**

* concise `CLAUDE.md`, with general rules and essential commands;
* `.claude/skills/` for reusable knowledge and workflows;
* `.claude/agents/` for specialist roles;
* `.claude/hooks/` for deterministic blocks and reminders;
* `settings.json` for configuring hooks and operational policies.

**Constraints:**

* `CLAUDE.md` must not become a huge document;
* specific project rules must live in dedicated skills;
* hooks must block destructive commands and remind about tests/documentation;
* specialist agents should help, but not replace human control.

**Priority:** High.

---

## 5. Non-Functional Requirements

### 5.1 Local Execution

The project must prioritize local execution, especially for AI and images.

**Reasons:**

* avoid recurring costs;
* maintain control over data;
* experiment with local models;
* make the project independent from cloud APIs;
* use LLMs and Stable Diffusion / SDXL locally.

**Status:** Confirmed.

---

### 5.2 Privacy

The game may contain narrative preferences, saves, game data, and personal information about the player.

**Requirements:**

* save data locally;
* do not send game content to cloud services in the base version;
* make any cloud integrations optional;
* clearly document where data is stored.

---

### 5.3 Performance

The software must be usable on a personal PC.

**Requirements:**

* acceptable LLM response times;
* smooth UI;
* AI models compatible with available hardware;
* non-blocking image and asset loading;
* image generation not mandatory during MVP gameplay;
* use of quantized models for the LLM part;
* loading image models only when needed.

---

### 5.4 Maintainability

The project must be modular and readable.

**Requirements:**

* separate frontend, backend, AI, memory, and rules;
* avoid scattering game logic across the frontend;
* maintain clear documentation;
* use Git;
* organize modules and folders clearly;
* maintain professional naming;
* separate Rune logic, Lyra, game engine, and AI narrative.

---

### 5.5 Scalability

The project must not start as an overly complex system, but it must be able to grow.

**Requirements:**

* future support for multiple games;
* future support for multiple AI models;
* future support for integrated images;
* future support for semantic memory;
* future support for additional narrative modules;
* future support for lore and quest editors;
* future support for a Rune editor or validator.

---

### 5.6 Usability

The software must be easy to use even if internally complex.

**Requirements:**

* clear UI;
* readable menus;
* accessible main actions;
* organized quest log;
* understandable inventory;
* easily consultable character sheet;
* readable narrative output;
* understandable Rune panel;
* Lyra support to explain complex mechanics.

---

### 5.7 Narrative Quality

Narrative quality is a core requirement.

**Requirements:**

* coherent tone;
* memorable characters;
* non-generic worldbuilding;
* believable dialogue;
* narrative consequences;
* elegant narrative romance;
* deep companion system;
* controlled power fantasy;
* modern fantasy RPG style;
* coherent integration of the Rune mechanic;
* Lyra as both a narrative and functional element.

---

### 5.8 Professional Presentability

The project must be presentable on GitHub and in a technical portfolio.

**Requirements:**

* professional README;
* clear description;
* organized documentation;
* neutral language;
* description of romance as a narrative relationship system;
* focus on local AI, game design, software architecture, and worldbuilding;
* separation between private notes and public documentation;
* presentation of the Rune system as a creative mechanic inspired by programming.

---

### 5.9 Technical Language of the Project

The final project must be in English in all public and technical parts. Italian may remain the language for personal analysis, conversation, and internal planning, but the repository must appear professional and international.

**Requirements:**

* README in English;
* technical documentation in English;
* code and comments in English;
* commit messages in English;
* API, DTO, class, component, and folder names in English;
* public description of romance as a narrative relationship system, not as vulgar content.

---

### 5.10 Testability

The deterministic rules of the game must be testable. In particular, every module that modifies state, stats, inventory, quests, memory, or Rune must have unit or integration tests.

**Requirements:**

* backend tests with JUnit/Mockito or equivalent tools;
* API tests with MockMvc/TestRestTemplate or equivalent;
* frontend tests for Angular services and components;
* specific tests for the Rune parser/validator;
* tests to prevent invalid AI output from modifying state;
* minimum tests for `/health`, `/game/start`, `/game/action`, `/rune/validate`.

---

### 5.11 AI Control Through the Backend

Local AI must be treated as an untrusted source for technical state. It can propose narrative, suggestions, and structured plans, but the backend must validate and apply only permitted changes.

**Requirements:**

* AI output separated between narrative text and change proposals;
* structured format when state updates are needed;
* mandatory backend validation;
* rejection or correction of illegal changes;
* logging of actually applied events;
* no direct database modification by the model.

---

## 6. Target Users

### 6.1 Main User

The main user is the creator of the project, who wants to experience a personal, AI-driven, persistent fantasy adventure.

---

### 6.2 Single Players

The initial target is a single player interested in:

* text RPGs;
* fantasy isekai;
* dynamic stories;
* companion systems;
* narrative romance;
* power-fantasy progression;
* AI-supported generated experiences;
* creative mechanics inspired by programming.

---

### 6.3 Developers and Recruiters

In case of GitHub publication, a secondary target consists of:

* developers;
* recruiters;
* companies;
* AI enthusiasts;
* people interested in local AI;
* people interested in narrative game design.

For this target, the project must be presented as:

* AI Narrative RPG;
* local-first game engine;
* technical experiment on local AI;
* Angular/backend/AI project;
* system with persistent memory;
* fantasy pseudocode system;
* example of modular and documented software.

---

## 7. Usage Flow

### 7.1 Main MVP Flow

1. The user opens the software.
2. The system displays the start screen.
3. The game asks for the protagonist's name.
4. The system creates a new game.
5. The player receives the narrative introduction.
6. The goddess grants Rune to the protagonist.
7. Lyra is introduced as the divine AI agent.
8. The system creates the character sheet.
9. The player enters the first scenario.
10. The UI displays:

    * narrative text;
    * available actions;
    * inventory;
    * character sheet;
    * active quests;
    * Rune panel;
    * Lyra panel.
11. The player chooses or writes an action.
12. The backend interprets the action.
13. If the action includes Rune, the system validates the script.
14. Lyra can provide suggestions or explanations.
15. The system retrieves relevant state, memory, and context.
16. The AI model generates the narrative response.
17. The system updates state, quests, inventory, relationships, or world.
18. The game is saved.
19. The loop continues.

---

### 7.2 Companion Flow

1. The player meets an important character.
2. The system records the character.
3. The AI generates dialogue consistent with personality and context.
4. The player makes choices.
5. Trust or relationship level changes.
6. The character may become a companion.
7. Dialogue, personal quests, or relationship paths are unlocked.
8. The companion remembers important events.
9. The companion can react to the use of Rune.

---

### 7.3 Quest Flow

1. The player receives a mission.
2. The quest is recorded in the quest log.
3. The system saves objectives and state.
4. The player performs actions in the world.
5. The system updates progress.
6. Lyra can help interpret objectives or anomalies.
7. Upon completion, rewards are assigned.
8. Narrative memory records the event.

---

### 7.4 Rune Flow

1. The player wants to produce a magical effect.
2. The player writes or selects a Rune script.
3. Lyra analyzes it or suggests improvements.
4. The system checks syntax, cost, level, and limits.
5. The game engine calculates the possible effect.
6. The AI describes the execution narratively.
7. The world state is updated if needed.
8. The script can be saved for future use.

---

### 7.5 Image Flow

1. A character, place, or important event is designed.
2. A visual asset is generated through Forge.
3. WAI Illustrious SDXL is used as the main model.
4. Pony Diffusion V6 XL is used for tests or stylistic alternatives.
5. The asset is saved in an organized folder.
6. The asset is associated with a character, place, or scene.
7. In the future, the software may automatically display the linked image.

---

## 8. Proposed Architecture

### 8.1 General View

The recommended architecture is modular, local-first, and progressive.

Logical schema:

```text
Frontend Web
    ↓
Backend API
    ↓
Game Engine / Rules Engine
    ↓
Rune Engine
    ↓
AI Orchestrator
    ↓
Local LLM
    ↓
Database / Memory Store
```

### 8.1.1 Confirmed MVP Stack

The MVP must start with a stack that is simple to explain, solid to develop, and consistent with the portfolio objective:

```text
Frontend:      Angular + TypeScript
Backend:       Spring Boot + Java 17/21
Database:      PostgreSQL
Vector Memory: pgvector, prepared or introduced after the first MVP
Local LLM:     Ollama
Dev Env:       Docker Compose
Images:        Stable Diffusion WebUI Forge, outside the MVP loop
```

The main backend will be Spring Boot. FastAPI remains useful as a possible AI microservice in a later phase, but it is not needed to start the project.

---

For the image part:

```text
Stable Diffusion WebUI Forge
    ↓
WAI Illustrious SDXL / Pony Diffusion V6 XL
    ↓
Generated assets
    ↓
Project Asset Library
    ↓
Future integration into the game
```

The key principle is to separate:

* interface;
* game rules;
* Rune system;
* Lyra agent;
* AI narrative;
* memory;
* database;
* visual assets;
* documentation.

---

### 8.2 Frontend

**Choice:** Angular + TypeScript.

**Motivation:**

* consistent with the user's skills;
* suitable for structured UIs;
* ideal for panels, dashboards, menus, and components;
* useful for a professional portfolio.

**Planned components:**

* `GameScreenComponent`;
* `NarrativePanelComponent`;
* `ActionMenuComponent`;
* `CharacterSheetComponent`;
* `InventoryComponent`;
* `QuestLogComponent`;
* `CompanionPanelComponent`;
* `WorldStatePanelComponent`;
* `RunePanelComponent`;
* `LyraAssistantPanelComponent`;
* `SettingsComponent`;
* `AssetViewerComponent`.

**Alternatives:**

* React;
* Vue;
* Svelte.

**Status:** Angular confirmed for the MVP, with TypeScript and standalone components where appropriate.

---

### 8.3 Backend

**Choice:** Java Spring Boot.

The MVP backend is built with **Spring Boot** on **Java 17/21**. This choice is consistent with the enterprise portfolio objective, with the Angular/Java stack, and with the need for an authoritative backend for APIs, persistence, deterministic rules, and AI output validation.

The backend must not be a simple proxy toward the local model. It must contain the game logic that decides what is valid, what is saved, and which state changes can be applied.

**Main responsibilities:**

* expose REST APIs for the frontend and game systems;
* manage players, campaigns, saves, quests, inventory, and relationships;
* apply deterministic rules through the Game Engine;
* validate Rune scripts;
* call the local LLM through a controlled adapter;
* separate narrative text from state changes;
* save events and persistent data in the database.

**FastAPI** is not excluded from the project, but remains a future choice. It may make sense if Python-specific libraries are needed for embeddings, RAG, LLM orchestration, or separate AI pipelines. In the first MVP, however, introducing it would add complexity without immediate benefit.

**Decision:** Spring Boot for the MVP, FastAPI as a possible post-MVP microservice.

---

### 8.4 Database

**Choice:** PostgreSQL.

**Motivation:**

* solid;
* free;
* modern;
* suitable for relational data;
* compatible with `pgvector`;
* suitable for serious and documentable development.

**Planned usage:**

* players;
* campaigns;
* saves;
* characters;
* inventory;
* quests;
* relationships;
* events;
* narrative memory;
* lore;
* world state;
* Rune scripts;
* visual assets.

**Alternatives:**

* structured JSON for prototype;
* SQLite for local MVP;
* PostgreSQL for a serious version;
* PostgreSQL + pgvector for semantic memory.

**Decision:**

* **PostgreSQL** is used from the beginning for structured state.
* **pgvector** is prepared or introduced after the first MVP, when semantic memory is truly needed.
* JSON and SQLite remain useful only for temporary experiments, not as the main direction of the portfolio repository.

This choice avoids a premature migration from temporary storage to a real database and makes the project more credible as a full-stack application.

---

### 8.5 Local AI Engine

**Decision:**
The AI part must prioritize local models.

**Objective:**

* avoid cloud costs;
* maintain control;
* experiment with local LLMs;
* make the game independent from external APIs.

**Models considered:**

* Noromaid 13B GGUF Q4_K_M;
* Mistral;
* other local models for narrative and roleplay;
* possible lightweight models for classification and summaries.

**Possible tools:**

* Ollama;
* LM Studio;
* llama.cpp;
* KoboldCPP;
* Text Generation WebUI.

**Decision:**

For the MVP, the main interface toward local models will be **Ollama**. The specific LLM model remains to be tested, but the technical adapter must be designed around a replaceable local client.

**Approach:**

* create a `LocalLlmClient` or equivalent service in the backend;
* start with a mocked response;
* then replace the mock with an HTTP call to Ollama;
* keep the model interchangeable;
* always treat model output as untrusted for state changes.

**Status:** Ollama confirmed as the MVP local adapter; final narrative model to be tested.

---

### 8.6 Rune Engine

**Description:**
The Rune Engine is the module responsible for managing the divine-magical language Rune.

**Responsibilities:**

* interpret pseudocode input;
* validate syntax;
* check costs and limits;
* transform scripts into game intentions;
* pass effects to the game engine;
* save reusable scripts;
* prevent unauthorized changes to game reality.

**Example technical responsibility:**

```text
Player input:
cast FireBall(target)

Rune Engine:
- checks whether FireBall is a known script;
- checks available resource;
- checks required level;
- calculates effect;
- sends result to the game engine;
- passes the result to the AI for narrative description.
```

**Status:** Confirmed decision as a central module.

---

### 8.7 Lyra Assistant System

**Description:**
Lyra must have a technical counterpart as an assistant integrated into the system.

**Responsibilities:**

* help the player use Rune;
* explain script errors;
* propose alternatives;
* analyze enemies, places, and anomalies;
* retrieve relevant memory;
* act as a bridge between player and system.

**Possible implementation:**

* specialized AI layer;
* dedicated prompt;
* Lyra-specific memory;
* side UI panel;
* suggestion functions;
* analysis functions.

**Status:** Confirmed as a narrative and functional component.

---

### 8.8 Local Image System

**Confirmed decision:**
For image generation, a local pipeline will be used based on:

| Area | Choice | Status |
| --- | --- | --- |
| Base technology | Stable Diffusion / SDXL | Confirmed |
| Main interface | Stable Diffusion WebUI Forge | Confirmed |
| Main model | WAI Illustrious SDXL | Confirmed |
| Secondary model | Pony Diffusion V6 XL | Confirmed |
| Cloud dependency | No mandatory cloud dependency | Confirmed |
| Game integration | Future, not necessary for MVP | Confirmed |

**Initial use:**
Manual or semi-manual creation of visual assets.

**Future use:**
Integration with the software through an asset manager or links to game entities.

---

### 8.9 Memory System

Memory must be divided into multiple levels.

#### Structured State

Contains certain data:

* level;
* stats;
* inventory;
* quests;
* relationships;
* position;
* plot flags;
* world state;
* available Rune scripts;
* unlocked abilities.

#### Narrative Memory

Contains important events:

* promises;
* relevant dialogue;
* moral decisions;
* conflicts;
* political changes;
* memorable events;
* discoveries about Rune;
* important interactions with Lyra.

#### Future Semantic Memory

Allows similar or connected information to be retrieved using embeddings.

**Recommended technology:** PostgreSQL + pgvector.

---

### 8.10 Markdown Export System

The project must maintain internal documentation in Markdown:

* final analysis;
* lore bible;
* narrative design document;
* character sheets;
* roadmap;
* decision log;
* changelog;
* technical architecture;
* AI prompts;
* Rune documentation;
* Lyra documentation.

Markdown is recommended because:

* it is readable;
* it is versionable on Git;
* it is compatible with GitHub;
* it can be exported to PDF;
* it is suitable for technical documentation.

---

### 8.11 Git Integration

Proposed structure:

```text
the-world-i-can-develop/
├── frontend/
├── backend/
├── ai-service/
├── docs/
│   ├── analysis.md
│   ├── lore-bible.md
│   ├── narrative-design.md
│   ├── technical-architecture.md
│   ├── ai-architecture.md
│   ├── rune-system.md
│   ├── lyra-assistant.md
│   ├── roadmap.md
│   └── decisions.md
├── assets/
│   ├── characters/
│   ├── locations/
│   ├── creatures/
│   ├── maps/
│   └── scenes/
├── prompts/
├── README.md
└── CHANGELOG.md
```

---

### 8.12 Claude Code Configuration

This part does not concern the game runtime, but the way the project will be developed. It is important because the work will be followed with an AI developer assistant, without losing control, quality, and understanding of the code.

Planned structure:

```text
.claude/
├── CLAUDE.md
├── settings.json
├── skills/
│   ├── project-brief/
│   ├── micro-phase-planner/
│   ├── english-documentation-writer/
│   ├── angular-rpg-ui/
│   ├── backend-game-engine/
│   ├── local-ai-orchestration/
│   ├── rune-engine-design/
│   ├── lyra-assistant-design/
│   ├── memory-and-world-state/
│   └── portfolio-polish/
├── agents/
│   ├── product-architect.md
│   ├── angular-ui-engineer.md
│   ├── backend-game-engineer.md
│   ├── ai-orchestrator-engineer.md
│   ├── rune-system-engineer.md
│   ├── memory-architect.md
│   ├── qa-test-engineer.md
│   ├── security-privacy-reviewer.md
│   ├── documentation-writer.md
│   ├── github-portfolio-reviewer.md
│   └── learning-coach.md
└── hooks/
    ├── block-dangerous.sh
    ├── secret-scan.sh
    ├── auto-format-after-edit.sh
    ├── test-reminder-after-source-change.sh
    ├── docs-required-reminder.sh
    ├── phase-summary.sh
    └── public-tone-guard.sh
```

#### Main Rule

`CLAUDE.md` must remain short. It must contain only general conventions, build/test commands, and behavior rules. Specific instructions about Rune, Lyra, UI, backend, memory, and documentation must live in the dedicated skills.

#### Planned Skills

| Skill | Purpose |
| --- | --- |
| `project-brief` | Remembers project identity, tone, objectives, and public constraints. |
| `micro-phase-planner` | Breaks every objective into tiny, testable, committable phases. |
| `english-documentation-writer` | Keeps README, docs, and ADRs in professional English. |
| `angular-rpg-ui` | Guides Angular components, services, and UI structure. |
| `backend-game-engine` | Guides APIs, services, validation, and deterministic rules. |
| `local-ai-orchestration` | Guides prompts, Ollama, JSON parsing, and AI output safety. |
| `rune-engine-design` | Guides syntax, costs, validation, and Rune progression. |
| `lyra-assistant-design` | Guides Lyra's personality, role, limits, and memory. |
| `memory-and-world-state` | Guides DB schema, event log, summaries, and pgvector. |
| `portfolio-polish` | Checks README, screenshots, demo, public tone, and recruiter value. |

#### Planned Subagents

| Subagent | Role | Usage |
| --- | --- | --- |
| `product-architect` | Product architect | Defines scope, MVP, and risks. |
| `angular-ui-engineer` | Angular expert | Implements or reviews UI. |
| `backend-game-engineer` | Backend expert | Designs APIs, services, and domain. |
| `ai-orchestrator-engineer` | AI specialist | Designs LLM adapters, prompts, and parsing. |
| `rune-system-engineer` | Language/gameplay designer | Specifies Rune grammar and rules. |
| `memory-architect` | Data architect | Designs PostgreSQL, events, and memory. |
| `qa-test-engineer` | QA | Defines tests and quality. |
| `security-privacy-reviewer` | Security reviewer | Checks secrets, privacy, and risky commands. |
| `documentation-writer` | Technical writer | Writes README, docs, and ADRs. |
| `github-portfolio-reviewer` | Portfolio reviewer | Evaluates recruiter impact. |
| `learning-coach` | Learning coach | Explains each phase and learned concepts. |

#### Planned Hooks

| Hook | Type | Purpose |
| --- | --- | --- |
| `block-dangerous-bash` | Blocking | Blocks `rm -rf`, `git reset --hard`, direct push to main, and destructive commands. |
| `prevent-secret-leaks` | Blocking/Warning | Detects API keys, tokens, or secrets in files. |
| `auto-format-after-edit` | Non-blocking | Runs or reminds formatting for TypeScript, HTML, SCSS, and Java. |
| `test-reminder-after-source-change` | Reminder | Reminds to run tests after source changes. |
| `docs-required-reminder` | Reminder | Reminds to update docs when APIs, rules, Rune, or architecture change. |
| `micro-phase-summary` | Stop hook | Requires a structured summary at the end of a phase. |
| `public-tone-guard` | Warning | Warns if README/docs contain unprofessional terms. |

**Status:** Design area to implement in Phase 1 of the repository.

---

## 9. System Modules

### 9.1 UI Module

**Responsibilities:**

* display narrative text;
* display available actions;
* manage user input;
* display character sheet;
* display inventory;
* display quest log;
* display companions;
* display world state;
* display Rune panel;
* display Lyra panel.

---

### 9.2 Game Engine Module

**Responsibilities:**

* apply game rules;
* validate actions;
* calculate consequences;
* manage combat;
* update stats;
* assign rewards;
* control progression.

---

### 9.3 Rune Engine Module

**Responsibilities:**

* interpret magical pseudocode;
* validate scripts;
* calculate costs;
* check limits;
* manage saved scripts;
* connect Rune to combat, exploration, and world interaction;
* prevent excessive or incoherent modifications.

---

### 9.4 Lyra Module

**Responsibilities:**

* assist the player;
* suggest Rune scripts;
* explain errors;
* analyze world and enemies;
* retrieve relevant memory;
* act as a diegetic tutorial;
* give personality to the AI support system.

---

### 9.5 AI Orchestrator Module

The AI Orchestrator must use a “plan-and-execute” approach: the model generates narrative text and, when needed, a structured change proposal. The backend validates the proposal and applies only permitted operations.

Conceptual format:

```json
{
  "narrative": "The enemy staggers as the Rune ignites.",
  "proposedChanges": [
    { "type": "HP_CHANGE", "targetId": "enemy-001", "amount": -8 },
    { "type": "RESOURCE_CHANGE", "targetId": "player", "resource": "aether", "amount": -3 }
  ]
}
```

The model must never write directly to the database.

**Responsibilities:**

* build prompts;
* retrieve relevant context;
* send requests to the local model;
* receive response;
* validate format;
* separate narrative text from state updates;
* prevent unauthorized arbitrary modifications.

---

### 9.6 Memory Module

**Responsibilities:**

* save events;
* classify information;
* retrieve relevant elements;
* generate periodic summaries;
* distinguish important events from raw chronology;
* support future semantic memory;
* store Rune scripts and Lyra analyses.

---

### 9.7 Quest Module

**Responsibilities:**

* create quests;
* update objectives;
* verify completion;
* assign rewards;
* connect quests to characters, places, Rune, and factions.

---

### 9.8 Character Module

**Responsibilities:**

* manage NPCs;
* manage companions;
* save personalities;
* maintain relationships;
* record important dialogues;
* control narrative coherence.

---

### 9.9 Narrative Romance Module

**Responsibilities:**

* manage affinity;
* manage trust;
* unlock relationship events;
* connect dialogue and choices;
* maintain a mature and elegant tone;
* enhance character-driven storytelling.

---

### 9.10 Inventory Module

**Responsibilities:**

* save items;
* manage equipment;
* manage consumables;
* connect items to quests;
* apply effects;
* manage items linked to Rune.

---

### 9.11 World Module

**Responsibilities:**

* manage places;
* manage factions;
* manage global events;
* save consequences;
* maintain lore and continuity;
* manage anomalies or deep structures connected to Rune.

---

### 9.12 Visual Asset Module

**Responsibilities:**

* organize generated images;
* associate assets with characters, places, and scenes;
* avoid duplicates;
* maintain organized naming;
* prepare future integration into the game.

---

### 9.13 Documentation Module

**Responsibilities:**

* generate Markdown;
* maintain technical analysis;
* maintain lore bible;
* maintain roadmap;
* maintain decision log;
* maintain GitHub documentation;
* document Rune, Lyra, and the image pipeline.

---

## 10. Project Information Management

The project must clearly distinguish between different categories of information.

### 10.1 Confirmed Decisions

These are choices considered valid until a new change is made.

Examples:

* text-based fantasy RPG;
* AI-driven approach;
* local-first execution;
* UI more complex than a chat;
* persistent memory;
* game name: **The World I Can Develop**;
* internal/project name: **Demon King**;
* goddess power: **Rune**;
* divine AI agent: **Lyra**;
* Stable Diffusion / SDXL for images;
* Forge as image interface;
* WAI Illustrious SDXL as main model;
* Pony Diffusion V6 XL as secondary model;
* mature, romantic, and elegant tone;
* professional public documentation.

* final repository development in English;
* Angular + TypeScript frontend for MVP;
* Spring Boot + Java 17/21 backend for MVP;
* PostgreSQL as main database;
* Ollama as local LLM adapter;
* Docker Compose as local environment;
* FastAPI postponed as a possible future microservice;
* development through micro-phases;
* Claude Code with skills, subagents, and hooks as a development support system.

---

### 10.2 Assumptions

These are possible solutions but not yet final.

Examples:

* concrete use of pgvector in the first phases or only post-MVP;
* FastAPI as a possible future AI microservice;
* Noromaid as the main narrative model;
* hybrid Java + Python architecture;
* future Rune editor.

---

### 10.3 Open Questions

These are points that still require a concrete choice or technical test.

Examples:

* main LLM model to use through Ollama;
* possible separate model for summaries, memory, or classification;
* exact moment to introduce pgvector;
* resource consumed by Rune;
* precise autonomy of Lyra;
* Rune Engine complexity level in the MVP;
* multi-save support;
* direct integration of the image pipeline;
* final style of the public README.

---

### 10.4 Problems to Solve

Examples:

* long-term narrative coherence;
* memory management without saturating context;
* separation between AI and deterministic rules;
* validation of Rune scripts;
* balancing the protagonist's power;
* Lyra's autonomy;
* maintaining narrative quality;
* avoiding contradictory output;
* keeping the GitHub project presentable.

---

### 10.5 Future Features

Examples:

* images integrated into the software;
* map generation;
* visual lore editor;
* Rune editor;
* voice acting;
* multiple models;
* multi-campaign support;
* PDF export;
* asset manager;
* advanced semantic memory.

---

## 11. Final Markdown Document Format

The project must maintain clear and versionable Markdown documentation.

### 11.1 Proposed Documents

```text
docs/
├── analysis.md
├── project-vision.md
├── mvp-scope.md
├── lore-bible.md
├── narrative-design-document.md
├── technical-architecture.md
├── gameplay-systems.md
├── ai-architecture.md
├── memory-system.md
├── rune-system.md
├── lyra-assistant.md
├── image-generation-pipeline.md
├── development-roadmap.md
├── learning-path.md
├── decisions.md
├── open-questions.md
└── adr/
    ├── 0001-architecture-style.md
    ├── 0002-local-ai-strategy.md
    ├── 0003-state-management-boundaries.md
    └── 0004-rune-engine-boundaries.md
```

---

### 11.2 Recommended Document Structure

Each document should use:

* clear titles;
* consistent subtitles;
* tables for decisions;
* checklists for tasks;
* TODO sections;
* “To be confirmed” sections;
* “Final decision” sections;
* technical examples when useful.

---

### 11.3 Example Decision Table

| Area | Decision | Status |
| --- | --- | --- |
| Game name | The World I Can Develop | Confirmed |
| Internal name | Demon King | Confirmed |
| Game type | AI-driven text-based fantasy RPG | Confirmed |
| Protagonist power | Rune | Confirmed |
| Divine AI agent | Lyra | Confirmed |
| AI | Local models | Confirmed |
| LLM adapter | Ollama | Confirmed |
| Dev environment | Docker Compose | Confirmed |
| Repository language | English | Confirmed |
| Images | Local Stable Diffusion / SDXL | Confirmed |
| Frontend | Angular + TypeScript | Confirmed |
| Backend | Spring Boot + Java 17/21 | Confirmed |
| Database | PostgreSQL | Confirmed |

---

## 12. Operational Workflow

### 12.1 Design Workflow

1. Collect requirements.
2. Separate decisions from assumptions.
3. Define the MVP.
4. Write technical analysis.
5. Write lore bible.
6. Define architecture.
7. Define database.
8. Define Rune system.
9. Define Lyra.
10. Define AI prompts.
11. Define UI.
12. Start development.

---

### 12.2 Gameplay Workflow

1. Game start.
2. Protagonist creation.
3. Narrative introduction.
4. Encounter with the goddess.
5. Gift of Rune.
6. Activation of Lyra.
7. First player choice.
8. AI response generation.
9. State validation.
10. Game update.
11. Save.
12. Continue adventure.

---

### 12.3 Development Workflow

1. Create Git repository.
2. Create project structure.
3. Set up frontend.
4. Set up backend.
5. Set up local model.
6. First AI communication API.
7. First narrative screen.
8. Basic state saving.
9. Character sheet.
10. Basic inventory.
11. Basic quest log.
12. First version of Rune.
13. First version of Lyra.
14. Basic companion.
15. Persistent memory.
16. Documentation.
17. Refactoring.
18. MVP version.

---

### 12.4 Visual Asset Workflow

1. Define character, place, or scene.
2. Write base prompt.
3. Generate image in Forge.
4. Use WAI Illustrious SDXL as the main model.
5. Use Pony Diffusion V6 XL for alternatives.
6. Save asset in an organized folder.
7. Associate asset with a game entity.
8. Document prompt, model, and useful notes.

---

### 12.5 Development Workflow with Claude Code

1. Open or create a micro-phase.
2. Use `micro-phase-planner` to define objective, files, tests, docs, and commit.
3. Work on a small and verifiable change.
4. Use specialist subagents only when specific expertise is needed.
5. Run tests or at least relevant syntax checks.
6. Update linked documentation.
7. Write the phase summary.
8. Commit with an imperative and descriptive English message.

---

### 12.6 Testing Workflow

1. For every new deterministic rule, define at least one test.
2. For every critical endpoint, add API tests.
3. For the frontend, test main services and components.
4. For Rune, test valid syntax, invalid syntax, cost, minimum level, and edge cases.
5. For the AI Orchestrator, test that invalid output is ignored or rejected.
6. Before closing a phase, run the smallest and most relevant test.

---

### 12.7 Defined Git Workflow

1. Work on a dedicated branch for the phase, for example `phase-03-backend-shell`.
2. Avoid direct pushes to `main`.
3. Create small and readable commits.
4. Use English messages, for example `Add health endpoint`.
5. Update `CHANGELOG.md` only for significant milestones.
6. Simulate a pull request even if the project is personal.
7. Use the portfolio reviewer before making the repository public.

---

## 13. Development Roadmap

### 13.1 Operational Micro-Phase Roadmap

The macro roadmap is broken down into very small micro-phases focused on repository quality, learning, and verification. Each phase must be understandable, testable, and committable without creating overly large blocks.

| Micro-phase | Title | Objective | Output | Suggested commit |
| --- | --- | --- | --- | --- |
| 0 | Repository Skeleton | Create base repository structure. | `frontend/`, `backend/`, `docs/`, `.claude/`, README, ROADMAP. | `Init repo structure and base docs` |
| 1 | Claude Code Configuration | Create `CLAUDE.md`, skills, agents, and hook placeholders. | AI developer assistant configuration. | `Add initial Claude Code config` |
| 2 | Frontend Shell | Initialize Angular and static layout. | Placeholder components for RPG UI. | `Set up Angular app shell` |
| 3 | Backend Shell | Initialize Spring Boot with `/health`. | Runnable backend and minimum test. | `Initialize Spring Boot backend with health endpoint` |
| 4 | Dev Environment | Add Docker Compose with PostgreSQL/pgvector. | Coherent local environment. | `Add Docker Compose with PostgreSQL and pgvector` |
| 5 | Initial Game Models | Create minimum `Player`, `Campaign`, `SaveGame`, `Character` entities. | Initial data model. | `Create foundational game state entities` |
| 6 | New Game Loop | Implement `/game/start` and protagonist name form. | First end-to-end UI → backend → DB call. | `Implement new game creation` |
| 7 | Narrative Panel | Show static narrative intro. | First working narrative panel. | `Add static intro narrative endpoint` |
| 8 | LLM Adapter Mocked | Create mocked LLM client. | Adapter ready before calling Ollama. | `Stub out LLM client service` |
| 9 | Narrative Orchestration | Connect player action to mocked narrative. | Action → narrative loop. | `Hook up LLM client to produce narrative` |
| 10 | State Mutation Enforcement | Validate AI proposals before applying state. | Effective AI/rules separation. | `Add state validation for planned changes` |
| 11 | Rune MVP | Minimal Rune parser/validator. | `/rune/validate` endpoint. | `Implement basic Rune parsing and validation` |
| 12 | Lyra MVP | Lyra assistance for Rune errors. | Basic Lyra panel/response. | `Add Lyra assistant response for Rune guidance` |

Each micro-phase must include: objective, modified files, tests, defined documentation, learned concepts, and commit message.

---

### Phase 1 — Project Preparation

**Objective:** create the organizational and documentation base.

Tasks:

* confirm the public name **The World I Can Develop**;
* keep **Demon King** as the internal/project name;
* create Git repository;
* create README;
* create `docs` folder;
* add initial technical analysis;
* define roadmap;
* define final stack;
* define MVP.

Output:

* initial repository;
* base documentation;
* clear roadmap.

---

### Phase 2 — Basic Text MVP

**Objective:** create a first playable version.

Features:

* start screen;
* protagonist name request;
* narrative introduction generation;
* communication with local LLM;
* text panel;
* action input;
* basic state saving;
* minimal character sheet.

Output:

* first playable loop;
* working local AI;
* simple saving.

---

### Phase 3 — Basic Rune System

**Objective:** introduce the game's distinctive mechanic.

Features:

* Rune panel;
* pseudocode input;
* basic validation;
* simple elemental scripts;
* resource consumption;
* narrative description of the effect;
* basic script saving.

Output:

* first programmable magic system;
* unique game identity.

---

### Phase 4 — Basic Lyra

**Objective:** introduce the divine AI agent.

Features:

* Lyra panel;
* basic suggestions;
* explanation of Rune errors;
* simple analysis of objects or enemies;
* diegetic tutorial.

Output:

* assistant integrated into the world;
* player support.

---

### Phase 5 — Structured RPG UI

**Objective:** move beyond the “simple chat” model.

Features:

* inventory;
* quest log;
* character sheet;
* companion panel;
* current location panel;
* event history;
* Rune panel;
* Lyra panel.

Output:

* text RPG interface;
* better readability;
* more professional experience.

---

### Phase 6 — Basic Game Engine

**Objective:** separate rules and narrative.

Features:

* stats;
* experience;
* levels;
* items;
* basic combat;
* rewards;
* action validation;
* Rune validation.

Output:

* functioning RPG system;
* AI used for narrative, not arbitrary calculations.

---

### Phase 7 — Persistent Memory

**Objective:** make the game truly continuous.

Features:

* saving important events;
* retrieving past information;
* narrative summaries;
* world state;
* character relationships;
* persistent quests;
* persistent Rune scripts;
* Lyra memory.

Output:

* narrative continuity;
* characters that remember events;
* fewer contradictions.

---

### Phase 8 — Companion and Romance System

**Objective:** add relationship depth.

Features:

* recruitable companions;
* affinity;
* trust;
* personal dialogue;
* companion quests;
* relationship paths;
* reactions to player choices.

Output:

* narratively alive party;
* deeper relationships;
* greater engagement.

---

### Phase 9 — Advanced Worldbuilding

**Objective:** integrate lore bible and persistent world.

Features:

* factions;
* races;
* gods;
* politics;
* territories;
* cities;
* dungeons;
* global events;
* anomalies linked to Rune.

Output:

* coherent setting;
* less generic narrative;
* expansion possibilities.

---

### Phase 10 — Local Visual Assets

**Objective:** create visual support without overloading the MVP.

Features:

* character images;
* location images;
* maps;
* reusable assets;
* image-entity association;
* generation through Forge;
* use of WAI Illustrious SDXL and Pony Diffusion V6 XL.

Output:

* more immersive game;
* visual assets ready for future integration.

---

### Phase 11 — Image Integration into the Software

**Objective:** connect visual assets to the game.

Features:

* asset viewer;
* character-image association;
* location-image association;
* image cache;
* internal asset manager.

Output:

* semi-integrated visual experience;
* organized image management.

---

### Phase 12 — Portfolio Polish

**Objective:** make the project presentable.

Features:

* professional README;
* screenshots;
* demo;
* architectural documentation;
* clear local setup;
* GitHub issues and milestones;
* clean description of narrative romance;
* technical description of Rune and Lyra.

Output:

* portfolio project;
* readable repository;
* professional value.

---

## 14. Risks and Critical Issues

### 14.1 Loss of Narrative Coherence

**Risk:**
The AI may forget events, contradict characters, or modify lore.

**Solution:**

* use structured memory;
* save important events;
* retrieve only relevant context;
* create a canonical lore bible;
* use backend validation.

---

### 14.2 AI Too Free

**Risk:**
The model may assign items, modify characters, or change the world without control.

**Solution:**

* separate narrative and state;
* use structured outputs;
* let the backend decide final changes;
* use deterministic rules.

---

### 14.3 Rune Too Powerful

**Risk:**
The Rune power may make the protagonist too free and break balance.

**Solution:**

* introduce progressive limits;
* use resources and cooldowns;
* validate scripts;
* block overly advanced instructions;
* link powers to level, knowledge, and narrative.

---

### 14.4 Lyra Too Solving-Oriented

**Risk:**
Lyra may become too autonomous and remove player agency.

**Solution:**

* make her act as a guide, not as a substitute for the player;
* limit overly explicit suggestions;
* define intervention levels;
* let Lyra evolve gradually.

---

### 14.5 Project Too Large

**Risk:**
The project may become too ambitious.

**Solution:**

* define a small MVP;
* develop in phases;
* postpone integrated images;
* postpone advanced systems;
* use Git and roadmap.

---

### 14.6 Heavy Image Generation

**Risk:**
Local image models may require a lot of VRAM and slow down the work.

**Solution:**

* do not include image generation in MVP gameplay;
* use Forge separately;
* generate assets manually;
* do not load multiple models simultaneously;
* use cache and asset library.

---

### 14.7 Public Presentability

**Risk:**
A mature fantasy and romance project could be communicated poorly in a GitHub/CV context.

**Solution:**

* maintain a professional tone;
* talk about narrative romance;
* describe the project as an AI Narrative RPG;
* focus the README on architecture, local AI, game design, and memory;
* separate private notes from public documentation.

---

### 14.8 Complex Memory Management

**Risk:**
Saving everything can make the system slow, confusing, and hard to manage.

**Solution:**

* classify events by importance;
* generate summaries;
* use semantic memory only when needed;
* separate chronology, state, and lore.

---

### 14.9 Backend and AI Complexity

**Risk:**
The integration between backend, local AI, memory, and game rules may become more complex than necessary.

**Solution:**

* keep Spring Boot as the main MVP backend;
* use a simple and replaceable LLM adapter;
* start with mocked responses before connecting Ollama;
* introduce FastAPI only if a real technical need appears;
* avoid microservices until the project has a first playable loop.

---

### 14.10 Hardware and AI Performance

**Risk:**
Models that are too large may not run well locally.

**Solution:**

* choose quantized models;
* test 7B/8B/13B models;
* use only one model at a time;
* provide a lighter fallback;
* optimize prompts and context.

---

### 14.11 Scope Creep from AI Project

**Risk:**
The project may expand too quickly because every new AI, narrative, or visual idea seems interesting.

**Solution:**

* follow the micro-phase roadmap;
* do not introduce advanced systems before the MVP loop;
* use `product-architect` to control scope;
* move dynamic assets, semantic memory, and advanced companions to post-MVP.

---

### 14.12 Fragility of Hooks, Skills, and Subagents

**Risk:**
The Claude Code configuration may become complex, fragile, or excessive compared to the real state of the project.

**Solution:**

* keep `CLAUDE.md` short;
* document every skill and hook;
* introduce hooks gradually;
* do not use subagents as replacements for human control;
* test hooks with simple cases.

---

### 14.13 Model Context Limits

**Risk:**
In the long run, narrative history may become too large to send entirely to the model.

**Solution:**

* separate structured state, event log, and summaries;
* use selective context retrieval;
* generate periodic summaries;
* introduce pgvector only when truly needed;
* keep prompts short and versioned.

---

## 15. Decisions Already Made

| Area | Decision | Status |
| --- | --- | --- |
| Game name | The World I Can Develop | Confirmed |
| Internal/project name | Demon King | Confirmed |
| Project type | Text-based fantasy RPG video game | Confirmed |
| Approach | AI-driven | Confirmed |
| Execution | Local-first | Confirmed |
| Tone | Epic, fantasy, mature, romantic, and elegant | Confirmed |
| Public presentation | Professional language suitable for GitHub/CV | Confirmed |
| Protagonist | Name chosen by the player at the beginning | Confirmed |
| UI | More complex than a simple chat | Confirmed |
| Goddess power | Divine-magical language based on pseudocode | Confirmed |
| Language name | Rune | Confirmed |
| Divine AI agent | Lyra | Confirmed |
| Mechanical identity | The protagonist can develop/modify the world through Rune | Confirmed |
| Programming touch | Integrated into magic and gameplay | Confirmed |
| AI | Preference for local models | Confirmed |
| LLM adapter | Ollama | Confirmed |
| Local environment | Docker Compose | Confirmed |
| Repository technical language | English for code, docs, README, and commits | Confirmed |
| Cloud | No mandatory dependency on cloud services in the first version | Confirmed |
| Memory | Persistent memory required | Confirmed |
| Companion | Deep companion system | Confirmed |
| Romance | Narrative relationship system | Confirmed |
| Git | Project to be managed and published on Git | Confirmed |
| Portfolio | The project must be clean and presentable | Confirmed |
| Lore | Needs lore bible/world manual | Confirmed |
| Rules | AI must not arbitrarily manage state | Confirmed |
| Image generation | Local solution based on Stable Diffusion / SDXL | Confirmed |
| Image interface | Stable Diffusion WebUI Forge | Confirmed |
| Main image model | WAI Illustrious SDXL | Confirmed |
| Secondary image model | Pony Diffusion V6 XL | Confirmed |
| Image cloud | No mandatory cloud dependency | Confirmed |
| Image integration into game | Future, not necessary for MVP | Confirmed |
| Database | PostgreSQL through Docker Compose | Confirmed |
| Vector layer | pgvector prepared/post-MVP for semantic memory | Planned |
| Frontend | Angular + TypeScript | Confirmed |
| Backend | Spring Boot + Java 17/21 for MVP; FastAPI only as future optional service | Confirmed |
| LLM model | Local model through Ollama | To be tested |

---

## 16. Open Questions

The main MVP choices are fixed: Angular for the frontend, Spring Boot for the backend, PostgreSQL for the database, Ollama for the local LLM, and Docker Compose for the development environment. The remaining open points require practical testing, balancing, or a more precise design decision.

1. Which local LLM model should actually be used through Ollama for narrative, dialogue, and Lyra?
2. Will Noromaid be suitable as the main narrative model, or will a different model be needed?
3. Is a separate model needed for summaries, memory, or classification?
4. Should pgvector only be prepared in the database or used already in an early micro-phase?
5. Will memory start from simple CRUD, an append-only event log, or a hybrid approach?
6. Will Angular use services/RxJS/signals or a more structured state manager?
7. What will the minimum Rune syntax be in the MVP?
8. Which resource will Rune consume: mana, Aether, stability, divine energy, or computational complexity?
9. How free should the player be when writing Rune pseudocode?
10. Will Rune use free syntax, predefined commands, or a compromise between the two?
11. How proactive should Lyra be without removing player agency?
12. Will Lyra have an evolving personality?
13. Does combat enter the very first MVP or immediately after the narrative loop + Rune?
14. Will the romance system be part of the MVP or a later phase?
15. Will the system support multiple games or multiple campaigns?
16. When should Forge or the SDXL pipeline be technically integrated into the software?
17. Will generated assets be managed manually or through an internal asset manager?
18. Will custom LoRA models be created for companions, protagonist, gods, and visual style?
19. Will the repository be public from the beginning or only after the first presentable demo?
20. How should the final README be structured to maximize portfolio value?
21. How should saves, rollbacks, and game-state versions be managed?
22. How deterministic should the game engine be compared to the narrative freedom of the AI?

---

## 17. Future Features

### 17.1 Local Image Pipeline Integration

In the future, the project may directly or indirectly integrate the local pipeline based on Stable Diffusion / SDXL.

The chosen solution includes:

* Stable Diffusion WebUI Forge as the main interface;
* WAI Illustrious SDXL as the main model;
* Pony Diffusion V6 XL as the secondary model;
* use of LoRA for characters, style, and visual consistency;
* saving and reuse of generated assets.

---

### 17.2 Asset Manager

Internal system to:

* load images;
* associate images with characters;
* associate images with places;
* search assets;
* avoid duplicates;
* manage alternative versions.

---

### 17.3 Rune Editor

Interface to:

* write scripts;
* save them;
* test them;
* fix them;
* display errors;
* see cost and requirements;
* create spell libraries.

---

### 17.4 Lore Editor

Interface to modify:

* races;
* gods;
* places;
* cities;
* characters;
* factions;
* historical events.

---

### 17.5 Quest Editor

Visual system to create and modify quests.

---

### 17.6 Multi-Campaign System

Support for multiple saves, multiple campaigns, and multiple protagonists.

---

### 17.7 Game Master Mode

Mode to control the world, correct events, modify characters, and force narrative developments.

---

### 17.8 PDF Generation

Export of:

* lore bible;
* character sheet;
* game chronology;
* technical documentation;
* world manual;
* Rune documentation.

---

### 17.9 Multiple AI Models

Use of different models for:

* narrative;
* dialogue;
* memory;
* classification;
* combat;
* summaries;
* Lyra suggestions;
* image generation.

---

### 17.10 Voice Acting

Possible future integration with local TTS to read dialogue and narration.

---

### 17.11 Interactive Map

World map with:

* cities;
* regions;
* dungeons;
* factions;
* controlled territories;
* visited places;
* anomalies detected by Rune.

---

### 17.12 Dynamic Political System

Factions, kingdoms, and gods could react to the player's actions.

---

### 17.13 Reputation System

The player could have different reputation levels with:

* cities;
* factions;
* races;
* companions;
* gods;
* guilds.

---

### 17.14 CI and Automatic Quality

In the future, the repository may include GitHub Actions pipelines for:

* frontend build;
* backend tests;
* TypeScript linting;
* formatting checks;
* documentation verification;
* basic secret scanning.

---

### 17.15 Devcontainer or Reproducible Setup

To improve portability and professional presentation, a devcontainer or setup script may be added to prepare frontend, backend, database, and Ollama environment in a more guided way.

---

## 18. Conclusion

**The World I Can Develop** has a clear design direction: a local-first, AI-driven, text-based fantasy RPG built around a recognizable core mechanic. The protagonist receives **Rune** from the goddess, a divine-magical language based on pseudocode, and is supported by **Lyra**, a divine AI agent capable of interpreting the world, suggesting scripts, analyzing anomalies, and supporting the player.

The strength of the project lies in combining fantasy, programming, AI narrative, RPG progression, and worldbuilding into a personal formula that can still be presented professionally.

The technical direction of the MVP is defined:

* **Angular + TypeScript** for the frontend;
* **Spring Boot + Java 17/21** for the main backend;
* **PostgreSQL** as the structured database;
* **pgvector** as an evolution for semantic memory;
* **Ollama** as the local LLM adapter;
* **Docker Compose** for local environment;
* **FastAPI** only as a future optional microservice;
* **Stable Diffusion / SDXL** through Forge for local visual assets;
* development divided into testable, documented, and committable micro-phases;
* final repository in English and portfolio-oriented.

The first version must remain focused on a solid MVP:

* game start;
* protagonist name choice;
* narrative introduction;
* gift of Rune;
* introduction of Lyra;
* local AI;
* persistent state;
* character sheet;
* basic inventory;
* basic quest log;
* UI more structured than a chat.

Deep companion system, narrative romance, semantic memory, advanced combat, asset manager, and image integration should be introduced later, once the main loop is already working.

The project has value both as a personal experience and as a technical portfolio, provided that it remains organized, documented, verifiable, and presented with professional language.

The next step is to turn this analysis into an executable roadmap with small and organized Git commits, starting from the repository structure, README, and first playable MVP.
