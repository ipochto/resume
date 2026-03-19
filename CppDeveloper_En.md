# Alexey Alyokhin

## Contacts
+7(964)890-05-94  
av.alyokhin@yandex.ru  
[github.com/ipochto](https://github.com/ipochto)  

---

## Summary

C++ developer focused on resource-constrained systems, with hands-on experience in RTS (real-time strategy) engine development.

Background in industrial real-time systems (automation/SCADA), including software development, system design, and engineering team leadership. This experience shaped a strong systems mindset, focus on reliability, and deep engineering approach to problem solving.

Core team contributor to Stratagus/Wargus engine: implemented key gameplay systems (visibility, fog of war, terrain elevation, auto-targeting), optimized performance-critical code, and worked with a legacy codebase under strict backward compatibility constraints.

Designed and implemented a sandboxed Lua environment with memory/time/filesystem limits and API access control.

Experienced in cross-platform build systems and dependency integration (`CMake`, CI, `GCC`/`Clang`/`MSVC`).

---

## Skills

### Core / Systems
- C++17/20 (STL, RAII, templates)
- Performance optimization, cache-aware/heap-free algorithms
- Large-scale and legacy codebases

### Game Engine Development
- RTS mechanics
- Visibility, targeting, gameplay systems
- Editor tooling and asset pipelines
- Backward compatibility in evolving engine architecture

### Scripting
- Lua / `sol2` integration
- Sandboxed execution (memory/time limits, restricted APIs)

### Build & Infrastructure
- Git/GitHub (code review, PR workflow, history management, open-source collaboration)
- CMake (dependency management, debugging)
- Cross-platform builds (Linux / Windows / macOS)
- CI/CD (GitHub Actions)
- Linux (build, profiling, dependency management, AUR package maintenance)

### Other
- Profiling & performance analysis (`perf`, `flamegraph`)
- Testing (`doctest`)
- Multithreading (`OpenMP`)
- `SDL2` (2D rendering)

---

## Experience

### 1. Stratagus | Wargus | War1gus (2020–2025)
[Stratagus (GitHub)](https://github.com/Wargus/stratagus)  
[Wargus (GitHub)](https://github.com/Wargus/wargus)  
[War1gus (GitHub)](https://github.com/Wargus/war1gus)  

Worked on an RTS engine with a large legacy codebase and strict constraints:

- single-threaded architecture  
- performance-sensitive environment  
- strict backward compatibility across multiple derivative projects  

Core team member since 2023.  

70+ PRs:

- Stratagus: [closed PRs by author](https://github.com/Wargus/stratagus/pulls?q=is%3Apr+author%3Aipochto+is%3Aclosed)  
- Wargus: [closed PRs by author](https://github.com/Wargus/wargus/pulls?q=is%3Apr+is%3Aclosed+author%3Aipochto)  
- War1gus: [closed PRs by author](https://github.com/Wargus/war1gus/pulls?q=is%3Apr+is%3Aclosed+author%3Aipochto)  

---

#### Field of View / Fog of War

Designed and implemented a visibility system:

- line-of-sight (LOS) blocking via tiles and elevation  
- raster-based FOW rendering (smoothing, interpolation)  
- performance optimization and partial parallelization (`OpenMP`)  
- frame-distributed computation  
- deterministic multiplayer behavior  

PRs:

- [Stratagus PR #330](https://github.com/Wargus/stratagus/pull/330)  
- [Wargus PR #359](https://github.com/Wargus/wargus/pull/359)  
- [War1gus PR #185](https://github.com/Wargus/war1gus/pull/185)  

(150+ commits, ~4100 LOC changed)

---

#### Highground System / Tileset Generator

Cross-cutting system affecting multiple subsystems:

- introduced terrain elevation  
- impact on rendering, visibility, path-finding, editor, gameplay  
- extended tileset format  
- designed DSL and asset generator  

PRs:

- [Stratagus PR #418](https://github.com/Wargus/stratagus/pull/418)  
- [Wargus PR #446](https://github.com/Wargus/wargus/pull/446)  

(170+ commits, ~5800+ LOC changed)

Additional:

- Architecture and DSL are documented in:  
  [Wiki: Highgrounds support](https://github.com/Wargus/stratagus/wiki/Highgrounds-support)

---

#### Editor Brushes System

- Lua-configurable editor tools  
- procedural generation of multi-tile decorations 
- UI integration  

PR:

- [Stratagus PR #732](https://github.com/Wargus/stratagus/pull/732)
- [Wargus PR #488](https://github.com/Wargus/wargus/pull/488) 

(90+ commits, ~5800 LOC changed)

Additional:

- Authored documentation for creating and using brushes:  
  [Wiki: Editor Brushes](https://github.com/Wargus/stratagus/wiki/Editor:-Brushes)

---

#### Automatic Targeting

- reworked targeting algorithm  
- prioritization, dynamic switching, repositioning  
- RTS-like behavior  

PR:

- [Stratagus PR #271](https://github.com/Wargus/stratagus/pull/271)  

---

### 2. Sandboxed Lua Runtime (2026)
[luaSandboxes (GitHub)](https://github.com/ipochto/luaSandboxes)  

Library for safe execution of untrusted Lua scripts:

- multiple isolated environments per Lua state  
- memory limits via custom allocator  
- execution time limits  
- API restriction and filesystem access control  
- safe replacements for standard library functions  

Infrastructure:

- CMake integration  
- CI (Linux/Windows, `GCC`/`Clang`/`MSVC`)  

Additional:

- Authored a technical article series describing the architecture (Habr):  
  [Habr: articles](https://habr.com/ru/users/alyokhin/articles)

---

### 3. Akhenaten TTS Tool (2026)
[akhenaten-tts (GitHub)](https://github.com/ipochto/akhenaten-tts)  

CLI tool for speech generation:

- integrated Piper TTS and espeak-ng  
- cross-platform build and dependency fixes  
- designed text → synthesis → streaming pipeline  
- used sandboxed Lua for configuration  

---

## Professional Background

### Industrial Automation (2004–2025)

Development and deployment of real-time industrial systems:

- PLC and SCADA software development  
- systems with strict reliability and determinism requirements  
- optimization for constrained environments  
- hardware/software integration  

Since 2013:

- engineering team leadership  
- architecture and implementation oversight  
- full lifecycle: design → development → deployment  

Result:

strong systems mindset and engineering approach to problem solving.

---

## Open Source Contributions

- Contribution to CMake (merge request):  
  [CMake MR !10635](https://gitlab.kitware.com/cmake/cmake/-/merge_requests/10635)  

- Maintainer of packages in Arch Linux AUR:  
  [AUR: ipochto packages](https://aur.archlinux.org/packages?O=0&SeB=m&K=ipochto)  
  (build, maintenance, dependency management)

---
