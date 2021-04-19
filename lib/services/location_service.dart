import 'stoppable_service.dart';

class LocationService extends StoppableService {
  @override
  void start() {
    super.start();

    // Start listening
    print('LocationService Stopped $serviceStopped');
  }

  @override
  void stop() {
    super.stop();

    // Stop listening
    print('LocationService Stopped $serviceStopped');
  }
}
