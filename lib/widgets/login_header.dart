import 'package:flutter/material.dart';


class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      // Logo & Text
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          height: 150,
          image: AssetImage("")),
        Text("AFCON",style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height:12),
        Text("Noc Edition",style: Theme.of(context).textTheme.titleMedium,)
      ],
    );
  }
}