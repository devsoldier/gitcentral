abstract class GlobalMessengerEvent {}

class OperationRestored extends GlobalMessengerEvent {}

class MaintenanceEvent extends GlobalMessengerEvent {}

class NoNetwork extends GlobalMessengerEvent {}

class TokenExpired extends GlobalMessengerEvent {}

class OtherException extends GlobalMessengerEvent {}
