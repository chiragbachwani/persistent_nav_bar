import 'package:flutter_assignment_1/const/const.dart';

class FavourateScreen extends StatelessWidget {
  const FavourateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<FavourateController>();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: "Favourates screen".text.black.bold.make()),
      body: Obx(
        () => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '${controller.favCounter.value}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      onPressed: () {
                        controller.decreaseValue();
                      },
                      child: const Icon(
                        Icons.remove,
                        color: Colors.white,
                      )),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green),
                      onPressed: () {
                        controller.increaseValue();
                      },
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
