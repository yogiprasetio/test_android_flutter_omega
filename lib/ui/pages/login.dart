part of 'pages.dart';

class Login extends StatelessWidget {
  // const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController userNameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    String userName,password;
    Widget inputPassword(){
      return Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),
                    Container(
                      height: 50,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: Center(
                        child: Expanded(child: TextFormField(
                          style: blackFontStyle3,
                          obscureText: true,
                          controller: passwordController,
                           validator: (value){
                                if(value!.isEmpty){
                                    return 'Password tidak boleh kosong';
                                }
                          },
                          decoration: InputDecoration.collapsed(
                            hintText: 'Masukkan Password',
                            hintStyle: greyFontStyle,
                            ),
                        )),
                      ),
                    )
                  ],
                )
              );
    }

    Widget inputUsername(){
      return Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),
                    Container(
                      height: 50,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: Center(
                        child: Expanded(child: TextFormField(
                          style: blackFontStyle3,
                          controller: userNameController,
                          validator: (value){
                                if(value!.isEmpty){
                                    return 'email tidak boleh kosong';
                                }
                          },
                          decoration: InputDecoration.collapsed(
                            hintText: 'Masukkan Username',
                            hintStyle: greyFontStyle,
                            ),
                        )),
                      ),
                    )
                  ],
                )
              );
    }

    return Scaffold(
      body: Background(
        child: Container(
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Text('Username ', style: blackFontStyle1,textAlign: TextAlign.center,),
                    ),
                    inputUsername(),
                    SizedBox(height: defaultMargin),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Text('Password ', style: blackFontStyle1,textAlign: TextAlign.center,),
                    ),
                    inputPassword(),
                    SizedBox(height: (defaultMargin/2)*2.5,),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                      child: RaisedButton(
                        onPressed: () {
                          userName = userNameController.text;
                          password = passwordController.text;
                          if(userName == "gbs_user" && password == "12345" ){
                                // Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                            }else{
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  backgroundColor: Colors.red,
                                  content: Text(
                                    'maaf anda tidak bisa mengakses modul tersebut!',
                                    textAlign: TextAlign.center,
                                  ),
                                  ),
                              );
                            }
                        },
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        textColor: thirdColor,
                        padding: const EdgeInsets.all(0),
                        child: Container(
                          alignment: Alignment.center,
                          height: 50.0,
                          width: 200,
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(80.0),
                            gradient: new LinearGradient(
                              colors: [
                                mainColor,
                                secondaryColor
                              ]
                            )
                          ),
                          padding: const EdgeInsets.all(0),
                          child: Text(
                            "LOGIN",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            ),
    );
  }//WidgetUtama
}