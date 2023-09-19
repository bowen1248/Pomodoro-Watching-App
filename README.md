#  Pomodora Watch iOS App

Pomodora Watch iOS App is a productivity app, which builds on pomodora technique, to help user focus on present and planning future. While this app have basic functionality such as timer, to-do list, records, notification, just like others productivity app. However, unlike traditional productivity app, Pomodora Watch are more capable than that. By combining image recognition and Internet Of Things, Pomodora Watch App can __actively monitor__ user outside the phone to the real world (by RPi4 camera). And determine the result of this pomodoro clock iteration is successful or not. 

## Main features
* Simple, beautiful, and intuitive interface.
* Task Management that sort tasks by time.
* Each task will track its dedicated completed pomodoro cycles and can marked as completed.
* Customize focus sessions and goals.
* Track your productivity with insightful charts.
* E-mail notification will be sent 5 mins before the task begin.
* Everyday's todos will be sent at user selected time.
* App's Pomodora clock will automatically start when user sit in front RPi's camera (passive mode).
* App's Pomodora clock will start if user click countdown(計時) button in main page (active mode).
* App's Pomodora clock will restart if user left the camera.
* When pomodoro cycle ended, RPi will alarm

## Development Setup
> __This project is written in Swift 5 and Xcode 10.2 is required for development.__

Before you begin, you should already have the Xcode downloaded and set up correctly. You can find a guide on how to do this here: [Setting up Xcode](https://developer.apple.com/xcode/)

## Setting up the iOS Project

1. Download the Pomodora Watch iOS App project source. You can do this either by forking and cloning the repository (recommended if you plan on pushing changes) or by downloading it as a ZIP file and extracting it. OR
```
$ git clone https://github.com/fossasia/susi_iOS.git
```

2. Open `Susi.xcworkspace` from the folder.

3. Build the project (⌘+B) and check for any errors.

4. Run the app (⌘+R).and test it.

## Communication

## Development

A native iOS app. The answers for user queries comes from [SUSI Server](https://github.com/fossasia/susi_server) which further uses skills defined in [SUSI Skill Data](https://github.com/fossasia/susi_skill_data).

## Screenshots

<table>
  <tr>
    <td><img src="docs/_static/Screen1.png" height = "545" width="271.25"></td>
    <td><img src="docs/_static/Screen2.png" height = "545" width="271.25"></td>
    <td><img src="docs/_static/Screen3.png" height = "545" width="271.25"></td>
  </tr>
  <tr>
    <td><img src="docs/_static/Screen4.png" height = "545" width="271.25"></td>
    <td><img src="docs/_static/Screen5.png" height = "545" width="271.25"></td>
    <td><img src="docs/_static/Screen6.png" height = "545" width="271.25"></td>
  </tr>
</table>

## Reference
Want to know more? You can reference our powerpoint and demo video.
Powerpoint link: https://docs.google.com/presentation/d/1GzXm7EXxUB7afnwPP-fdTDsnAVtR6Rok/edit?usp=sharing&ouid=116781926599482258689&rtpof=true&sd=true

Demo video link: https://drive.google.com/file/d/1ZywwgLUshWuOc4G91zovEdjczo8LZ8j_/view?usp=sharing
Representation link: https://drive.google.com/file/d/1wwJorwKTCk5CRRvudiZnRMLo2126K6v0/view?usp=drive_link
