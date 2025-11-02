part of '../widget/home_screen.dart';

/// App bar of [HomeScreen].
final class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  /// Default constructor.
  const _AppBar();

  /// Build function.
  @override
  Widget build(context) {
    final sharedPreferences = getIt<AppSharedPreferences>();
    final loggedInUser = sharedPreferences.loggedInUser;
    final name = loggedInUser!.name;
    final homeScreenAppBarTitle = localizations.homeScreenAppBarTitle(name);

    final themeExtension = context.resolveThemeExtension<HomeScreenThemeExtension>();
    final appBarSpacing = themeExtension.appBarSpacing;
    final homeScreenAppBarTitleTextStyle = themeExtension.homeScreenAppBarTitleTextStyle;

    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        spacing: appBarSpacing,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(homeScreenAppBarTitle, style: homeScreenAppBarTitleTextStyle),
          Row(spacing: appBarSpacing, children: const [ThemeToggleButton(), _LogoutButton()]),
        ],
      ),
    );
  }

  /// Preferred size.
  @override
  Size get preferredSize {
    return const Size.fromHeight(kToolbarHeight);
  }
}
