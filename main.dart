import 'package:flutter/material.dart';
      appBar: AppBar(
        title: const Text('Present Era'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Solve modern challenges'),
            const SizedBox(height: 20),
            const Icon(Icons.lightbulb, size: 100),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: challengeDone ? null : solveChallenge,
              child: Text(
                challengeDone ? 'Challenge Solved' : 'Solve Challenge',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FutureEraScreen extends StatefulWidget {
  const FutureEraScreen({super.key});

  @override
  State<FutureEraScreen> createState() => _FutureEraScreenState();
}

class _FutureEraScreenState extends State<FutureEraScreen> {
  bool missionDone = false;

  void startMission() {
    setState(() {
      missionDone = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future Era'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Complete future missions'),
            const SizedBox(height: 20),
            const Icon(Icons.rocket_launch, size: 100),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: missionDone ? null : startMission,
              child: Text(
                missionDone ? 'Mission Completed' : 'Start Mission',
              ),
            ),
          ],
        ),
      ),
    );
  }
}