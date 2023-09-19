#  Pomodoro Watching iOS App

Pomodoro Watching iOS App is a productivity app, which builds on pomodoro technique, to help user focus on present and planning future. While this app have basic functionality such as timer, to-do list, records, notification, just like others productivity app. However, unlike traditional productivity app, Pomodoro Watching are more capable than that. By combining image recognition and Internet Of Things, Pomodoro Watching App can __actively monitor__ user outside the phone to the real world (by RPi4 camera). And determine the result of this pomodoro clock iteration is successful or not. 

## Note
Because the backend AWS cloud have been shutdown, so the app right now is not working.

## Main features
* Simple, beautiful, and intuitive interface.
* Task Management that sort tasks by time.
* Each task will track its dedicated completed pomodoro cycles and can marked as completed.
* Customize focus sessions and goals.
* Track your productivity with insightful charts.
* E-mail notification will be sent 5 mins before the task begin.
* Everyday's todos will be sent at user selected time.
* App's Pomodoro clock will automatically start when user sit in front RPi's camera (passive mode).
* App's Pomodoro clock will start if user click countdown(計時) button in main page (active mode).
* App's Pomodoro clock will restart if user left the camera.
* When pomodoro cycle ended, RPi will alarm

## Development Setup
> __This project is written in Swift 5 and Xcode 10.2 is required for development.__

Before you begin, you should already have the Xcode downloaded and set up correctly. You can find a guide on how to do this here: [Setting up Xcode](https://developer.apple.com/xcode/)

##### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Steps to install Cocoapods (one time installation)

- Run `sudo gem install cocoapods` to install the latest version of cocoapods. To install cocoapods from HomeBrew, `brew install cocoapods`.

-  Next, run `pod setup` for setting up cocoapods master repo. You may include `--verbose` for more descriptive logs.
**NOTE:** This might take a while to setup depending on your network speed.


## Setting up the iOS Project

1. Download the Pomodoro Watching iOS App project source. You can do this either by forking and cloning the repository (recommended if you plan on pushing changes) or by downloading it as a ZIP file and extracting it. OR
```
$ git clone https://github.com/bowen1248/Pomodoro-Watching-App.git
```

2. Navigate to the unzipped folder and run `pod install`.

3. Open `PomodoroWatch.xcworkspace` from the folder.

4. Build the project (⌘+B) and check for any errors.

5. Run the app (⌘+R).and test it.

## Reference
Want to know more? You can reference our powerpoint and demo video.

Powerpoint link: https://docs.google.com/presentation/d/1GzXm7EXxUB7afnwPP-fdTDsnAVtR6Rok/edit?usp=sharing&ouid=116781926599482258689&rtpof=true&sd=true

Demo video link: https://drive.google.com/file/d/1ZywwgLUshWuOc4G91zovEdjczo8LZ8j_/view?usp=sharing

Representation link: https://drive.google.com/file/d/1wwJorwKTCk5CRRvudiZnRMLo2126K6v0/view?usp=drive_link
