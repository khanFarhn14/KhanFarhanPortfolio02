import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/link.dart';
import '../../model/email_service.dart';
import '../../utilities/constants/colors.dart';
import '../../utilities/constants/constants.dart';
import '../../utilities/font_styles/font_style.dart';
import '../buttons/fill_button.dart';
import '../buttons/outlined_button.dart';
import '../input_decoration.dart';
import 'my_card.dart';
import 'package:http/http.dart' as http;

// ignore: unused_field
String _name = "";
// ignore: unused_field
String _email = "";
// ignore: unused_field
String _message = "";
// Future statusCode;

class Connect extends StatefulWidget {
  const Connect({super.key});

  @override
  State<Connect> createState() => _ConnectState();
}

class _ConnectState extends State<Connect> {

  @override
  Widget build(BuildContext context) {
    final keyForm = GlobalKey<_InputFormState>();

    final double screenWidth = MediaQuery.of(context).size.width;
    final double inputWidth = screenWidth < 900 ? screenWidth : (screenWidth/5)+40;
    final double horizontalPadding = screenWidth < 900 ? screenWidth < 600 ? 24 : 64 : (screenWidth/20);

    final double fontCardTitle = screenWidth < 600 ? 14 : 16;
    final double fontCardDes = screenWidth < 600 ? 10 : 14;
    final double fontInput = screenWidth < 1280 ? screenWidth < 600 ? mobilecontentFontSize : tabletcontentFontSize : desktpcontentFontSize;
    final double fontButton = screenWidth < 600 ? mobilecontentFontSize : tabletcontentFontSize;
    final double backgroundHeight = screenWidth < 900 ? screenWidth < 670 ? screenWidth < 400 ? (screenWidth-20)+50 : (screenWidth/2)+150 : (screenWidth/3)+200 : (screenWidth/3)+40;

    return Column(
      children: [
        const SizedBox(height: 40,),

        // background
        Stack(
          alignment: Alignment.centerLeft,
          clipBehavior: Clip.none,
          children: [

            Container(
              width: screenWidth,
              height: backgroundHeight,
              color: primaryDark,
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: screenWidth < 900 ?  
              // For Small screen
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InputForm(inputWidth: inputWidth, fontSize: fontInput, key: keyForm),

                  const SizedBox(height: 24,),
                ],
              )
              : 
              // For Big Screen
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      InputForm(inputWidth: inputWidth, fontSize: fontInput, key: keyForm),

                      MyCard(cardFontSize: fontCardTitle, cardDesFontSize: fontCardDes),
                    ],
                  ),

                  const SizedBox(height: 32,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: const FillButton(
                          label: 'Send Message',
                          verticalPad: 8,
                          horizontalPad: 16,
                          fontSize: desktpcontentFontSize,
                        ),
                        onTap: () {
                          if(keyForm.currentState!.formKey.currentState!.validate()){

                            sendMessage(
                              name: _name,
                              email: _email,
                              message: _message,
                              screenWidth: screenWidth
                            );
                            keyForm.currentState?.nameController.clear();
                            keyForm.currentState?.emailController.clear();
                            keyForm.currentState?.messageController.clear();
                          }
                        },
                      ),

                      Link(
                        target: LinkTarget.blank,
                        uri: getResumeLink(),
                        builder: (context, followLink) => GestureDetector(
                          onTap: followLink,
                          child: const OutLinedButton(
                            label: 'My Resume',
                            verticalPad: 8,
                            horizontalPad: 16,
                            fontSize: desktpcontentFontSize,
                            icon: Icons.link,
                          ),
                        )
                      )

                    ],
                  ),
                ],
              ),
            ),

            screenWidth < 900 ? Positioned(
              bottom: 16,
              left: screenWidth < 600 ? 24 : 64,
              child: ElevatedButton(
                onPressed: () {
                  if(keyForm.currentState!.formKey.currentState!.validate()){
                    
                    sendMessage(
                      name: _name,
                      email: _email,
                      message: _message,
                      screenWidth: screenWidth,
                    );
            
                    keyForm.currentState?.nameController.clear();
                    keyForm.currentState?.emailController.clear();
                    keyForm.currentState?.messageController.clear();
                  }
                },
                style: primaryButtonStyle(fontButton),
                child: const Text('Send Messsage',)
              ),
            ) : const SizedBox(height: 0,),
    
            screenWidth < 850 ? 
            const SizedBox(height: 0,)
            : 
            Positioned(
              top: -((screenWidth/12)-40),
              left: -((screenWidth/30)-14),
              child: SvgPicture.asset(getIllustrationAnchor(), height: screenWidth/12,)
            )
          ],
        )
      ],
    );
  }
  Future sendMessage({required String name, required String email, required String message, required double screenWidth}) async{
    // ignore: unused_local_variable
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body : json.encode({
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': userId,
        'template_params': {
          'user_name': name,
          'user_email': email,
          'message': message,
        }
      }),
    );

    // ignore: use_build_context_synchronously
    response.statusCode == 200 ? ScaffoldMessenger.of(context).showSnackBar(snackbarSended(screenWidth)) : ScaffoldMessenger.of(context).showSnackBar(snackbarError(screenWidth));
  }
}

class InputForm extends StatefulWidget {
  final double inputWidth, fontSize;
  const InputForm({super.key, required this.inputWidth, required this.fontSize});

  @override
  State<InputForm> createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
   @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    messageController.dispose();
    super.dispose();
  }
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          // Name
          SizedBox(
            width: widget.inputWidth,
            child: TextFormField(
              controller: nameController,
              cursorColor: secondary,
              style: content(widget.fontSize),
              decoration: textInputDecoration(widget.fontSize, 'Your Name'),
                
              validator: (val)
              {
                final usernameRegExp = RegExp(r'^[a-zA-Z ]{2,26}$');
                if(val!.isEmpty)
                {
                  return "You forget to enter your Name!";
                }else if(!usernameRegExp.hasMatch(val)){
                  return "Please enter valid Name!";
                }else{
                  return null;
                }
              },

              onChanged: (val){
                setState(() {
                  _name = val;
                });
              },
            ),
          ),
              
          // Email
          SizedBox(
            width: widget.inputWidth,
            child: TextFormField(
              controller: emailController,
              cursorColor: secondary,
              style: content(widget.fontSize),
              decoration: textInputDecoration(widget.fontSize, 'Your Email'),
                
              keyboardType: TextInputType.emailAddress,
                
              validator: (value)
              {
                if(value!.isEmpty || !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value))
                {
                  return "Please enter a valid Email!";
                }else{
                  return null;
                }
              },

              onChanged: (val){
                setState(() {
                  _email = val;
                });
              },
            ),
          ),
              
          // Message
          SizedBox(
            width: widget.inputWidth,
            child: TextFormField(
              controller: messageController,
              cursorColor: secondary,
              style: content(widget.fontSize),
              decoration: textInputDecoration(widget.fontSize, 'Message'),
              maxLines: 5,

              validator: (value)
              {
                if(value!.isEmpty)
                {
                  return "Please enter a message!";
                }else{
                  return null;
                }
              },

              onChanged: (val){
                setState(() {
                  _message = val;
                });
              },
            ),
          ),
        ],
      )
    );
  }
}



SnackBar snackbarSended(double screenWidth) => SnackBar(
  content: Center(
    child: Text('Email Sended', style: headingSmall(mobileH3FontSize).copyWith(color: const Color(0xff6BBF59)))
  ),

  behavior: SnackBarBehavior.floating,

  shape: const StadiumBorder(
    side: BorderSide(
      color: Color(0xff6BBF59),
      width: 2,
    )
  ),

  elevation: 5,

  margin: EdgeInsets.symmetric(horizontal: (screenWidth/4), vertical: 24),

  backgroundColor: primary,
  duration: const Duration(milliseconds: 2000),
);


SnackBar snackbarError(double screenWidth) => SnackBar(
  content: Center(
    child: Text('An Error Occur!', style: headingSmall(mobileH3FontSize).copyWith(color: const Color(0xffEF5B5B)))
  ),

  behavior: SnackBarBehavior.floating,

  shape: const StadiumBorder(
    side: BorderSide(
      color: Color(0xffEF5B5B),
      width: 2,
    )
  ),

  elevation: 5,

  margin: EdgeInsets.symmetric(horizontal: (screenWidth/4), vertical: 24),

  backgroundColor: primary,
  duration: const Duration(milliseconds: 2000),
);
