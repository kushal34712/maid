import 'package:flutter/material.dart';
import 'package:maid/providers/desktop_layout.dart';
import 'package:maid/ui/desktop/widgets/buttons/user_button.dart';
import 'package:provider/provider.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary,
      padding: const EdgeInsets.symmetric(vertical: 10),
      width: 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildTopButtons(context),
          buildBottomButtons(context),
        ],
      ),
    );
  }

  Widget buildTopButtons(BuildContext context) {
    return Column(
      children: [
        IconButton(
          icon: const Icon(Icons.view_sidebar_rounded),
          onPressed: () {
            context.read<DesktopLayout>().toggleSidePanel();
          },
        ),
      ],
    );
  }

  Widget buildBottomButtons(BuildContext context) {
    return Column(
      children: [
        IconButton(
          icon: const Icon(Icons.terminal_rounded),
          onPressed: () {
            context.read<DesktopLayout>().toggleTerminal();
          },
        ),
        IconButton(
          icon: const Icon(Icons.settings_rounded),
          onPressed: () {
            // TODO: Implement settings page navigation
          }
        ),
        const UserButton(),
      ],
    );
  }
}