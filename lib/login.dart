import 'package:dicoding_project_tani/mainpage.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({ Key? key }) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  
  String username = "";
  String password = "";
  List<String> jenisKelamin = ["Laki-laki", "Perempuan"];
  String gender = "";
  bool? isSetuju = false;


  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
     appBar: AppBar(
       backgroundColor: Colors.transparent,
       elevation: 0,
       leading: IconButton(onPressed: (){
         Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
       }, 
       icon: Icon(Icons.arrow_back_ios_rounded)),
       iconTheme: IconThemeData(
         color: Colors.black,
       ),
      ),
      extendBodyBehindAppBar:true,
      body: Center(
        child: Container (
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Color.fromARGB(239,152,247,175),
            
          ), 
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                  top: 65,
                  bottom: 50,
                ),
                child:Text(
                    'Tani Shop',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255,2,62,74),
                    ),
                  ), 
              ),
              Container(
                width: 300,
                child: Column(
                  children: [
                    TextField(
                      controller: usernameController,
                      decoration: InputDecoration(
                        border:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)
                        ),
                        hintText: 'UserName',
                        prefixIcon: Icon(Icons.people),
                      ),
                    ),
                    SizedBox(
                      height: 15 ,
                    ),
                    TextField(
                      obscureText: true,
                      controller: passwordController,
                      decoration: InputDecoration(
                        border:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)
                        ),
                        hintText: 'Password',
                        prefixIcon: Icon(Icons.password)
                      ),
                    ),
                    SizedBox(
                      height: 15 ,
                    ),
                    for(var item in jenisKelamin)
                    ListTile(
                      leading: Radio(
                        value: item,
                        groupValue: gender,
                        onChanged: (String? value){
                          setState(() {
                            gender = value!;
                          });
                        }
                      ),
                      title: Text(item),
                    ),
                    ListTile(
                      leading: Checkbox(
                        value: isSetuju, 
                        onChanged: (bool? value){
                          setState(() {
                            isSetuju = value;
                          });
                        },
                      ) ,
                      subtitle: Text("saya setuju untuk mengikuti semua persyaratan..."),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15 ,
              ),
              Container(
                width: 150,
                height: 50,
                child:ElevatedButton(
                  onPressed: () => submit(
                    context,
                    usernameController.text,
                    passwordController.text,
                    gender,
                    isSetuju
                  ),
                  child: Text('MASUK'),
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    primary: Color.fromARGB(255,2,62,74),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(239,152,247,175),
            border: Border(
              top: BorderSide(
                color: Colors.black,
                width: 0.5
              )
            )
          ),
          child: Text(
            '1915016078_Ahmad Fadila',
            textAlign: TextAlign.center,
            style: TextStyle(
               fontFamily: 'Oxygen',
               fontSize: 16,
               fontWeight: FontWeight.bold,
               color: Colors.black
            ),
          ),
        )
      ),
    );
  }
}

void submit(BuildContext context, String username, String password, String gender, bool? isSetuju) {
    if (username.isEmpty || password.isEmpty) {
      final snackBar = SnackBar(
        duration: const Duration(seconds: 5),
        content: Text("UserName dan Password harus diisi"),
        backgroundColor: Colors.red,
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      return;
    }

    AlertDialog alert = AlertDialog(
      title: Text("Berhasil"),
      content: Container(
        child: Text("Selamat $username Anda Berhasil login ini Password anda $password, anda adalah $gender dan anda ${ isSetuju! ? "Setuju" : "Tidak Setuju"}"),
      ),
      actions: [
        TextButton(
          child: Text('Ok'),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ],
    );

    showDialog(context: context, builder: (context) => alert);
    return;
  }