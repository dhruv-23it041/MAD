# TATA GST Billing App

A Flutter-based GST billing solution for TATA Retail, supporting offline sales, GST breakdown, and branded UI.

## Features
- GST calculation (5%, 12%, 18%, 28%)
- SQLite offline sales record
- Branded Material Design
- Sales history & invoice detail
- Provider state management

## Getting Started
1. Install Flutter: https://docs.flutter.dev/get-started/install
2. Run `flutter pub get`
3. Run the app: `flutter run`

## Folder Structure
- `lib/core/` - App-wide logic, constants, theme
- `lib/data/` - Models, database, repositories
- `lib/providers/` - State management
- `lib/ui/` - Screens & widgets
- `assets/` - Images & fonts
- `test/` - Unit tests

## Developer Notes
- Add your TATA logo to `assets/images/`
- Add Tata Sans font to `assets/fonts/` and declare in `pubspec.yaml`
- Extend models and UI as needed
