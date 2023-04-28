# Google SMS Retriever Hash Generator Bash Script
This script helps to create a coputed hash based in your app bundle, certificate and your keystore.

The Google SMS Retriever API allows your Android app to automatically retrieve verification codes without requiring any extra app permissions. To use this API, you need to generate a hash string and send it in sms message.

See more in [google docs](https://developers.google.com/identity/sms-retriever/overview)

## Prerequisites:
- Java Development Kit (JDK) installed on your machine.

- Key-alias: This is the key alias that is used to sign the APK file.


- Key-alias store password: This is the password for the key store that is used to sign the APK file.


- Bundle id: This is the bundle ID of your Android app.


- Dev Certificate file path: This is the path to your development certificate file.

### How to get your development certificate file:
```
Go to the Google Play Console at https://play.google.com/apps/publish/.

Click on the app for which you want to retrieve the dev certificate.

Navigate to the "Release" section in the left-hand menu.

Click on the "Setup" button next to "App Integrity."

Scroll down to the "App signing certificate" section and click on the "Download certificate" button.

A pop-up window will appear with the SHA-1 and SHA-256 fingerprint. You can copy and paste these values into your application as needed.
Note: The dev certificate will only be available if you have opted in to app signing by Google Play. If you have not opted in, you will need to contact Google Play Developer support to retrieve your app's signing key.
```
