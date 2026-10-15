import "package:demo_test/button-demo/IconButtonScreen.dart";
import "package:demo_test/button-demo/elevatedButtonScreen.dart";
import "package:demo_test/button-demo/floatingActionButtonScreen.dart";
import "package:demo_test/button-demo/outlinedButtonScreen.dart";
import "package:demo_test/button-demo/textButtonScreen.dart";
import "package:demo_test/forms/myLogin.dart";
import "package:flutter/material.dart";

import "buttonType.dart";


class MainListPage extends StatelessWidget {
  const MainListPage({super.key});

  @override
  Widget build(BuildContext context) {

    final List<ButtonTypeData> buttonList = [
      ButtonTypeData(
        name: 'Elevated Button',
        widget: ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
        description: 'Elevated buttons are standard reflective auto-contained buttons. They give a sense of depth to a flat layout using subtle elevations and shadow drops.',
      ),
      ButtonTypeData(
        name: 'Outlined Button',
        widget: OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
        description: 'Outlined buttons are medium-emphasis buttons. They contain actions that are important but not the primary focus of the entire page layout.',
      ),
      ButtonTypeData(
        name: 'Text Button',
        widget: TextButton(onPressed: () {}, child: const Text('Text Button')),
        description: 'Text buttons are low-emphasis actions. They are typically used in toolbars, dialog option cards, or inline alongside body paragraphs.',
      ),
      ButtonTypeData(
        name: 'Icon Button',
        widget: IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
        description: 'Icon buttons display a compact visual functional symbol instead of a textual title. Ideal for app bars, bookmarks, or utility layouts.',
      ),
      ButtonTypeData(
        name: 'Floating Action Button',
        widget: FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
        description: 'Floating Action Buttons (FAB) represent the single most important action on a screen. They literally float over the primary display elements.',
      ),
    ];


    return Scaffold(
      appBar: AppBar(
        title: const Text("Types of button in Flutter"),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView.separated(
          itemCount: buttonList.length,
          separatorBuilder: (context, index) => const Divider(
            color: Colors.grey,
            thickness: 1.0,
            height: 16.0,
          ),
          itemBuilder: (context, index){
            final currentItem = buttonList[index];
            return ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
                title: Text(currentItem.name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text(currentItem.description,
                    style: const TextStyle(
                      fontSize: 12,
                    )
                ),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
              onTap: (){
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //   SnackBar(content: Text("${currentItem.description}"), duration: Duration(seconds: 2),)
                  // );
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => ElevatedButtonScreen(buttonData: currentItem),
                //   ),
                // );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      if(currentItem.name == "Elevated Button"){
                        return ElevatedButtonScreen(buttonData: currentItem);
                      }
                      else if(currentItem.name == "Outlined Button"){
                        return OutlinedButtonScreen();
                      }
                      else if(currentItem.name == "Text Button"){
                        return TextButtonScreen();
                      } else if(currentItem.name == "Icon Button"){
                        return IconButtonScreen();
                      } else {
                        return FloatingActionButtonScreen();
                      }
                    },
                  ),
                );
                // Navigator.of(context).push(
                //     MaterialPageRoute(builder:(context) => MyLogin())
                // );
              },
            );
          },
        ),
        // child: GridView.builder(
        //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //         crossAxisCount: 2,
        //         crossAxisSpacing: 16.0,
        //         mainAxisSpacing: 16.0,
        //     ),
        //   itemCount: buttonList.length,
        //   itemBuilder: (context, index) {
        //     return Card(
        //       elevation: 1,
        //       shadowColor: Colors.deepOrangeAccent,
        //       shape: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.all(Radius.circular(4))
        //       ),
        //       surfaceTintColor: Colors.deepOrangeAccent,
        //       child: Center(
        //         child: Text(buttonList[index].name),
        //       ),
        //     );
        //   },
        // ),
      ),
    );
  }
}
