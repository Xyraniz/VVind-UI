# Changelog

## 2.12.0 — 2026-11-07

### Added

- Added Tab:AddAssetGrid for reusable image asset preview selection, including responsive grid columns, selectable thumbnails, text-only presets, dynamic options, selection callbacks and automatic flag persistence.
- Added declarative AssetGrid/ImageGrid controls, API documentation and a demo background selector.


## 2.11.1 — 2026-11-06

### Fixed

- Removed on-screen dragging limits for floating toggle bubbles. Bubbles can now be dragged completely beyond the viewport in the current session, while state/keybind lists keep their original bounded dragging behavior.
- Bubble positions are not automatically saved or restored between executions; their initial placement continues to use the caller-provided Position option or the library default.

## 2.11.0 — 2026-11-06

### Added

- Introduced configurable GUI root placement with RootMode = Auto, PlayerGui, or Hidden. Supports pre-load __VVindUI_Options, SetRootMode, and CreateWindow RootMode without modifying source text.
- Added stable localization keys with BindLocale and LocalizeControl, plus NameKey, TextKey, TitleKey, DescriptionKey, and dropdown LabelKey support across tabs, subtabs, section headings, paragraphs, labels, cards and standard controls.
- Added ResetConfiguration and GetInitialValue. Defaults are captured before auto-config restoration; resets support optional named-profile deletion and callback synchronization.
- Added generic, reusable floating toggle bubbles through CreateBubbleToggle on UI and windows, featuring icon/asset ID, active/inactive colors, size, position, dragging, standalone callbacks, flag binding, and runtime setters.
- Added event-driven CreateStateList and CreateKeybindList with configurable backgrounds, status colors, width, position, collapsible drag header, dynamic items, manual states, and flag/keybind synchronization.
- Added extensible Confirm dialogs with Identity profiles, Avatar asset or Roblox UserId thumbnails, Username, Subtitle and custom Content builders/instances.
- Added declarative Tab:AddControl and Tab:AddControls for native control construction, including legacy-friendly field aliases.
- Added EnabledWhen conditions (flag, Equals, Not, All, Any, or predicate) to standard controls, with BindEnabledWhen and optional OnEnabledChanged.
- Added managed resource scopes through UI:CreateScope and Window:CreateScope. Scopes handle connections, Instances, tasks, callbacks and disposable objects, and follow the selected ownership lifecycle.

### Changed

- Floating widgets share one input/drag controller and subscribe to control and config events instead of polling Heartbeat.
- Localization recalculates affected description layouts and keeps explicit keys stable when descendant tracking runs.
- Existing control APIs, window behavior, configuration formats, and the automatic GUI parent selection remain backward compatible.
- Expanded README with public integration examples for all new APIs; updated the version to 2.11.0.

### Fixed

- Cancelled stale pending auto-save and delayed auto-config-loaded notifications when resetting settings.
- Corrected dependent-control evaluation for false and nil values and cleaned up dependency guards when controls are destroyed.
- Preserved false defaults in declarative controls and stable insertion order for dynamically managed state-list items.
- Kept floating widgets synchronized when flags change silently, on config loads, or when flags are registered after the widget.


## 2.10.0 — 2026-10-20

- Added `Window:OnDestroy`, which fires once on close or programmatic destruction and stays silent on minimize.
- Added live theme updates, custom window backgrounds, image and panel transparency controls, richer labels and paragraphs, collapsible sections, and section columns.
- Expanded dropdowns with separate option labels and values, search, and selection preservation when options change.
- Added validated custom config flags, config completion events, source metadata, public value access, and silent config application with a final synchronization event.
- Made the mobile toggle button configurable for size, image, starting position, and dragging.
- Expanded keybinds to keyboard and gamepad keys plus mouse buttons 1–3, with `Press`, `Toggle`, `Hold`, and `Always` modes, toggle links, contexts, conflict reporting, runtime controls, and full config persistence.
- Fixed window background rendering so rounded outer corners stay visible over custom images.
