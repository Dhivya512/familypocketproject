import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  var first_page = login();
  var second_page = homepage();
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => first_page,
      '/home': (context) => second_page,
    },
  ));
}

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Family Pocket",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 24),
          ),
          backgroundColor: Colors.purpleAccent,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Login",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 30,
                width: 20,
              ),
              Form(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            labelText: "Username",
                            hintText: 'Enter Username',
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder()),
                        onChanged: (String Value) {},
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      width: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                labelText: "Password",
                                hintText: 'Enter Password',
                                prefixIcon: Icon(Icons.remove_red_eye),
                                border: OutlineInputBorder()),
                            onChanged: (String Value) {},
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      width: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 120),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        onPressed: () {
                          Navigator.pushNamed(context, '/home');
                        },
                        child: Text("Login"),
                        color: Colors.grey,
                        textColor: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HOME PAGE',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 24),
        ),
        backgroundColor: Colors.purpleAccent,
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Text(
            "PNG Image",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          SizedBox(height: 11), // Optional spacing between text and image
          Image.asset(
            'assets/image/nature.png',
            width: 300,
            height: 300,
          ),
          SizedBox(height: 11),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
          Text(
            'SVG Image',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          SizedBox(
            height: 10,
            width: 10,
          ),
          SvgPicture.asset(
            'assets/image/sample.svg',
            width: 300,
            height: 300,
          ),
        ],
      ),
    );
  }
}
