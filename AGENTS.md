# LuckyMe Agent Guide

## Project

- iOS app built with SwiftUI in Xcode.
- Prefer Xcode-integrated tools for reading files, diagnostics, previews, and builds.

## Working Rules

- Keep changes narrowly scoped to the user request.
- Preserve existing SwiftUI patterns unless a change requires restructuring.
- Do not rename files, move files, or remove code unless it is necessary for the requested fix.
- Prefer small, reviewable edits over broad rewrites.

## Build And Verify

- After Swift code changes, verify with Xcode diagnostics for the edited file.
- When the change affects navigation, app startup, or shared types, run a full project build.

## App Structure

- Main app entry point: `LuckyMe/LuckyMe/StartApp.swift`
- Main screen: `LuckyMe/LuckyMe/Views/MainView.swift`
- Settings screen: `LuckyMe/LuckyMe/Views/SettingsView.swift`

## Swift Style

- Use `@State private var` for view-owned state when possible.
- Avoid force unwraps.
- Keep naming consistent with existing PascalCase types and camelCase properties.
- Add comments only when logic is not obvious from the code.
