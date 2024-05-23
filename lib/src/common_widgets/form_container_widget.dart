// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:foodquest/src/constants/colors.dart';

class CommonTextfield extends StatefulWidget {
  final TextEditingController? controller;
  final Key? fieldKey;
  final bool? isPasswordField;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final TextInputType? inputType;
  final IconData? prefixIcon;

  const CommonTextfield(
      {this.controller,
      this.isPasswordField,
      this.fieldKey,
      this.hintText,
      this.labelText,
      this.helperText,
      this.onSaved,
      this.validator,
      this.onFieldSubmitted,
      this.inputType,
      this.prefixIcon});

  @override
  _CommonTextfieldState createState() => new _CommonTextfieldState();
}

class _CommonTextfieldState extends State<CommonTextfield> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xff4338CA);
    const secondaryColor = Color(0xff6D28D9);
    const accentColor = Color(0xffffffff);
    const backgroundColor = Color(0xffffffff);
    const errorColor = Color(0xffEF4444);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.labelText!,
          textAlign: TextAlign.start,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          width: double.infinity,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(10),
          ),
          child: new TextFormField(
            textAlignVertical: TextAlignVertical.center,
            style: Theme.of(context).textTheme.bodyMedium,
            controller: widget.controller,
            keyboardType: widget.inputType,
            key: widget.fieldKey,
            obscureText: widget.isPasswordField == true ? _obscureText : false,
            onSaved: widget.onSaved,
            validator: widget.validator,
            onFieldSubmitted: widget.onFieldSubmitted,
            decoration: new InputDecoration(
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffFF3636)),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Theme.of(context).colorScheme.onSurface),
                borderRadius: BorderRadius.circular(10),
              ),
              prefixIcon: widget.prefixIcon != null
                  ? Icon(
                      widget.prefixIcon,
                      color: Theme.of(context).colorScheme.onSurface,
                    )
                  : null,
              filled: true,
              hintText: widget.hintText,
              hintStyle: Theme.of(context).textTheme.bodySmall,
              hintFadeDuration: const Duration(milliseconds: 100),
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              suffixIcon: new GestureDetector(
                onTap: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                child: widget.isPasswordField == true
                    ? Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                        color:
                            _obscureText == false ? Colors.blue : Colors.grey,
                      )
                    : Text(""),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
