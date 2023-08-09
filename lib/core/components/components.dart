import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';


void navigateAndRemove(context, widget) => Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) => widget,),
        (route) => false);

void navigateTo(context, widget) => Navigator.push(context,
    MaterialPageRoute(builder: (context) => widget,));

Widget defaultTFF({
  TextEditingController? controller,
  FocusNode? focusNode,
  TextInputType? keyboardType,
  required String text,
  required IconData prefixIcon,
  IconData? suffixIcon,
  Function()? onPressedSuffix,
  String? Function(String?)? validate,
  bool isObscure = false,
  Function()? onTap,
  Function(String)? onSubmit,
})
{
  return TextFormField(
    controller: controller,
    onTap: onTap,
    onFieldSubmitted: onSubmit,
    focusNode: focusNode,
    keyboardType: keyboardType,
    obscureText: isObscure,
    maxLines: 1,

    decoration: InputDecoration(
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
        borderSide: BorderSide(style: BorderStyle.none),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
        borderSide: BorderSide(style: BorderStyle.none),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
        borderSide: BorderSide(style: BorderStyle.none),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
        borderSide: BorderSide(style: BorderStyle.none),),
      hintText: text,

      filled: true,
      prefixIcon: Padding(
        padding: EdgeInsets.only(left: 5.0, right: 5.0),
        child: Icon(
          prefixIcon,
          size: 24.0,
        ),
      ),
      suffixIcon: Padding(
        padding: EdgeInsets.only(right: 5.0,),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25.0),
          child: Material(
            color: Colors.transparent,
            child: IconButton(
              padding: EdgeInsets.all(0.0),
              onPressed: onPressedSuffix,
              icon: Icon(suffixIcon, size: 22.0,),
            ),
          ),
        ),
      ),
    ),
    validator: validate,
  );
}



TextStyle textTheme({
  double fontSize = 16.0,
  Color color = Colors.black87,
  FontWeight fontWeight = FontWeight.normal,
}) {
  return GoogleFonts.eduNswActFoundation(
    fontSize: fontSize,
    color: color,
    fontWeight: fontWeight,

  );
}

AppBar buildCustomAppBar({
  context,
  required String text,
  Function()? function,
  IconData icon = Icons.arrow_back_ios_rounded,
  bool centerTitle =true,
  Color backgroundColor= Colors.white,
  Color foregroundColor= Colors.black,
}) {
  return AppBar(
    backgroundColor: backgroundColor,
    foregroundColor:foregroundColor,
    elevation: 0,
    leading: IconButton(
      onPressed: function,
      icon: Icon(icon),
    ),
    centerTitle: centerTitle,
    title: Text(
      text,
      style: textTheme(fontSize: 22,color: foregroundColor),
    ),
  );
}
