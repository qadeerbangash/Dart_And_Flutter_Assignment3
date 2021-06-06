import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}
class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            child: LanguageDropButton(),
          ),
          Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              Container(
                width: 200,
                child: Image.asset('assets/images/logo.png'),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
                child: 
                    TextField(
                      decoration: InputDecoration(  
                        hintText: 'Phone number, email or username',
                        hintStyle: TextStyle(color: Colors.black54, fontSize: 14),
                        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey[400])),
                        filled: true,
                        fillColor: Colors.grey[100]
                      ),
                    ),
                    
                 
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
                child: 
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(  
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.black54, fontSize: 14),
                        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey[400])),
                        filled: true,
                        fillColor: Colors.grey[100],
                        suffixIcon: Icon(Icons.visibility_off_outlined),
                        
                      ),
                    ),
                    
                 
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
                child: 
                    ElevatedButton(onPressed: (){}, 
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 10,
                      ),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white, 
                          fontSize: 16, 
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.2,
                          ),
                        
                        ),
                      )
                      )
                    
                 
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Text(
                      'Forgot your login details?',
                      style: TextStyle(fontSize: 13)
                    
                    ),
                    SizedBox(width: 5),
                    Text('Get help logging in.',
                    style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 13,
                    color: Colors.lightBlue[900]
                    ))
                  ]
                )
                    
                      )
                    
                 
              

              
            ],
          ))
        ],
      ),
    ));
  }
}

// Drop Language Button Class ---------------------------

class LanguageDropButton extends StatefulWidget {
  @override
  _LanguageDropButtonState createState() => _LanguageDropButtonState();
}

class _LanguageDropButtonState extends State<LanguageDropButton> {
  List<String> _languages = ['English', 'Urdu', 'Arabic'];
  String _selectedLanguage;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton(
        icon: Icon(Icons.expand_more),
        hint: Text(
          'Choose Language',
          style: TextStyle(fontSize: 14),
        ),
        value: _selectedLanguage,
        onChanged: (newLanguage) {
          setState(() {
            _selectedLanguage = newLanguage;
          });
        },
        items: _languages.map((location) {
          return DropdownMenuItem(
            child: Text(location),
            value: location,
          );
        }).toList(),
      ),
    );
  }
}
