# Google SMS Retriever Hash Generator Script
The Google SMS Retriever API allows your Android app to automatically retrieve verification codes without requiring any extra app permissions. To use this API, you need to generate a hash string and register it with Google Play Console.

## Prerequisites:
To use this script, you need to have the following information:

Key-alias: This is the key alias that is used to sign the APK file.


Key-alias store password: This is the password for the key store that is used to sign the APK file.


Bundle id: This is the bundle ID of your Android app.


Dev Certificate file path: This is the path to your development certificate file.

### How to get your development certificate file:
get the dev certificate from the Google Play Console:
```
Go to the Google Play Console at https://play.google.com/apps/publish/.
Click on the app for which you want to retrieve the dev certificate.
Navigate to the "Release" section in the left-hand menu.
Click on the "Setup" button next to "App Integrity."
Scroll down to the "App signing certificate" section and click on the "Download certificate" button.
A pop-up window will appear with the SHA-1 and SHA-256 fingerprint. You can copy and paste these values into your application as needed.
Note: The dev certificate will only be available if you have opted in to app signing by Google Play. If you have not opted in, you will need to contact Google Play Developer support to retrieve your app's signing key.
```
