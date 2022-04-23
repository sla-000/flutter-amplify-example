import 'package:amplify_example/ui/cancel_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClientNameDialog extends StatefulWidget {
  const ClientNameDialog({
    Key? key,
  }) : super(key: key);

  @override
  State<ClientNameDialog> createState() => _ClientNameDialogState();
}

class _ClientNameDialogState extends State<ClientNameDialog> {
  final TextEditingController _clientNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: const Text('Add client order'),
      content: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
          child: TextField(
            controller: _clientNameController,
            autofocus: true,
            decoration: const InputDecoration(hintText: 'Client name'),
          ),
        ),
      ),
      actions: <Widget>[
        const CancelButton(),
        TextButton(
          onPressed: () => Navigator.of(context).pop(_clientNameController.text),
          child: const Text('OK'),
        ),
      ],
    );
  }
}

class ClearDialog extends StatelessWidget {
  const ClearDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: const Text('Clear order?'),
      actions: <Widget>[
        const CancelButton(),
        TextButton(
          onPressed: () => Navigator.of(context).pop(true),
          child: const Text('OK'),
        ),
      ],
    );
  }
}
