import 'package:flutter/material.dart';

class SearchDialog extends StatefulWidget {
  final String currentSearch;

  SearchDialog({this.currentSearch});

  @override
  _SearchDialogState createState() => _SearchDialogState(currentSearch);
}

class _SearchDialogState extends State<SearchDialog> {
  _SearchDialogState(String currentSearch)
      : _textEditingController = TextEditingController(text: currentSearch);

  final TextEditingController _textEditingController;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 2,
          left: 2,
          right: 2,
          child: Card(
            child: TextField(
              controller: _textEditingController,
              textInputAction: TextInputAction.search,
              autofocus: true,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 15),
                border: InputBorder.none,
                prefixIcon: IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Colors.grey[700],
                  onPressed: () => Navigator.of(context).pop(),
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.close),
                  color: Colors.grey[700],
                  onPressed: () => _textEditingController.clear(),
                ),
              ),
              onSubmitted: (text) => Navigator.of(context).pop(text),
            ),
          ),
        )
      ],
    );
  }
}
