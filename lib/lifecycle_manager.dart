import 'package:flutter/material.dart';

import 'locator.dart';
import 'services/background_fetch_service.dart';
import 'services/location_service.dart';
import 'services/stoppable_service.dart';

class LifeCycleManager extends StatefulWidget {
  final Widget child;

  const LifeCycleManager({Key key, this.child}) : super(key: key);

  @override
  _LifeCycleManagerState createState() => _LifeCycleManagerState();
}

class _LifeCycleManagerState extends State<LifeCycleManager>
    with WidgetsBindingObserver {
  // Get all services
  List<StoppableService> servicesToManage = [
    locator<LocationService>(),
    locator<BackgroundFetchService>(),
  ];

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    print('LifeCycleState = $state');
    servicesToManage.forEach((service) {
      if (state == AppLifecycleState.resumed) {
        service.start();
      } else {
        service.stop();
      }
    });
    // if background stop
    // if foreground start
  }
}
