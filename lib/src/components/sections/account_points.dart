import 'package:flutter/material.dart';

import '../../themes/theme_colors.dart';
import '../box_card.dart';
import '../color_dot.dart';
import '../content_divison.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({super.key});

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
              'Pontos da conta',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const BoxCard(
            boxContent: _AccountPointsContent(),
          )
        ],
      ),
    );
  }
}

class _AccountPointsContent extends StatelessWidget {
  const _AccountPointsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Pontos totais:'),
        Text(
          '3000',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 8, top: 8),
          child: ContentDivision(),
        ),
        Text(
          'Objetivos:',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(3),
                  child: ColorDot(
                    color: ThemeColors.recentActivity['red'],
                  ),
                ),
                const Text('Entrega grátis: 15000pts')
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(3),
                  child: ColorDot(
                    color: ThemeColors.recentActivity['blue'],
                  ),
                ),
                const Text('1 mês de streaming: 30000pts')
              ],
            )
          ],
        )
      ],
    );
  }
}
