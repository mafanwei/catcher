import 'package:catcher/handlers/console_handler.dart';
import 'package:catcher/handlers/report_handler.dart';
import 'package:catcher/mode/notification_report_mode.dart';
import 'package:catcher/mode/silent_report_mode.dart';
import 'package:catcher/model/localization_options.dart';
import 'package:catcher/model/report_mode.dart';

class CatcherOptions {
  final List<ReportHandler> handlers;
  final int handlerTimeout;
  final ReportMode reportMode;
  final Map<String, dynamic> customParameters;
  final List<LocalizationOptions> localizationOptions;

  CatcherOptions(this.reportMode, this.handlers,
      {this.handlerTimeout = 5000,
      this.customParameters = const {},
      this.localizationOptions = const []});

  CatcherOptions.getDefaultReleaseOptions()
      : this.handlers = [ConsoleHandler()],
        this.reportMode = NotificationReportMode(),
        handlerTimeout = 5000,
        customParameters = Map(),
        localizationOptions = [];

  CatcherOptions.getDefaultDebugOptions()
      : this.handlers = [ConsoleHandler()],
        this.reportMode = SilentReportMode(),
        handlerTimeout = 10000,
        customParameters = Map(),
        localizationOptions = [];

  CatcherOptions.getDefaultProfileOptions()
      : this.handlers = [ConsoleHandler()],
        this.reportMode = SilentReportMode(),
        handlerTimeout = 10000,
        customParameters = Map(),
        localizationOptions = [];
}
