import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xlo/blocs/drawer_bloc.dart';
import 'package:xlo/common/custom_drawer/widgets/option_tile.dart';

class OptionsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DrawerBloc _drawerBloc = Provider.of<DrawerBloc>(context);

    void _setPage(int page) {
      Navigator.of(context).pop();
      _drawerBloc.setPage(page);
    }

    return StreamBuilder(
      stream: _drawerBloc.outPage,
      builder: (context, snapshot) {
        return Column(
          children: <Widget>[
            OptionTile(
              label: 'Anúncios',
              iconData: Icons.list,
              onTap: () => _setPage(0),
              highlighted: snapshot.data == 0,
            ),
            OptionTile(
              label: 'Inserir Anúncio',
              iconData: Icons.edit,
              onTap: () => _setPage(1),
              highlighted: snapshot.data == 1,
            ),
            OptionTile(
              label: 'Chat',
              iconData: Icons.chat,
              onTap: () => _setPage(2),
              highlighted: snapshot.data == 2,
            ),
            OptionTile(
              label: 'Favoritos',
              iconData: Icons.favorite,
              onTap: () => _setPage(3),
              highlighted: snapshot.data == 3,
            ),
            OptionTile(
              label: 'Minha Conta',
              iconData: Icons.person,
              onTap: () => _setPage(4),
              highlighted: snapshot.data == 4,
            )
          ],
        );
      },
    );
  }
}
