# Flutter Confetti Widget

A simple flutter's confetti widget

## Add Dependency
```bash
flutter pub add confetti
```

## Sample
<p><img alt="gif" align="center" src="https://github.com/Vishwa-Karthik/Confetti-Widget-Flutter/blob/master/confetti.gif" width=200 height=400 />
<p/>


## Code
```dart
return Stack(
      alignment: Alignment.topCenter,
      children: [
        Scaffold(
          appBar: AppBar(
            title: const Text(
              "C O N F E T T I",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
          body: Center(
              child: MaterialButton(
            onPressed: () {
              if (isPlay) {
                _controller.stop();
              } else {
                _controller.play();
              }
              isPlay = !isPlay;
            },
            color: Colors.deepPurple[100],
            child: const Text("Click me"),
          )),
        ),
```

## Widget Code
```dart
ConfettiWidget(
          confettiController: _controller,
          blastDirection: -pi / 2,
          colors: const [Colors.deepPurple, Colors.black, Colors.yellow],
          gravity: 0.7,
          emissionFrequency: 0.2,
        )
```




## Reference
Pub.dev : [Confetti Widget](https://pub.dev/packages/confetti)




