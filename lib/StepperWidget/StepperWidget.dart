import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, backgroundColor: Colors.blue,
          ),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _activeStepIndex = 0;

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController pincode = TextEditingController();

  List<Step> stepList() => [
    Step(
      stepStyle: _activeStepIndex >= 0?StepStyle(color: Colors.blue):StepStyle(color: Colors.grey),
      state: _activeStepIndex <= 0 ? StepState.editing : StepState.complete,
      isActive: _activeStepIndex >= 0,
      title: Text(
        'Account'
      ),
      content: Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          TextField(
            controller: name,
            decoration: const InputDecoration(
              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue, width: 2)),
              border: OutlineInputBorder(),
              labelText: 'Full Name',
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          TextField(
            controller: email,
            decoration: const InputDecoration(
              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue, width: 2)),
              border: OutlineInputBorder(),
              labelText: 'Email',
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          TextField(
            controller: pass,
            obscureText: true,
            decoration: const InputDecoration(
              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue, width: 2)),
              border: OutlineInputBorder(),
              labelText: 'Password',
            ),
          ),
        ],
      ),
    ),
    Step(
        stepStyle: _activeStepIndex >= 1?StepStyle(color: Colors.blue):StepStyle(color: Colors.grey),
        state: _activeStepIndex <= 1 ? StepState.editing : StepState.complete,
        isActive: _activeStepIndex >= 1,
        title: Text(
          'Address'
        ),
        content: Column(
          children: [
            const SizedBox(
              height: 8,
            ),
            TextField(
              controller: address,
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue, width: 2)),
                border: OutlineInputBorder(),
                labelText: 'Full House Address',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              controller: pincode,
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue, width: 2)),
                border: OutlineInputBorder(),
                labelText: 'Pin Code',
              ),
            ),
          ],
        )),
    Step(
        stepStyle: _activeStepIndex >= 2?StepStyle(color: Colors.blue):StepStyle(color: Colors.grey),
        state: StepState.complete,
        isActive: _activeStepIndex >= 2,
        title: Text(
          'Confirm'
        ),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Name: ${name.text}'),
            Text('Email: ${email.text}'),
            const Text('Password: *****'),
            Text('Address : ${address.text}'),
            Text('PinCode : ${pincode.text}'),
          ],
        ))
  ];

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Center(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Thank you!',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Text(
                  'Your information has been submitted successfully.',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: isCheck?IconButton(onPressed: () {
          setState(() {

          });
          isCheck=!isCheck;
        },icon: Icon(Icons.more_horiz_rounded,color: Colors.white,),):IconButton(onPressed: () {
          setState(() {

          }); isCheck=!isCheck;
        },icon: Icon(Icons.more_vert_rounded,color: Colors.white,),),
        title: const Text('Flutter Stepper Demo', style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.blue,
        toolbarHeight: 70,
      ),
      body: Stepper(
        type: isCheck?StepperType.vertical:StepperType.horizontal,
        currentStep: _activeStepIndex,
        steps: stepList(),
        onStepContinue: () {
          if (_activeStepIndex < (stepList().length - 1)) {
            setState(() {
              _activeStepIndex += 1;
            });
          } else {
            _showBottomSheet(context);
          }
        },
        onStepCancel: () {
          if (_activeStepIndex == 0) {
            return;
          }

          setState(() {
            _activeStepIndex -= 1;
          });
        },
        onStepTapped: (int index) {
          setState(() {
            _activeStepIndex = index;
          });
        },
        controlsBuilder: (BuildContext context, ControlsDetails details) {
          final isLastStep = _activeStepIndex == stepList().length - 1;
          return Container(
            margin: const EdgeInsets.only(top: 16),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: details.onStepContinue,
                    child: (isLastStep)
                        ? const Text('Submit')
                        : const Text('Next'),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                if (_activeStepIndex > 0)
                  Expanded(
                    child: ElevatedButton(
                      onPressed: details.onStepCancel,
                      child: const Text('Back'),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
bool isCheck=false;