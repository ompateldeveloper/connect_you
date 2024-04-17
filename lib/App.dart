import 'package:connect_you/components/styledAppbar.dart';
import 'package:connect_you/components/styledButton.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Connect you'),
      body: Container(
        padding: EdgeInsets.all(4),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Placeholder(
              color: Colors.black12,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 0,
                vertical: 30,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: StyledButton(
                      child: const Text('Dahsboard'),
                      varient: "default",
                      onPressed: () {
                        Navigator.pushNamed(context, '/dashboard');
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: StyledButton(
                      varient: "outline",
                      onPressed: () {},
                      child:const Row(
                        children: [
                          Text('Marketplace',style: TextStyle(color: Colors.black),),
                          Icon(
                            Icons.arrow_outward,
                            size: 16,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
