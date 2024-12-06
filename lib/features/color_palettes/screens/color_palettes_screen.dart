import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:material_playground/features/color_palettes/widgets/scheme.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/constants.dart';
import '../widgets/color_chip.dart';
import '../widgets/color_group.dart';

class ColorPalettesScreen extends StatelessWidget {
  const ColorPalettesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Color selectedColor = Theme.of(context).primaryColor;
    ThemeData lightTheme = ThemeData(
      colorSchemeSeed: selectedColor,
      brightness: Brightness.light,
    );
    ThemeData darkTheme = ThemeData(
      colorSchemeSeed: selectedColor,
      brightness: Brightness.dark,
    );

    Widget schemeLabel(String brightness) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Text(
          brightness,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      );
    }

    Widget schemeView(ThemeData theme) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ColorSchemeView(
          colorScheme: theme.colorScheme,
        ),
      );
    }

    Widget dynamicColorNotice() => RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: Theme.of(context).textTheme.bodySmall,
        children: [
          const TextSpan(
            text: 'To create color schemes based on a '
                'platform\'s implementation of dynamic color, '
                'use the ',
          ),
          TextSpan(
            text: 'dynamic_color',
            style: const TextStyle(decoration: TextDecoration.underline),
            recognizer: TapGestureRecognizer()
              ..onTap = () async {
                final url = Uri.parse(
                  'https://pub.dev/packages/dynamic_color',
                );
                if (!await launchUrl(url)) {
                  throw Exception('Could not launch $url');
                }
              },
          ),
          const TextSpan(text: ' package.'),
        ],
      ),
    );

    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < narrowScreenWidthThreshold) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  dynamicColorNotice(),
                  divider,
                  schemeLabel('Light ColorScheme'),
                  schemeView(lightTheme),
                  divider,
                  divider,
                  schemeLabel('Dark ColorScheme'),
                  schemeView(darkTheme),
                ],
              ),
            );
          } else {
            Color seed = Theme.of(context).colorScheme.primary;
            ColorScheme lightScheme = ColorScheme.fromSeed(
                seedColor: seed, brightness: Brightness.light);
            ColorScheme darkScheme = ColorScheme.fromSeed(
                seedColor: seed, brightness: Brightness.dark);
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    SchemePreview(
                      label: "Light ColorScheme",
                      scheme: lightScheme,
                      brightness: Brightness.light,
                      contrast: 1.0,
                      colorMatch: false,
                    ),
                    const SizedBox(height: 16),
                    SchemePreview(
                      label: "Dark ColorScheme",
                      scheme: darkScheme,
                      brightness: Brightness.dark,
                      contrast: 1.0,
                      colorMatch: false,
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}

class ColorSchemeView extends StatelessWidget {
  const ColorSchemeView({super.key, required this.colorScheme});

  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ColorGroup(
          children: [
            ColorChip(
              label: 'primary',
              color: colorScheme.primary,
              onColor: colorScheme.onPrimary,
            ),
            ColorChip(
              label: 'onPrimary',
              color: colorScheme.onPrimary,
              onColor: colorScheme.primary,
            ),
            ColorChip(
              label: 'primaryContainer',
              color: colorScheme.primaryContainer,
              onColor: colorScheme.onPrimaryContainer,
            ),
            ColorChip(
              label: 'onPrimaryContainer',
              color: colorScheme.onPrimaryContainer,
              onColor: colorScheme.primaryContainer,
            ),
          ],
        ),
        divider,
        ColorGroup(
          children: [
            ColorChip(
              label: 'primaryFixed',
              color: colorScheme.primaryFixed,
              onColor: colorScheme.onPrimaryFixed,
            ),
            ColorChip(
              label: 'onPrimaryFixed',
              color: colorScheme.onPrimaryFixed,
              onColor: colorScheme.primaryFixed,
            ),
            ColorChip(
              label: 'primaryFixedDim',
              color: colorScheme.primaryFixedDim,
              onColor: colorScheme.onPrimaryFixedVariant,
            ),
            ColorChip(
              label: 'onPrimaryFixedVariant',
              color: colorScheme.onPrimaryFixedVariant,
              onColor: colorScheme.primaryFixedDim,
            ),
          ],
        ),
        divider,
        ColorGroup(
          children: [
            ColorChip(
              label: 'secondary',
              color: colorScheme.secondary,
              onColor: colorScheme.onSecondary,
            ),
            ColorChip(
              label: 'onSecondary',
              color: colorScheme.onSecondary,
              onColor: colorScheme.secondary,
            ),
            ColorChip(
              label: 'secondaryContainer',
              color: colorScheme.secondaryContainer,
              onColor: colorScheme.onSecondaryContainer,
            ),
            ColorChip(
              label: 'onSecondaryContainer',
              color: colorScheme.onSecondaryContainer,
              onColor: colorScheme.secondaryContainer,
            ),
          ],
        ),
        divider,
        ColorGroup(
          children: [
            ColorChip(
              label: 'secondaryFixed',
              color: colorScheme.secondaryFixed,
              onColor: colorScheme.onSecondaryFixed,
            ),
            ColorChip(
              label: 'onSecondaryFixed',
              color: colorScheme.onSecondaryFixed,
              onColor: colorScheme.secondaryFixed,
            ),
            ColorChip(
              label: 'secondaryFixedDim',
              color: colorScheme.secondaryFixedDim,
              onColor: colorScheme.onSecondaryFixedVariant,
            ),
            ColorChip(
              label: 'onSecondaryFixedVariant',
              color: colorScheme.onSecondaryFixedVariant,
              onColor: colorScheme.secondaryFixedDim,
            ),
          ],
        ),
        divider,
        ColorGroup(
          children: [
            ColorChip(
              label: 'tertiary',
              color: colorScheme.tertiary,
              onColor: colorScheme.onTertiary,
            ),
            ColorChip(
              label: 'onTertiary',
              color: colorScheme.onTertiary,
              onColor: colorScheme.tertiary,
            ),
            ColorChip(
              label: 'tertiaryContainer',
              color: colorScheme.tertiaryContainer,
              onColor: colorScheme.onTertiaryContainer,
            ),
            ColorChip(
              label: 'onTertiaryContainer',
              color: colorScheme.onTertiaryContainer,
              onColor: colorScheme.tertiaryContainer,
            ),
          ],
        ),
        divider,
        ColorGroup(
          children: [
            ColorChip(
              label: 'tertiaryFixed',
              color: colorScheme.tertiaryFixed,
              onColor: colorScheme.onTertiaryFixed,
            ),
            ColorChip(
              label: 'onTertiaryFixed',
              color: colorScheme.onTertiaryFixed,
              onColor: colorScheme.tertiaryFixed,
            ),
            ColorChip(
              label: 'tertiaryFixedDim',
              color: colorScheme.tertiaryFixedDim,
              onColor: colorScheme.onTertiaryFixedVariant,
            ),
            ColorChip(
              label: 'onTertiaryFixedVariant',
              color: colorScheme.onTertiaryFixedVariant,
              onColor: colorScheme.tertiaryFixedDim,
            ),
          ],
        ),
        divider,
        ColorGroup(
          children: [
            ColorChip(
              label: 'error',
              color: colorScheme.error,
              onColor: colorScheme.onError,
            ),
            ColorChip(
              label: 'onError',
              color: colorScheme.onError,
              onColor: colorScheme.error,
            ),
            ColorChip(
              label: 'errorContainer',
              color: colorScheme.errorContainer,
              onColor: colorScheme.onErrorContainer,
            ),
            ColorChip(
              label: 'onErrorContainer',
              color: colorScheme.onErrorContainer,
              onColor: colorScheme.errorContainer,
            ),
          ],
        ),
        divider,
        ColorGroup(
          children: [
            ColorChip(
              label: 'surfaceDim',
              color: colorScheme.surfaceDim,
              onColor: colorScheme.onSurface,
            ),
            ColorChip(
              label: 'surface',
              color: colorScheme.surface,
              onColor: colorScheme.onSurface,
            ),
            ColorChip(
              label: 'surfaceBright',
              color: colorScheme.surfaceBright,
              onColor: colorScheme.onSurface,
            ),
            ColorChip(
              label: 'surfaceContainerLowest',
              color: colorScheme.surfaceContainerLowest,
              onColor: colorScheme.onSurface,
            ),
            ColorChip(
              label: 'surfaceContainerLow',
              color: colorScheme.surfaceContainerLow,
              onColor: colorScheme.onSurface,
            ),
            ColorChip(
              label: 'surfaceContainer',
              color: colorScheme.surfaceContainer,
              onColor: colorScheme.onSurface,
            ),
            ColorChip(
              label: 'surfaceContainerHigh',
              color: colorScheme.surfaceContainerHigh,
              onColor: colorScheme.onSurface,
            ),
            ColorChip(
              label: 'surfaceContainerHighest',
              color: colorScheme.surfaceContainerHighest,
              onColor: colorScheme.onSurface,
            ),
            ColorChip(
              label: 'onSurface',
              color: colorScheme.onSurface,
              onColor: colorScheme.surface,
            ),
            ColorChip(
              label: 'onSurfaceVariant',
              color: colorScheme.onSurfaceVariant,
              onColor: colorScheme.surfaceContainerHighest,
            ),
          ],
        ),
        divider,
        ColorGroup(
          children: [
            ColorChip(
              label: 'outline',
              color: colorScheme.outline,
              onColor: null,
            ),
            ColorChip(
              label: 'shadow',
              color: colorScheme.shadow,
              onColor: null,
            ),
            ColorChip(
              label: 'inverseSurface',
              color: colorScheme.inverseSurface,
              onColor: colorScheme.onInverseSurface,
            ),
            ColorChip(
              label: 'onInverseSurface',
              color: colorScheme.onInverseSurface,
              onColor: colorScheme.inverseSurface,
            ),
            ColorChip(
              label: 'inversePrimary',
              color: colorScheme.inversePrimary,
              onColor: colorScheme.primary,
            ),
          ],
        ),
      ],
    );
  }
}

