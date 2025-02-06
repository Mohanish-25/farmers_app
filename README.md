# Farmers' App: Multilingual Agricultural Services Platform

The Farmers' App is a comprehensive mobile application designed to provide essential agricultural services and information to farmers in both English and Marathi languages. This Flutter-based project aims to bridge the information gap in the farming community by offering a user-friendly interface with access to various government schemes, financial services, and agricultural resources.

The application features a multilingual interface, allowing users to switch between English and Marathi, catering to a diverse user base. It includes detailed information on crucial agricultural programs such as Fasal Bima (Crop Insurance), Kisan Credit Card, PM Kisan Samman Nidhi, and more. The app also incorporates user authentication, ensuring secure access to personalized services.

Key features of the Farmers' App include:
- Bilingual support (English and Marathi)
- Detailed information on government agricultural schemes
- User authentication and profile management
- Interactive UI with custom illustrations and cards
- Easy navigation with a custom drawer and app bar
- Soil health information and resources
- Integration with external services via URL launcher

## Repository Structure

The project follows a standard Flutter application structure with additional custom directories for better organization:

- `lib/`: Contains the main Dart source code
  - `Components/`: Reusable UI components
  - `Screens/`: Different screens of the application
    - `eng_details_screens/`: Detailed screens in English
    - `marathi_details_screens/`: Detailed screens in Marathi
    - `listings/`: Listing screens for services
    - `service/`: Service-related screens
    - `signin/`: Authentication screens
  - `utils/`: Utility classes and functions
- `android/`: Android-specific configuration and code
- `ios/`: iOS-specific configuration and code
- `assets/`: Contains images and fonts used in the app
- `test/`: Contains test files for the application

Key Files:
- `lib/main.dart`: Entry point of the application
- `pubspec.yaml`: Flutter project configuration and dependencies
- `analysis_options.yaml`: Dart analyzer configuration
- `android/app/build.gradle`: Android build configuration

## Usage Instructions

### Installation

Prerequisites:
- Flutter SDK (version 3.4.3 or later)
- Dart SDK
- Android Studio or VS Code with Flutter extensions

Steps:
1. Clone the repository:
   ```
   git clone https://github.com/Mohanish-25/farmers_app.git
   ```
2. Navigate to the project directory:
   ```
   cd farmers_app
   ```
3. Install dependencies:
   ```
   flutter pub get
   ```
4. Run the app:
   ```
   flutter run
   ```

### Configuration

The app uses several external packages that may require additional setup:

- `fluttertoast`: For displaying toast messages
- `url_launcher`: For launching URLs
- `flutter_native_splash`: For customizing the splash screen

Ensure these are properly configured in the `pubspec.yaml` file.

### Common Use Cases

1. Switching languages:
   - Navigate to the language selection screen
   - Choose between English and Marathi

2. Viewing scheme details:
   - Select a scheme from the listings page
   - View detailed information in the selected language

3. User authentication:
   - Use the sign-in form to authenticate
   - Access personalized services after authentication

### Testing & Quality

To run tests:
```
flutter test
```

### Troubleshooting

Common Issue: App crashes on startup
- Problem: Missing dependencies or incorrect Flutter version
- Solution: 
  1. Ensure Flutter is up to date: `flutter upgrade`
  2. Verify all dependencies are installed: `flutter pub get`
  3. Check the Flutter doctor for any issues: `flutter doctor`

For debugging:
1. Enable debug mode in your IDE
2. Use `print` statements or breakpoints to track the flow
3. Check the console for any error messages

## Data Flow

The Farmers' App follows a straightforward data flow:

1. User selects language preference
2. App loads appropriate language resources
3. User navigates through various screens
4. When accessing scheme details, app retrieves information from local data sources
5. For external links, app uses URL launcher to open web resources

```
[User Input] -> [Language Selection] -> [Main Menu]
                                     -> [Scheme Listings]
                                     -> [Scheme Details]
                                     -> [External Resources (via URL Launcher)]
```