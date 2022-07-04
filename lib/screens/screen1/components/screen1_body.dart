import 'package:flutter/material.dart';

import '../../../components/common/functions/iser.dart';
import '../../../models/test/test.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder<List<TestData>>(
            stream: isolateTest(),
            builder: (_, s) {
              print('${DateTime.now()}: ${s.data?.first.id ?? 0}');
              if (s.hasData) {
                return Text(
                  'Total testDatas: ${s.data?.first.id ?? 0}',
                  textAlign: TextAlign.center,
                );
              }
              return const Text('Loading...');
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            child: const Text('Read'),
            onPressed: () async => await readTest(),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            child: const Text('Write'),
            onPressed: () async => await writeTest(),
          ),
        ],
      ),
    );
  }
}
