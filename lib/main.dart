import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:jitsi_meet/jitsi_meet.dart'
    hide FeatureFlagEnum, FeatureFlagHelper;
import 'package:jitsi_test/jitsi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Map<String, Object>? _jitsiOptions;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();

    _requestPermissions();
    final featureFlags = {
      FeatureFlagEnum.addPeopleEnabled: false,
      FeatureFlagEnum.callIntegrationEnabled: false,
      FeatureFlagEnum.chatEnabled: false,
      FeatureFlagEnum.inviteEnabled: false,
      FeatureFlagEnum.overflowMenuEnabled: false,
      FeatureFlagEnum.pipEnabled: false,
      FeatureFlagEnum.raiseHandEnabled: false,
      FeatureFlagEnum.tileViewEnabled: true,
      FeatureFlagEnum.meetingPasswordEnabled: false
    }.map((flagName, flagvalue) =>
        MapEntry(FeatureFlagHelper.featureFlags[flagName], flagvalue));

    _jitsiOptions = {
      'room': "testasdasd",
      'isAdmin': true,
      'serverURL': "https://meet.jit.si",
      "audioMuted": true,
      "videoMuted": true,
      "featureFlags": featureFlags
    };

    JitsiMeet.addListener(JitsiMeetingListener(
      onConferenceTerminated: (_) => Navigator.pop(context),
    ));
  }

  @override
  void dispose() {
    super.dispose();

    JitsiMeet.closeMeeting();
    JitsiMeet.removeAllListeners();
  }

  @override
  Widget build(BuildContext context) {
    if (_jitsiOptions == null || _isLoading == true) {
      return const Center(child: CircularProgressIndicator());
    }

    return AndroidView(
      viewType: 'jitsi',
      layoutDirection: TextDirection.ltr,
      creationParams: _jitsiOptions,
      creationParamsCodec: const StandardMessageCodec(),
    );
  }

  void _requestPermissions() async {
    await [Permission.camera, Permission.microphone].request();

    if (await Permission.camera.isDenied ||
        await Permission.microphone.isDenied) {
      _isLoading = true;

      // set up the AlertDialog
      final alert = AlertDialog(
        title: const Text("Enable camera and microphone"),
        content: const Text(
          'App requires camera and microphone permission to start a session,'
          ' Please allow permission from app settings.',
        ),
        actions: [
          TextButton(
            child: const Text("Cancel"),
            onPressed: () {
              int count = 0;
              Navigator.of(context).popUntil((_) => count++ >= 2);
            },
          ),
          TextButton(
            child: const Text("Continue"),
            onPressed: () {
              int count = 0;
              Navigator.of(context).popUntil((_) => count++ >= 2);

              openAppSettings();
            },
          )
        ],
      );

      showDialog(context: context, builder: (BuildContext context) => alert);
    } else {
      setState(() {
        _isLoading = false;
      });
    }
  }
}
