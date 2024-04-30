import 'package:alura_style/src/components/box_card.dart';
import 'package:flutter/material.dart';

class AccountActions extends StatelessWidget {
  const AccountActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Text(
              'Ações da Linha',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <InkWell>[
              InkWell(
                onTap: () {},
                child: const BoxCard(
                  boxContent: _AccountActionsContent(
                    icon: Icon(Icons.account_balance_wallet),
                    text: 'Depositar',
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: const BoxCard(
                  boxContent: _AccountActionsContent(
                    icon: Icon(Icons.cached),
                    text: 'Tranferir',
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: const BoxCard(
                  boxContent: _AccountActionsContent(
                    icon: Icon(Icons.center_focus_strong),
                    text: 'Ler',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _AccountActionsContent extends StatelessWidget {
  final Icon icon;
  final String text;

  const _AccountActionsContent(
      {super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 74,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: icon,
          ),
          Text(text),
        ],
      ),
    );
  }
}
