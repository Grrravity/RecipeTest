<p align="center">
<img src="https://github.com/Grrravity/RecipeTest/blob/9cd1f3cf3bef34d6dcf3acd354e3a6afa2f027a9/assets/logos/pancakeapp.png" height="100" alt="PancakeApp" />
</p>

---
# PancakeApp

PancakeApp is a flutter project to show how great it is to build cross plateforme apps. You'll find releases here [last release](https://github.com/Grrravity/RecipeTest/releases)

This project use ResoCoder's **[Clean Architecture](https://resocoder.com/2019/08/27/flutter-tdd-clean-architecture-course-1-explanation-project-structure/)**

| Implementations      | status |
| :----------- | :----:  |
| iOS and Android support   | ✔️        |
| Web support   | ✔️        |
| Clean Architecture      | ✔️       |
| Widget tests   | ✔️        |
| Bloc tests   | 🕜        |

## Android Installation *(require at least Flutter SDK)*

* Ensure your Android device has developer mode and usb debugging enabled

* Ensure your device is connected to your computer with usb 

1. Open in a terminal the targeted folder you wish to clone the project to

```bash
git clone https://github.com/Grrravity/RecipeTest.git
```

2. Get into the folder then install the apk on your phone

```bash
cd PancakeTest
Flutter build apk --release
Flutter install
```

## iOS Installation *(require at least Flutter SDK and XCode)*

* Ensure your iOS is connected and has given authorization to Xcode

1. Open in a terminal the targeted folder you wish to clone the project to in a terminal

```bash
git clone https://github.com/Grrravity/RecipeTest.git
```

2. Get into the folder then build the iOS app

```bash
cd PancakeTest
Flutter build ios --release
```

3. Now in Xcode, open Runner.xcworkspace in your RecipeTest app's ios folder

4. Select your device in the list next to the runner and press Run icon


## Web Installation *(require at least Flutter SDK and Chrome)*

1. Open in a terminal the targeted folder you wish to clone the project to in a terminal

```bash
git clone https://github.com/Grrravity/RecipeTest.git
```

2. Get into the folder then build the web app

```bash
cd PancakeTest
Flutter run -d chrome
```

This will open a localhost of this app in your chrome browser.

## APK Installation
* Check that your phone accept unknown source apk

1. Download the apk from [here](https://github.com/Grrravity/RecipeTest/releases)

2. Paste the apk in your Android's storage

4. Then open the apk from your Android file explorer, install it and launch it.
