# riverpod_firebase_phone_auth

A new Flutter project template showing how to handle mobile authentication using Firebase and Riverpod. 

### Packages Used
 - Freezed - To generate union types that handle the various AuthStates
 - GoogleFonts - To use any font easily from fonts.google.com
 - responsive_sizer - For sizing purposes
 - flutter_typeahead - To implement the countries typeahead
 - country_list_pick - to flag assets and names for countries typeahead
 - firebase_core and firebase_auth

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
## Steps to use the template
1. Clone the repository and rename the package to what you want it called. 
``` flutter pub run change_app_package_name:main com.new.package.name ```
2. run ```flutter create --org com.new.package.name ```
4. Proceed to setup Firebase as per the instructions on [FlutterFire](https://firebase.flutter.dev/docs/overview)
5. Ensure phone authentication is enabled in firebase console for your project
3. For android ensure you've enabled SafetyNet [here](https://firebase.google.com/docs/auth/android/phone-auth)
4. Download the google-services.json file into android/app
5. Run the app.

## Issues
### Known Issues
- Not tested on iOS
- Tests not written

### Unknown Issues
If you encounter any issues running the example, feel free to open an issue.
