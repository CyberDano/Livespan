# Livespan

Livespan is a simple iOS app built with Swift and UIKit that estimates how much free time a person has left to enjoy based on their age, work hours, and sleep hours.

The app provides a lightweight interface for entering personal lifestyle values and calculating an approximate remaining leisure-time estimate.

## Features

- Age input via slider
- Work-hours input via slider
- Sleep-hours input via slider
- Real-time value updates in the UI
- Persistence of user inputs using `UserDefaults`
- Estimated leisure-time result displayed on a second screen
- Built with Xcode and Storyboards

## Tech Stack

- Swift
- UIKit
- Xcode
- iOS app lifecycle

## Project Structure

```text
Livespan/
├── AppDelegate.swift
├── SceneDelegate.swift
├── ViewController.swift
├── CalculatedTimeViewController.swift
├── Base.lproj/
│   ├── LaunchScreen.storyboard
│   └── Main.storyboard
├── Assets.xcassets/
├── Info.plist
└── ...

LivespanTests/
└── LivespanTests.swift

LivespanUITests/
├── LivespanUITests.swift
└── LivespanUITestsLaunchTests.swift

Livespan.xcodeproj/
└── project.pbxproj
How it Works
The main screen allows the user to enter:

age
work hours per day
sleep hours per day
When the user taps the calculation action, the app stores those values and moves to a second screen where it estimates the amount of free time remaining based on a simplified formula.
```

## Getting Started

-  Prerequisites
-  macOS
-  Xcode 15 or later
-  iOS simulator or a physical iPhone/iPad
-  Run the App
-  Open Livespan.xcodeproj in Xcode.
-  Select a simulator or connected device.
-  Press Run (⌘R).
-  Adjust the sliders and view the calculated estimate.

## Notes
This project appears to be a prototype or learning project rather than a full production app. The time calculation is formula-based and may be refined or expanded in future iterations.

> No explicit license file is currently present in the repository, so the project does not declare a license at this time.
