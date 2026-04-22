import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opennutritracker/core/domain/entity/app_theme_entity.dart';
import 'package:opennutritracker/core/presentation/widgets/app_banner_version.dart';
import 'package:opennutritracker/core/presentation/widgets/disclaimer_dialog.dart';
import 'package:opennutritracker/core/utils/app_const.dart';
import 'package:opennutritracker/core/utils/locator.dart';
import 'package:opennutritracker/core/utils/theme_mode_provider.dart';
import 'package:opennutritracker/core/utils/url_const.dart';
import 'package:opennutritracker/features/diary/presentation/bloc/calendar_day_bloc.dart';
import 'package:opennutritracker/features/diary/presentation/bloc/diary_bloc.dart';
import 'package:opennutritracker/features/home/presentation/bloc/home_bloc.dart';
import 'package:opennutritracker/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:opennutritracker/features/settings/presentation/bloc/settings_bloc.dart';
import 'package:opennutritracker/features/settings/presentation/widgets/export_import_dialog.dart';
import 'package:opennutritracker/generated/l10n.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:provider/provider.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:opennutritracker/features/settings/presentation/widgets/calculations_dialog.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late SettingsBloc _settingsBloc;
  late ProfileBloc _profileBloc;
  late HomeBloc _homeBloc;
  late DiaryBloc _diaryBloc;
  late CalendarDayBloc _calendarDayBloc;

  @override
  void initState() {
    _settingsBloc = locator<SettingsBloc>();
    _profileBloc = locator<ProfileBloc>();
    _homeBloc = locator<HomeBloc>();
    _diaryBloc = locator<DiaryBloc>();
    _calendarDayBloc = locator<CalendarDayBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget _styledListTile({
      required BuildContext context,
      required IconData icon,
      required String text,
      required VoidCallback onTap,
    }) {
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        decoration: BoxDecoration(
          color: Color(0xFF66A883),
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 2,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: ListTile(
          leading: Icon(icon, color: Colors.white),
          title: Text(
            text,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
          trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
          onTap: onTap,
        ),
      );
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFD4F7B5),
              Color(0xFF7AD6A1),
            ],
          ),
        ),
        child: SafeArea(
          child: BlocBuilder<SettingsBloc, SettingsState>(
            bloc: _settingsBloc,
            builder: (context, state) {
              if (state is SettingsInitial) {
                _settingsBloc.add(LoadSettingsEvent());
              } else if (state is SettingsLoadingState) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is SettingsLoadedState) {
                return ListView(
                  padding: const EdgeInsets.all(15.0),
                  children: [
                    const SizedBox(height: 15.0),
                    _styledListTile(
                      context: context,
                      icon: Icons.ac_unit_outlined,
                      text: S.of(context).settingsUnitsLabel,
                      onTap: () => _showUnitsDialog(context, state.usesImperialUnits),
                    ),
                    _styledListTile(
                      context: context,
                      icon: Icons.calculate_outlined,
                      text: S.of(context).settingsCalculationsLabel,
                      onTap: () => _showCalculationsDialog(context),
                    ),
                    _styledListTile(
                      context: context,
                      icon: Icons.brightness_medium_outlined,
                      text: S.of(context).settingsThemeLabel,
                      onTap: () => _showThemeDialog(context, state.appTheme),
                    ),
                    _styledListTile(
                      context: context,
                      icon: Icons.import_export,
                      text: S.of(context).exportImportLabel,
                      onTap: () => _showExportImportDialog(context),
                    ),
                    _styledListTile(
                      context: context,
                      icon: Icons.description_outlined,
                      text: S.of(context).settingsDisclaimerLabel,
                      onTap: () => _showDisclaimerDialog(context),
                    ),
                    _styledListTile(
                      context: context,
                      icon: Icons.bug_report_outlined,
                      text: S.of(context).settingsReportErrorLabel,
                      onTap: () => _showReportErrorDialog(context),
                    ),
                    _styledListTile(
                      context: context,
                      icon: Icons.policy_outlined,
                      text: S.of(context).settingsPrivacySettings,
                      onTap: () => _showPrivacyDialog(context, state.sendAnonymousData),
                    ),
                    _styledListTile(
                      context: context,
                      icon: Icons.error_outline_outlined,
                      text: S.of(context).settingAboutLabel,
                      onTap: () => _showAboutDialog(context),
                    ),
                    const SizedBox(height: 5.0),
                    AppBannerVersion(versionNumber: state.versionNumber),
                  ],
                );
              }
              return const SizedBox();
            },
          ),
        ),
      ),
    );
  }




  void _showUnitsDialog(BuildContext context, bool usesImperialUnits) async {
    SystemDropDownType selectedUnit = usesImperialUnits
        ? SystemDropDownType.imperial
        : SystemDropDownType.metric;
    final shouldUpdate = await showDialog<bool?>(
        context: context,
        builder: (context) {
          return AlertDialog(
              backgroundColor: Color(0xFF549576),
              title: Text(
                  S.of(context).settingsUnitsLabel,
                  style: TextStyle(
                    color: Colors.white,
                  ),
              ),
              content: Wrap(children: [
                Column(
                  children: [
                    DropdownButtonFormField(
                      value: selectedUnit,
                      decoration: InputDecoration(
                        enabled: true,
                        filled: false,
                        labelText: S.of(context).settingsSystemLabel,
                      ),
                      onChanged: (value) {
                        selectedUnit = value ?? SystemDropDownType.metric;
                      },
                      dropdownColor: Color(0xFF549576),
                      items: [
                        DropdownMenuItem(
                            value: SystemDropDownType.metric,
                            child: Text(
                                S.of(context).settingsMetricLabel,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                            )),
                        DropdownMenuItem(
                            value: SystemDropDownType.imperial,
                            child: Text(
                                S.of(context).settingsImperialLabel,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ))
                      ],
                    )
                  ],
                ),
              ]),
              actions: <Widget>[
                OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white
                    ),
                    child: Text(S.of(context).dialogOKLabel))
              ]);
        });
    if (shouldUpdate == true) {
      _settingsBloc
          .setUsesImperialUnits(selectedUnit == SystemDropDownType.imperial);
      _settingsBloc.add(LoadSettingsEvent());

      // Update blocs
      _profileBloc.add(LoadProfileEvent());
      _homeBloc.add(LoadItemsEvent());
      _diaryBloc.add(const LoadDiaryYearEvent());
    }
  }

  void _showCalculationsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => CalculationsDialog(
        settingsBloc: _settingsBloc,
        profileBloc: _profileBloc,
        homeBloc: _homeBloc,
        diaryBloc: _diaryBloc,
        calendarDayBloc: _calendarDayBloc,
      ),
    );
  }

  void _showExportImportDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => ExportImportDialog(),
    );
  }

  void _showThemeDialog(BuildContext context, AppThemeEntity currentAppTheme) {
    AppThemeEntity selectedTheme = currentAppTheme;
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Color(0xFF549576),
            contentPadding: EdgeInsets.zero,
            title: Text(
                S.of(context).settingsThemeLabel,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            content: StatefulBuilder(
              builder: (BuildContext context,
                  void Function(void Function()) setState) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    RadioListTile(
                      title:
                          Text(
                              S.of(context).settingsThemeSystemDefaultLabel,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                      value: AppThemeEntity.system,
                      groupValue: selectedTheme,
                      onChanged: (value) {
                        setState(() {
                          selectedTheme = value as AppThemeEntity;
                        });
                      },
                    ),
                    RadioListTile(
                      title: Text(
                          S.of(context).settingsThemeLightLabel,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      value: AppThemeEntity.light,
                      groupValue: selectedTheme,
                      onChanged: (value) {
                        setState(() {
                          selectedTheme = value as AppThemeEntity;
                        });
                      },
                    ),
                    RadioListTile(
                      title: Text(
                          S.of(context).settingsThemeDarkLabel,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      value: AppThemeEntity.dark,
                      groupValue: selectedTheme,
                      onChanged: (value) {
                        setState(() {
                          selectedTheme = value as AppThemeEntity;
                        });
                      },
                    ),
                  ],
                );
              },
            ),
            actions: [
              OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white
                  ),
                  child: Text(
                      S.of(context).dialogCancelLabel,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white
                  ),
                  onPressed: () async {
                    _settingsBloc.setAppTheme(selectedTheme);
                    _settingsBloc.add(LoadSettingsEvent());

                    setState(() {
                      // Update Theme
                      Provider.of<ThemeModeProvider>(context, listen: false)
                          .updateTheme(selectedTheme);
                    });

                    Navigator.of(context).pop();

                  },
                  child: Text(S.of(context).dialogOKLabel)),
            ],
          );
        });
  }

  void _showDisclaimerDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return const DisclaimerDialog();
        });
  }

  void _showReportErrorDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Color(0xFF549576),
            title: Text(
                S.of(context).settingsReportErrorLabel,
                style: TextStyle(
                color: Colors.white,
              ),
            ),
            content: Text(
                S.of(context).reportErrorDialogText,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            actions: [
              OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.orange,
                  ),
                  child: Text(S.of(context).dialogCancelLabel)),
              OutlinedButton(
                  onPressed: () async {
                    _reportError(context);
                    Navigator.of(context).pop();
                  },
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.orange,
                  ),

                  child: Text(S.of(context).dialogOKLabel))
            ],
          );
        });
  }

  Future<void> _reportError(BuildContext context) async {
    final reportUri =
        Uri.parse("mailto:${AppConst.reportErrorEmail}?subject=Report_Error");

    if (await canLaunchUrl(reportUri)) {
      launchUrl(reportUri);
    } else {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(S.of(context).errorOpeningEmail)));
      }
    }
  }

  void _showPrivacyDialog(
      BuildContext context, bool hasAcceptedAnonymousData) async {
    bool switchActive = hasAcceptedAnonymousData;
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor:Color(0xFF549576),
            title: Text(
                S.of(context).settingsPrivacySettings,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            content: StatefulBuilder(
              builder: (BuildContext context,
                  void Function(void Function()) setState) {
                return SwitchListTile(
                  title: Text(
                      S.of(context).sendAnonymousUserData,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  value: switchActive,
                  onChanged: (bool value) {
                    setState(() {
                      switchActive = value;
                    });
                  },
                );
              },
            ),
            actions: [
              OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.orange,
                  ),
                  child: Text(S.of(context).dialogCancelLabel)),
              OutlinedButton(
                  onPressed: () async {
                    _settingsBloc.setHasAcceptedAnonymousData(switchActive);
                    if (!switchActive) Sentry.close();
                    _settingsBloc.add(LoadSettingsEvent());
                    Navigator.of(context).pop();
                  },
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.orange,
                  ),
                  child: Text(S.of(context).dialogOKLabel))
            ],
          );
        });
  }

  void _showAboutDialog(BuildContext context) async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    if (context.mounted) {
      showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            backgroundColor: Color(0xFF7ED09E),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 50,
                    child: Image.asset('assets/icon/ont_logo_square.png'),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    S.of(context).appTitle,
                    style:const TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Version ${packageInfo.version}",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    S.of(context).appLicenseLabel,
                    style: const TextStyle(fontSize: 14,color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  const Divider(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton.icon(
                        onPressed: () => _launchSourceCodeUrl(context),
                        icon: const Icon(Icons.code_outlined, color: Colors.white),
                        label: Text(
                          S.of(context).settingsSourceCodeLabel,
                          style: const TextStyle(color: Colors.white),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: const StadiumBorder(),
                        ),
                      ),
                      TextButton.icon(
                        onPressed: () => _launchPrivacyPolicyUrl(context),
                        icon: const Icon(Icons.policy_outlined, color: Colors.white),
                        label: Text(
                          S.of(context).privacyPolicyLabel,
                          style: const TextStyle(color: Colors.white),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: const StadiumBorder(),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 18),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.white,
                        shape: StadiumBorder(),
                      ),
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('OK', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    }
  }


  void _launchSourceCodeUrl(BuildContext context) async {
    final sourceCodeUri = Uri.parse(AppConst.sourceCodeUrl);
    _launchUrl(context, sourceCodeUri);
  }

  void _launchPrivacyPolicyUrl(BuildContext context) async {
    final sourceCodeUri = Uri.parse(URLConst.privacyPolicyURLEn);
    _launchUrl(context, sourceCodeUri);
  }

  void _launchUrl(BuildContext context, Uri url) async {
    if (await canLaunchUrl(url)) {
      launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(S.of(context).errorOpeningBrowser)));
      }
    }
  }
}
