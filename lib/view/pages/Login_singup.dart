import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoginSingup extends StatefulWidget {
  const LoginSingup({Key? key}) : super(key: key);

  @override
  State<LoginSingup> createState() => _LoginSingupState();
}

class _LoginSingupState extends State<LoginSingup> {
  int currentSt = 0;

  String name="";
  String email="";
  String Password="";
  String Confrom="";

  String us ="";
  String uspa ="";
  GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
   GlobalKey<FormState> k = GlobalKey<FormState>();
  TextEditingController n = TextEditingController();
  TextEditingController e = TextEditingController();
  TextEditingController p = TextEditingController();
  TextEditingController p1 = TextEditingController();
  TextEditingController l1 = TextEditingController();
  TextEditingController l2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stepper App"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Theme(
        data: ThemeData(
          colorScheme: Theme.of(context).colorScheme.copyWith(
                primary: Colors.deepPurple,
                background: Colors.red,
                secondary: Colors.deepPurple,
              ),
        ),
        child: Stepper(
          onStepContinue: () {
            setState(() {
              
            });
          },
          onStepCancel: () {
            setState(() {});
          },
          controlsBuilder: (BuildContext, ControlsDetails) {
            return (currentSt ==0)?Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if(_globalKey.currentState!.validate())
                      {
                        _globalKey.currentState!.save();
                        if (currentSt <2) {
                          currentSt++;
                        }
                      }
                    });
                  },
                  child: Text("Continue"),
                ),
                SizedBox(
                  width: 20,
                ),
                OutlinedButton(onPressed: (){
                  setState(() {
                    if (currentSt>0) {
                    currentSt--;
              }
                  });
                }, child: Text("Cancel"))
              ],
            ):(currentSt == 1)?Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      
                      if(k.currentState!.validate())
                      {
                      k.currentState!.save();
                        if (currentSt <2) {
                          currentSt++;
                        }
                      }
                      
                    });
                  },
                  child: Text("Continue"),
                ),
                SizedBox(
                  width: 20,
                ),
                OutlinedButton(onPressed: (){
                  setState(() {
                    if (currentSt>0) {
                    currentSt--;
              }
                  });
                }, child: Text("Cancel"))
              ],
            ):Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      
                        
                        if (currentSt <2) {
                          currentSt++;
                        }
                      
                    });
                  },
                  child: Text("Continue"),
                ),
                SizedBox(
                  width: 20,
                ),
                OutlinedButton(onPressed: (){
                  setState(() {
                    if (currentSt>0) {
                    currentSt--;
              }
                  });
                }, child: Text("Cancel"))
              ],
            );
          },
          currentStep: currentSt,
          type: StepperType.horizontal,
          steps: [
            Step(
              state: (currentSt > 0) ? StepState.complete : StepState.editing,
              isActive: (currentSt >= 0) ? true : false,
              title: Text(
                "SignUp",
              ),
              content: Form(
                key: _globalKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: n,
                      onChanged: (newValue) {
                        setState(() {
                          name = newValue;
                        });
                      },
                      validator: (Value) {
                        if (name.isEmpty) {
                          return "Enter Full Name...";
                        }
                      },
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: "Full Name*",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: e,
                      onChanged: (newValue) {
                        setState(() {
                          email = newValue;
                        });
                      },
                      validator: (Value) {
                        if (email.isEmpty) {
                          return "Enter EmailId..";
                        }
                      },
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        labelText: "Email",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: p,
                      onChanged: (newValue) {
                        setState(() {
                          Password = newValue;
                        });
                      },
                      validator: (Value) {
                        if (Password.isEmpty) {
                          return "Enter Password..";
                        } else if (Password.length < 10) {
                          return "plases! Enter 10 Chareter..";
                        }
                      },
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.security),
                        labelText: "Password",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: p1,
                      onChanged: (newValue) {
                        setState(() {
                          Confrom = newValue;
                        });
                      },
                      validator: (Value) {
                        if (Confrom.isEmpty) {
                          return "Enter EmailId..";
                        } else if (Confrom.length < 10) {
                          return "plases! Enter 10 Chareter..";
                        } 
                      },
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.security),
                        labelText: "Confrom Password",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            (currentSt == 1)
                ? Step(
                    state: (currentSt > 1)
                        ? StepState.complete
                        : StepState.editing,
                    isActive: (currentSt >= 1) ? true : false,
                    title: Text(
                      "Login",
                    ),
                    content: Form(
                      key: k,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: l1,
                            onChanged: (newValue) {
                        setState(() {
                          us = newValue;
                        });
                      },
                      validator: (Value) {
                        if (us.isEmpty) {
                          return "Enter Full Name...";
                        }
                      },
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              labelText: "User Name*",
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: l2,
                            onChanged: (newValue) {
                        setState(() {
                          uspa = newValue;
                        });
                      },
                      validator: (Value) {
                        if (uspa.isEmpty) {
                          return "Enter Password...";
                        }
                        else if(uspa.length >10)
                        {
                          return "Plses Enter Password";
                        }
                      },
                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.security),
                              labelText: "Password*",
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  )
                : Step(
                    isActive: (currentSt >= 1) ? true : false,
                    title: Text(
                      "Login",
                    ),
                    content: Form(
                      key: k,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: l1,
                      onChanged: (newValue) {
                        setState(() {
                          us = newValue;
                        });
                      },
                      validator: (Value) {
                        if (us.isEmpty) {
                          return "Enter Full Name...";
                        }
                      },
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              labelText: "User Name*",
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: l2,
                      onChanged: (newValue) {
                        setState(() {
                          uspa = newValue;
                        });
                      },
                      validator: (Value) {
                        if (uspa.isEmpty) {
                          return "Enter Password...";
                        }
                        else if(uspa.length >10)
                        {
                          return "Plses Enter Password";
                        }
                      },
                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.security),
                              labelText: "Password*",
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
            (currentSt == 2)
                ? Step(
                    state: (currentSt >= 2)
                        ? StepState.complete
                        : StepState.editing,
                    isActive: (currentSt >= 2) ? true : false,
                    title: Text(
                      "Home",
                    ),
                    content: Icon(Icons.done_sharp),
                  )
                : Step(
                    isActive: (currentSt >= 2) ? true : false,
                    title: Text(
                      "Home",
                    ),
                    content: Icon(Icons.done_sharp),
                  ),
          ],
        ),
      ),
    );
  }
}
