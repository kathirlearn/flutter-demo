import 'package:flutter/material.dart';


class MyLogin extends StatelessWidget {
  MyLogin({super.key});

  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "example@gmail.com",
                  border: OutlineInputBorder(),
                ),
                validator: (value)
                {
                  if(value == null || value.isEmpty)
                  {
                    return "Please Enter Email";
                  }
                  if(!value.contains("@"))
                  {
                    return "Please Enter Valid Email";
                  }
                  return null;
                },
              ),

              SizedBox(height: 10,),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "password",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if(value == null || value.isEmpty || value.length < 6){
                    return "Please enter correct password ";
                  }
                },
              ), //_________________________

              SizedBox(height: 10,),

              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: (){

                      },
                      child: Text("Login")))
            ],
          ),
        ),
      ),
    );
  }
}