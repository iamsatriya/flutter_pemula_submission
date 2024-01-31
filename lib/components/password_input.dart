import 'package:flutter/material.dart';

class PasswordInput extends StatefulWidget {
  const PasswordInput({super.key});

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: !_isVisible,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 16,
        ),
        hintText: 'Password',
        suffixIcon: IconButton(
          icon: _isVisible
              ? const Icon(Icons.visibility_off)
              : const Icon(Icons.visibility),
          onPressed: () {
            setState(() {
              _isVisible = !_isVisible;
            });
          },
        ),
      ),
    );
  }
}
