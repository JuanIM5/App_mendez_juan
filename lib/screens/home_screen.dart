import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int currentPage = 1;
final PageController pageController = new PageController(initialPage: 1); ///
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Index: $currentPage'),
          elevation: 0.5,
        ),
        
        body: PageView(
          controller: pageController,
          physics: NeverScrollableScrollPhysics(), ///
          children: [
            CustomScreen(color: Colors.red),
            CustomScreen(color: Colors.green),
            CustomScreen(color: Colors.brown),
           ],
        ),
      
      ///body: currentPage == 0
      ///? CustomScreen(color: Colors.red)
      ///: currentPage == 1
          ///? CustomScreen(color: Colors.brown)
          ///: CustomScreen(color: Colors.indigo),
          
          bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentPage,
          onTap: (index) {
            currentPage = index;
            pageController.animateToPage(index, 
            duration: Duration(milliseconds: 300), 
            curve: Curves.easeOut);

            setState(() {});
          },
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black.withOpacity(0.5),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.verified_user_outlined),
              label: 'User'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings'
            ),
          ],
        ),
      );
    }
}

class CustomScreen extends StatelessWidget {  
  final Color color;
  const CustomScreen({required this.color});
  @override
  Widget build(BuildContext context){
    return Container(
      color: color,
      child: Center(
        child: Text('Custom Sreen'),
      )
    );
  }
}