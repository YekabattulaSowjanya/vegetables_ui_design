# mini_project_2

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


### UI Design

<img width="869" alt="2nd min" src="https://github.com/YekabattulaSowjanya/vegetables_ui_design/assets/109911567/886aafe7-82c2-4a44-bda8-b5d5685aaae0">

####  Rounded edges in bottomNavBar

 bottomNavigationBar: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
            boxShadow: [
              BoxShadow(color: Colors.red, spreadRadius: 0, blurRadius: 10),
            ], ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                    icon: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child:
                              Icon(Icons.home, color: Colors.greenAccent[400]),
                        ),
                        Text(
                          'Home',
                          style: TextStyle(color: Colors.greenAccent[400]),
                        ),
                      ],
                    ),
                    label: ''),
