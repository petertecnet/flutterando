import 'package:flutter/material.dart';
import 'package:ola_mundo/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  child: Image.network(
                      'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMwAAAD4CAMAAACXF/l7AAAAwFBMVEX///9nt/dCpfUNR6Fhtffn8/5bs/eo1Prb4+8ANpvN5vzr9f4ARKCMx/kwn/QKRqEVR5USSJwVRpFKqPVwu/jv9/7J5PwXRYsXQYSTyvkWRo8AQJ8WPnzQ5/zi6PIAM5oVO3Y/jtC6xuAFHD8WOW8PLFkAPJ5JmN0XN3ISMWILJlAIIEan0/qIwvje7v0+kdkALXgAPo4XP3sXO3IJFjwCDjANO4MGHT8MM3EAFTQOPooFJ1wAEGcAKYUALJgAJpf069WNAAAEvElEQVR4nO3ci1baQBAGYCAUrUW5tCJSVCIqoPaC99ravv9bdZMAJSGQ3exu+Hc6/wt4vjPzZ7gdSyUOh8PhcDgcDqdUOnxnINtGzHJSMxAQzEmtrJ0qW4yHLYQtH7atiMJzYYvtcF8Iz4UtxsN9IWuplulYYPqyR2jH2BKnELKUy9wX42ELWQvMrWRLAkPHUq0eblsRhXeMrIX7YiGUdqzDFqoWmO6bmAtK93nHyFq4LxbCO8YW2+G+0LUQ2rEyJQuhW1mm1BdCc4HpPqXPYbj7cQolC0pfKO0Ydz9hIXQrKfUFxcJ9IWvhW2khlHaM0u8tKT3HKH1faeS3cCAW7gtZC8ytpNR97gtbbIdSX/hWxkNox2A+h+FbmQiIhfvCFtvhW4k5F+5+wkLoVlLqC4qF+xKnkOoLJQuhHaNkodQXShZKO4ZiMfF/SP6zW7lzu6Ob204RFolbeVyr6qa2X4gle8eO9f8MJUu1EItEX5yxSPXFFQuhHUOxFPSbq0IsBjAw3S/prxlM9w1oYPpiQINm0dEg9UVXg9UXPQ3ejuXXoFryaBD7Mo/q22Zki+psMLufT4PbF3UNvkVeg90XNQ3Oa359jQs7Jq9xxSKhkdmxKoYl63rKdH//4OMnDMvm2cj0Zf+gUtHUGLNs0shaNDUGLRs0En2JLFoao5a1vZHqS6WiqTFsSZ+N/I5paYxb0jSqlpwaC5YUjUJfNDRWLCuaHJYcGkuW+FNA7lYmLcoaa5bl2aj3JZfGomVZk9eipLFqWWhy9UVZY9ky603OvihqrFuC2eTvi5KmAIvQaO2YtKYQi0yyLBIahyyZGqcsGRrHLBs1zlk2aBy0rNXAWL4oWNZoYCwqc1mjyf79WEFRtaRoYCxqO5aqcdqS0MBY1HdsReO8ZUkDY8m3YzENCctMQ8QSashYhKZ8vG3ELF+1LZXKt91tK+Y50daMXr6fblsxj65mNO53qWgCS7c3JbFpwtLvHrWbFDSj8UBYeu1mq+78po0uhEVgms1m67PjGmG5iwYjMECavRwaYQmW7KgdYbyGw5rR5OI+GkyEaXk4vVHVhJY70ZjQEmIaVzAatd4ElqgxvQXGq+NoVGYzupxE7Y9hvDrOpnWkNYHlPgXjoiawhO1fwXh1157Q/vVkNpgA045hXNP414vBrE4GSpO9aYElGEx/Dcal3ghLMJjBeow7s/FvwsEsYdorGFfujf8QDSbYsgTGW4oTsxGWf4NZrFk7QXGjN/7wJhhMEpOUOKHxH27CwcQwTfECMwWDtGlpvfEfF4MZh5h+t91qpErgNaFlhhGTGfR7QrKWgr1pwjJcbNnFoNv0NkpCDc57z7gmtERbNpn0X730orgxm8ASbdnl+DV7JtC9iSxiMpMnqZEgauazCS3Pw8unVkPNArhpwvL8fP0yVWNgavzHH8OX17QzL6fB2bS9A//x51OrtfLqy0lN59d0OtWxBBqY7wjO3zQtUL05f9O0QG3a+ZmmBeq9pwkN0mwUb2WKpo7zFDCgoTUbpN6wJq4Bup4mngK0ZkNKQ6w3pDTEricpDa3eXJGaDa1No6Xh3tgJa5IaYr3B0fx+r5uzPzCa010D2TaCw+FwOBwOh5Oev++s49eZtSQnAAAAAElFTkSuQmCC'),
                ),
                Container(
                  height: 100,
                ),
                TextField(
                  onChanged: (text) {
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: 'Email', border: OutlineInputBorder()),
                ),
                SizedBox(height: 10),
                TextField(
                  onChanged: (text) {
                    password = text;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Passowrd', border: OutlineInputBorder()),
                ),
                SizedBox(height: 15),
                ElevatedButton(
                    onPressed: () {
                      if (email == 'pivow@hotmail.com' && password == '123') {
                        Navigator.of(context).pushReplacementNamed('/home');
                      } else {
                        Navigator.of(context).pushReplacementNamed('/');
                      }
                    },
                    child: Text('Entrar')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
