

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:qcs_app/design_system/process_indicator.dart';


// Argument associatd to this screen.
class ScreenHomeArguments {
  ScreenHomeArguments();
}



class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  static const routeName = '/home';

  @override
  ScreenHomeState createState() => ScreenHomeState();
}

class ScreenHomeState extends State<ScreenHome> {
  
  //late Future<LoginProfileRead?> futureProfileR;


  // == API ==
/*
  Future<LoginProfileRead?> readFromApi() async {
    final instance = await YecarApiSession.getSessionLoginApi();
    try {
      LoginProfileRead? profileR = await instance.loginProfileRead();

      if (profileR == null) {
        throw Exception('No profile');
      }

      //On met un setstate ici pour rebuild le scaffold quand l'appel api est fini
      //Sinon il arribe que l'on build la page avec des valeur null
      setState(() {
        user.firstname = profileR.firstname;
        user.lastname = profileR.lastname;
      });

      return profileR;
    } catch (e) {
      //Dans le cas ou on est pas log ça leve un exception
      ErrorTheme.networkError(context, e.toString());
    }
    //Si on est pas log il faut quand meme build la page donc on met des valeur "" et on rebuild
    setState(() {
      user.firstname = "";
      user.lastname = "";
    });
    // TODO ça ne sert a rien de retourner un truc comme ça, il faudra rendre cette fonction void
    // et supprimer le future builder du scaffold puisque qu'il ne sert a rien, on build le bouton avant meme de passer dans le future buidler
    return LoginProfileRead(
        firstname: "",
        lastname: "",
        email: "",
        tel1: "",
        address1: "",
        zip: "",
        city: "",
        description1: "");
  }
*/
  @override
  void initState() {
    super.initState();

  //  futureProfileR = readFromApi();
  }

  FutureOr onGoBack(dynamic value) {
  //  futureProfileR = readFromApi();
  }

  // === Build ===
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as ScreenHomeArguments;
   
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "test"
        ),
      ),
    
      body: FutureBuilder<LoginProfileRead?>(
        future: futureProfileR,
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data != null) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  
                 
                ],
              ),
            );
          } else {
            ProcessIndicator;
          }
        },
      ),
    );
  }
}
