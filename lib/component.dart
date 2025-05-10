// ignore_for_file: prefer_typing_uninitialized_variables, use_build_context_synchronously, unused_local_variable

import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:onuche_david/Pages/Portfolio.dart';
import 'package:onuche_david/Pages/Projects/crypto_projects.dart';
import 'package:onuche_david/Pages/business_ventures.dart';
import 'package:onuche_david/Pages/contact.dart';
import 'package:onuche_david/Pages/faith.dart';
import 'package:onuche_david/Pages/help.dart';
import 'package:onuche_david/Pages/politics.dart';
import 'package:onuche_david/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/web.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;



var logger = Logger();
final TextEditingController _firstNameController = TextEditingController();
final TextEditingController _lastNameController = TextEditingController();
final TextEditingController _emailController = TextEditingController();
final TextEditingController _phoneController = TextEditingController();
final TextEditingController _messageController = TextEditingController();
final formkey=GlobalKey<FormState>();


class AnimatedCard extends StatefulWidget {

  final imagePath;
  final text;
  final fit;
  final reverse;
  final height;
  final width;

  const AnimatedCard(
      {super.key,
      @required this.imagePath,
      this.text,
      this.fit,
      this.reverse,
      this.height,
      this.width});

  @override
  // ignore: library_private_types_in_public_api
  _AnimatedCardState createState() => _AnimatedCardState();
}

class _AnimatedCardState extends State<AnimatedCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 4),
  )..repeat(reverse: true);

  late final Animation<Offset> _animation = Tween(
    begin: widget.reverse == true ? const Offset(0, 0.08) : Offset.zero,
    end: widget.reverse == true ? Offset.zero : const Offset(0, 0.08),
  ).animate(_controller);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Card(
        elevation: 30.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: const BorderSide(color: Colors.green),
        ),
        shadowColor: Colors.green,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                widget.imagePath,
                height: widget.height ?? 200.0,
                width: widget.width ?? 200.0,
                fit: widget.fit,
              ),
              const SizedBox(height: 10.0),
              widget.text == null ? const SizedBox() : SansBold(widget.text, 15.0),
            ],
          ),
        ),
      ),
    );
  }
}

class Sans extends StatelessWidget {
  final text;
  final size;

  const Sans(this.text, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontSize: size),
    );
  }
}

class SansBold extends StatelessWidget {
  
  final text;
  final size;

  const SansBold(this.text, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}
class TabsWeb extends StatefulWidget {
  final title;
  final route;

  const TabsWeb({super.key, this.title, this.route});

  @override
  // ignore: library_private_types_in_public_api
  _TabsWebState createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isSelected = false;
 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () { 
        Navigator.of(context).pushNamed(widget.route);
      },
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            isSelected = true;
          });
          // print("Entered");
        },
        onExit: (_) {
          setState(() {
            isSelected = false;
          });
          // print("Exit");
        },
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 100),
          curve: Curves.elasticIn,
          style: isSelected
              ? GoogleFonts.montserrat(
                  shadows: [
                      const Shadow(
                        color: Color(0xFF143109),
                        offset: Offset(0, -8),
                      ),
                    ],
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.transparent,
                  decoration: TextDecoration.underline,
                  decorationThickness: 1,
                  decorationColor: const Color(0xFF143109))
              : GoogleFonts.montserrat(fontSize: 18.0,),
          child: Text(widget.title,),
        ),
      ),
    );
  }
}

class TabsWebList extends StatefulWidget {
  const TabsWebList({super.key});

  @override
  State<TabsWebList> createState() => _TabsWebListState();
}

class _TabsWebListState extends State<TabsWebList> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 40),
        Spacer(flex: 1),
        SizedBox(width: 40,),
        TabsWeb(
          title: "Home",
          route: '/',
        ),
       SizedBox(width: 60,),
        TabsWeb(
          title: "Works",
          route: '/works',
        ),
       SizedBox(width: 60,),
        TabsWeb(
          title: "Contact",
          route: '/contact',
        ),
       Spacer(),
      // ElevatedButton(onPressed: () {}, style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.white54), overlayColor:  WidgetStatePropertyAll(Colors.grey),), child: Text("Hire Me!", style: GoogleFonts.montserrat(color: (const Color(0xFF143109)), fontSize: 11, fontWeight: FontWeight.bold,),)),
      // const SizedBox(width: 40),
      ],
    );
  }
}


class AddDataFirestore {
  CollectionReference response =
      FirebaseFirestore.instance.collection('messages'); 

  Future addResponse(final firstName, final lastName, final email,
      final phoneNumber, final message) async {
    return response.add({
      'first name': firstName,
      'last name': lastName,
      'email': email,
      'phone number': phoneNumber,
      'message': message
    }).then((value) {
      logger.d("Success");
      return true;
    }).catchError((error) {
      logger.d(error);
      return false;
    });
  }
}

// ignore: non_constant_identifier_names
Future DialogError(BuildContext context, String title) {
  return showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            title: SansBold(title, 20.0),
          ));
}


class TextForm extends StatelessWidget {
  final text;
  final containerWidth;
  final hintText;
  final maxLines;
  final controller;
  final validator;

  const TextForm(
      {super.key,
      @required this.text,
      @required this.containerWidth,
      @required this.hintText,
      this.maxLines,
      @required this.controller,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sans(text, 16.0),
        const SizedBox(height: 5),
        SizedBox(
          width: containerWidth,
          child: TextFormField(
            validator: validator,
            controller: controller,
            

            // ignore: prefer_if_null_operators
            maxLines: maxLines == null ? null : maxLines,
            decoration: InputDecoration(
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              focusedErrorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.teal),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.tealAccent, width: 2.0),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              hintText: hintText,
              hintStyle: GoogleFonts.poppins(fontSize: 14),
            ),
          ),
        ),
      ],
    );
  }
}


class Drawer2 extends StatelessWidget {
  const Drawer2({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor:  const Color.fromARGB(255, 20, 65, 41),
      child:  Padding(
        padding: const EdgeInsets.all(21.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius:30,
                  backgroundColor: Color.fromARGB(255, 20, 65, 41),
                  child: CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage("assets/Images/david_logo3.png"),
                    ),
                  ),
                const SizedBox(width: 14,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const SizedBox(width: 10),
                        Text("David Onuche" , style: GoogleFonts.lato(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13, ),),
                      ],
                    ),
                    TextButton(onPressed:() async {
              final Uri emailUri = Uri(
                scheme: 'mailto',
                path: 'onuchedavid34@gmail.com',
                query: encodeQueryParameters(<String, String>{
                  'subject': 'Hello!',
                  'body': 'I hope this email finds you well.',
                }),
              );
              if (await canLaunchUrl(emailUri)) {
                await launchUrl(emailUri);
              } else {
                throw 'Could not launch $emailUri';
              }
                    }, 
              child: Text("onuchedavid34@gmail.com", style: GoogleFonts.lato(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12, ),),),
                  ],
                ),
              ],
            ),
             const SizedBox(height: 20,),
            TextButton(
            onPressed:() {
              Navigator.of(context).push(MaterialPageRoute(builder: (builder) => const PortfolioPage()));
            }, 
            style: const ButtonStyle(overlayColor: WidgetStatePropertyAll(Colors.white38),),
            child:  Row(
              children: [
               const Icon(Icons.home_outlined, color: Colors.white,),
               const SizedBox(width: 10,),
                Text("Home", style: GoogleFonts.lato(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13, ),),
                const Spacer(),
                const Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 14,),
              ],
            )
           ),
           const SizedBox(height: 10,),
           TextButton(
            onPressed:() {
               Navigator.of(context).push(MaterialPageRoute(builder: (builder) => const Port()));
            }, 
            style: const ButtonStyle(overlayColor: WidgetStatePropertyAll(Colors.white38),),
            child:  Row(
              children: [
               const Icon(Icons.computer_outlined, color: Colors.white,),
               const SizedBox(width: 10,),
                Text("Portfolio", style: GoogleFonts.lato(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13, ),),
                const Spacer(),
                const Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 14,),
              ],
            )
           ),
            const SizedBox(height: 10,),
            const Divider(
                color: Colors.white,
                thickness: 0.1,
            ),
            const SizedBox(height: 10,),
           Padding(
             padding: const EdgeInsets.all(9.0),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text("MENU", style: GoogleFonts.lato(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12, ),),
                 Text("--", style: GoogleFonts.lato(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12, ),),
               ],
             ),
           ),
           const SizedBox(height: 5),
           TextButton(
            onPressed:() {
              Navigator.of(context).push(MaterialPageRoute(builder: (builder) => const Project()));
            }, 
            style: const ButtonStyle(overlayColor: WidgetStatePropertyAll(Colors.white38),),
            child:  Row(
              children: [
               const Icon(Icons.dashboard_outlined, color: Colors.white,),
               const SizedBox(width: 10,),
                Text("Projects", style: GoogleFonts.lato(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13, ),),
                const Spacer(),
                const Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 14,),
              ],
            )
           ),
           TextButton(
            onPressed:() {
              Navigator.of(context).push(MaterialPageRoute(builder: (builder) => const Faith1()));
            }, 
            style: const ButtonStyle(overlayColor: WidgetStatePropertyAll(Colors.white38),),
            child:  Row(
              children: [
               const Icon(Icons.church_outlined, color: Colors.white,),
               const SizedBox(width: 10,),
                Text("Faith", style: GoogleFonts.lato(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13, ),),
               const Spacer(),
                const Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 14,),
              ],
            )
                
           ,),
           TextButton(
            onPressed:() {
              Navigator.of(context).push(MaterialPageRoute(builder: (builder) => const Business1()));
            }, 
            style: const ButtonStyle(overlayColor: WidgetStatePropertyAll(Colors.white38),),
            child:  Row(
              children: [
               const Icon(Icons.business_outlined, color: Colors.white,),
               const SizedBox(width: 10,),
                Text("Business Ventures", style: GoogleFonts.lato(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13, ),),
               const Spacer(),
                const Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 14,),
              ],
            )
           ,),
           TextButton(
            onPressed:() {
              Navigator.of(context).push(MaterialPageRoute(builder: (builder) => const Politic()));
            }, 
            style: const ButtonStyle(overlayColor: WidgetStatePropertyAll(Colors.white38),),
            child:  Row(
              children: [
               const Icon(Icons.how_to_vote_outlined, color: Colors.white,),
               const SizedBox(width: 10,),
                Text("Political Journey", style: GoogleFonts.lato(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13, ),),
               const Spacer(),
                const Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 14,),
              ],
            )
           ,),
          // TextButton(
           // onPressed:() {}, 
           // style: const ButtonStyle(overlayColor: WidgetStatePropertyAll(Colors.white38),),
           // child:  Row(
           //   children: [
            //   const Icon(Icons.phone_android_outlined, color: Colors.white,),
            //   const SizedBox(width: 10,),
            //    Text("Blog", style: GoogleFonts.lato(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13, ),),
            //   const Spacer(),
             //   const Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 14,),
             // ],
            //)
           //,),
           TextButton(
            onPressed:() {
              Navigator.of(context).push(MaterialPageRoute(builder: (builder) => const Contact()));
            }, 
            style: const ButtonStyle(overlayColor: WidgetStatePropertyAll(Colors.white38),),
            child:  Row(
              children: [
               const Icon(Icons.phone_outlined, color: Colors.white,),
               const SizedBox(width: 10,),
                Text("Contact", style: GoogleFonts.lato(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13, ),),
               const Spacer(),
                const Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 14,),
              ],
            )
           ,),
           // const Switch(),
            const Spacer(flex: 3,),
           TextButton(
            onPressed:() {
              Navigator.of(context).push(MaterialPageRoute(builder: (builder) => const Help1()));
            }, 
            style: const ButtonStyle(overlayColor: WidgetStatePropertyAll(Colors.white38),),
            child:  Row(
              children: [
               const Icon(Icons.help_outline, color: Colors.white,),
               const SizedBox(width: 10,),
                Text("Help & Support", style: GoogleFonts.lato(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13, ),),
              ],
            )
                
           ,),
           // ignore: prefer_const_constructors
           //Switch(),
          ],
        ),
      ),
    );
  }
}
tealContainer(String text) {
  return Container(
    decoration: BoxDecoration(
        border: Border.all(
          color: Colors.tealAccent,
          style: BorderStyle.solid,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(5.0)),
    padding: const EdgeInsets.all(7.0),
    child: Text(
      text,
      style: GoogleFonts.openSans(fontSize: 15.0),
    ),
  );
}

class TabsWebList1 extends StatefulWidget {
  const TabsWebList1({super.key});

  @override
  State<TabsWebList1> createState() => _TabsWebList1State();
}

class _TabsWebList1State extends State<TabsWebList1> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       //  SizedBox(width: 10),
        Spacer(flex: 1),
        SizedBox(width: 20,),
        TabsWeb(
          title: "Home",
          route: '/',
        ),
       SizedBox(width: 30,),
        TabsWeb(
          title: "Works",
          route: '/works',
        ),
       SizedBox(width: 30,),
        TabsWeb(
          title: "Contact",
          route: '/contact',
        ),
       Spacer(),
      // ElevatedButton(onPressed: () {}, style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.white54), overlayColor:  WidgetStatePropertyAll(Colors.grey),), child: Text("Hire Me!", style: GoogleFonts.montserrat(color: (const Color(0xFF143109)), fontSize: 11, fontWeight: FontWeight.bold,),)),
      // const SizedBox(width: 40),
      ],
    );
  }
}

class ContactFormWeb2 extends StatefulWidget {
  const ContactFormWeb2({super.key});

  @override
  State<ContactFormWeb2> createState() => _ContactFormWeb2State();
}

class _ContactFormWeb2State extends State<ContactFormWeb2> {
  final formKey = GlobalKey<FormState>();
  

 /// ✅ Function to send an email via EmailJS
  Future<void> sendEmail() async {
    const serviceId = 'service_uogevgj';  // Replace with your EmailJS Service ID
    const templateId = 'template_v8uiuuu';  // Replace with your EmailJS Template ID
    const publicKey = 'jbN1RVSGfhvZBpqkw';  // Replace with your EmailJS Public Key

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': publicKey,
        'template_params': {
          'firstName': _firstNameController.text,
          'lastName': _lastNameController.text,
          'email': _emailController.text,
          'phone': _phoneController.text,
          'message': _messageController.text,
        }
      }),
    );

    if (response.statusCode == 200) {
      print("✅ Email Sent Successfully");
    } else {
      print("❌ Failed to send email");
    }
  }

  /// ✅ Function to store data in Firebase Firestore
  Future<void> storeDataInFirestore() async {
    try {
      await FirebaseFirestore.instance.collection('contacts').add({
        'firstName': _firstNameController.text,
        'lastName': _lastNameController.text,
        'email': _emailController.text,
        'phone': _phoneController.text,
        'message': _messageController.text,
        'timestamp': FieldValue.serverTimestamp(),
      });
      print("✅ Data Stored in Firebase Firestore");
    } catch (e) {
      print("❌ Error storing data in Firestore: $e");
    }
  }

  /// ✅ Function to handle form submission
  Future<void> handleSubmit() async {
    if (formKey.currentState!.validate()) {
      await storeDataInFirestore(); // Store in Firebase
      await sendEmail(); // Send email

      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Success"),
          content: const Text("Message sent successfully!"),
          actions: [TextButton(onPressed: () => Navigator.pop(context), child: const Text("OK"))],
        ),
      );

      formKey.currentState!.reset(); // Clear form after submission
    }
  }
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;

    return Form(
      key: formKey,
      child: Column(
        children: [
          const SizedBox(height: 30.0),
          const Text("Contact Me", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20.0),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  _buildTextField("First Name", _firstNameController),
                  const SizedBox(height: 15.0),
                  _buildTextField("Email", _emailController),
                ],
              ),
              Column(
                children: [
                  _buildTextField("Last Name", _lastNameController),
                  const SizedBox(height: 15.0),
                  _buildTextField("Phone Number", _phoneController),
                ],
              ),
            ],
          ),

          const SizedBox(height: 20.0),

          SizedBox(
            width: widthDevice / 1.5,
            child: TextFormField(
              decoration: _inputDecoration("Message"),
              maxLines: 10,
              controller: _messageController,
              validator: (text) {
                if (text == null || text.trim().isEmpty) {
                  return "Message is required";
                }
                return null;
              },
            ),
          ),

          const SizedBox(height: 20.0),

          MaterialButton(
            onPressed: handleSubmit,
            elevation: 5.0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            height: 60.0,
            minWidth: 200.0,
            color: Colors.tealAccent,
            child: const Text("Submit", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),

          const SizedBox(height: 10.0),
        ],
      ),
    );
  }

  /// A reusable function to create text fields
  Widget _buildTextField(String hintText, TextEditingController controller) {
    return SizedBox(
      width: 350.0,
      child: TextFormField(
        controller: controller,
        decoration: _inputDecoration(hintText),
        validator: (text) {
          if (text == null || text.trim().isEmpty) {
            return "$hintText is required";
          }
          return null;
        },
      ),
    );
  }

  /// A reusable function to create input decorations
  InputDecoration _inputDecoration(String hintText) {
    return InputDecoration(
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.teal),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.tealAccent, width: 2.0),
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      hintText: hintText,
      hintStyle: GoogleFonts.poppins(fontSize: 14),
    );
  }
}

class ContactFormMobile2 extends StatefulWidget {
  const ContactFormMobile2({super.key});

  @override
  State<ContactFormMobile2> createState() => _ContactFormMobile2State();
}

class _ContactFormMobile2State extends State<ContactFormMobile2> {
  final formKey = GlobalKey<FormState>();

  /// ✅ Function to send an email via EmailJS
  Future<void> sendEmail() async {
    const serviceId = 'service_uogevgj';  // Replace with your EmailJS Service ID
    const templateId = 'template_v8uiuuu';  // Replace with your EmailJS Template ID
    const publicKey = 'jbN1RVSGfhvZBpqkw';  // Replace with your EmailJS Public Key

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': publicKey,
        'template_params': {
          'firstName': _firstNameController.text,
          'lastName': _lastNameController.text,
          'email': _emailController.text,
          'phone': _phoneController.text,
          'message': _messageController.text,
        }
      }),
    );

    if (response.statusCode == 200) {
      print("✅ Email Sent Successfully");
    } else {
      print("❌ Failed to send email");
    }
  }

  /// ✅ Function to store data in Firebase Firestore
  Future<void> storeDataInFirestore() async {
    try {
      await FirebaseFirestore.instance.collection('contacts').add({
        'firstName': _firstNameController.text,
        'lastName': _lastNameController.text,
        'email': _emailController.text,
        'phone': _phoneController.text,
        'message': _messageController.text,
        'timestamp': FieldValue.serverTimestamp(),
      });
      print("✅ Data Stored in Firebase Firestore");
    } catch (e) {
      print("❌ Error storing data in Firestore: $e");
    }
  }

  /// ✅ Function to handle form submission
  Future<void> handleSubmit() async {
    if (formKey.currentState!.validate()) {
      await storeDataInFirestore(); // Store in Firebase
      await sendEmail(); // Send email

      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Success"),
          content: const Text("Message sent successfully!"),
          actions: [TextButton(onPressed: () => Navigator.pop(context), child: const Text("OK"))],
        ),
      );

      formKey.currentState!.reset(); // Clear form after submission
    }
  }

  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Form(
      key: formKey,
      child: Wrap(
        runSpacing: 20.0,
        spacing: 20.0,
        alignment: WrapAlignment.center,
        children: [
          const Text("Contact me", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
          _buildTextField2("First Name", _firstNameController),
          _buildTextField2("Email", _emailController),
           _buildTextField2("Last Name", _lastNameController),
           _buildTextField2("Phone Number", _phoneController),
           TextForm(
            text: "Message",
            containerWidth: widthDevice / 1.4,
            hintText: "Please type your message",
            maxLines: 10,
            controller: _messageController,
            validator: (text) {
              if (text.toString().isEmpty) {
                return "Message is required";
              }
            },
          ),
          MaterialButton(
            onPressed: handleSubmit,
            elevation: 20.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            height: 60.0,
            minWidth: widthDevice / 2.2,
            color: Colors.tealAccent,
            child: const SansBold("Submit", 20.0),
          )
        ],
      ),
    );
  }
  /// A reusable function to create text fields
  Widget _buildTextField2(String hintText, TextEditingController controller) {
    return SizedBox(
      width: 350.0,
      child: TextFormField(
        controller: controller,
        decoration: _inputDecoration2(hintText),
        validator: (text) {
          if (text == null || text.trim().isEmpty) {
            return "$hintText is required";
          }
          return null;
        },
      ),
    );
  }

  /// A reusable function to create input decorations
  InputDecoration _inputDecoration2(String hintText) {
    return InputDecoration(
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.teal),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.tealAccent, width: 2.0),
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      hintText: hintText,
      hintStyle: GoogleFonts.poppins(fontSize: 14),
    );
  }
}


