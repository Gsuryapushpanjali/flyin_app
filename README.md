
# Flyin App

## Installation and Run Instructions

1. **Prerequisites:**
	- [Flutter](https://flutter.dev/docs/get-started/install) SDK installed
	- Dart SDK (comes with Flutter)
	- Android Studio or Xcode for mobile development
	- VS Code or any IDE of your choice

2. **Clone the repository:**
	git clone <repository-url>
	cd myflyn

3. **Install dependencies:**
	flutter pub get

4. **Run the app:**
	- For Android:
	  flutter run
	- For iOS:
	  flutter run
	- For Web:
	  flutter run -d chrome

## Project Structure

myflyn/
├── android/           # Android native files
├── ios/               # iOS native files
├── lib/               # Main Dart code
│   ├── controllers/   # State management controllers
│   ├── services/      # Service classes (API, etc.)
│   ├── views/         # UI screens
│   ├── app_bindings.dart
│   ├── app_routings.dart
│   ├── app_theme.dart
│   └── main.dart      # App entry point
├── test/              # Unit and widget tests
├── web/               # Web-specific files
├── linux/             # Linux desktop files
├── macos/             # macOS desktop files
├── windows/           # Windows desktop files
├── pubspec.yaml       # Flutter dependencies and config
└── README.md          # Project documentation

## Implementation Assumptions and Decisions


State Management: Controllers are used for managing state and business logic.
Modular Structure: Code is organized into controllers, services, views, and widgets for maintainability and scalability.
Platform Support: The project is set up to support Android, iOS, Web, Linux, macOS, and Windows.
Testing: Basic widget tests are included in the `test/` directory.
Third-party Plugins: Assumes use of common plugins (e.g., image_picker, permission_handler) as seen in the build folders.
IDE: Recommended to use VS Code or Android Studio for best development experience.

Localization: All Korean text from the Figma design has been translated into English for clarity.

## All Korean text from the Figma design has been translated into English for clarity.

