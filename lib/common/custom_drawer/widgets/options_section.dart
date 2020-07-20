import 'package:flutter/material.dart';
import 'package:xlo/common/custom_drawer/widgets/option_tile.dart';

class OptionsSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        OptionTile(
          label: 'Anúncios',
          iconData: Icons.list,
          onTap: () => {},
          highlighted: false,
        ),
        OptionTile(
          label: 'Inserir Anúncio',
          iconData: Icons.edit,
          onTap: () => {},
          highlighted: false,
        ),
        OptionTile(
          label: 'Chat',
          iconData: Icons.chat,
          onTap: () => {},
          highlighted: false,
        ),
        OptionTile(
          label: 'Favoritos',
          iconData: Icons.favorite,
          onTap: () => {},
          highlighted: false,
        ),
        OptionTile(
          label: 'Minha Conta',
          iconData: Icons.person,
          onTap: () => {},
          highlighted: false,
        )
      ],
    );
  }

}
