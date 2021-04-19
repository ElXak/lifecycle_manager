import 'stoppable_service.dart';

class BackgroundFetchService extends StoppableService {
  @override
  void start() {
    super.start();

    // Start listening
    print('BackgroundFetchService Stopped $serviceStopped');
  }

  @override
  void stop() {
    super.stop();

    // Stop listening
    print('BackgroundFetchService Stopped $serviceStopped');
  }
}
