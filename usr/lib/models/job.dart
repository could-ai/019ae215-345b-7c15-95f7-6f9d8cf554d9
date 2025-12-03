import 'package:couldai_user_app/models/user.dart';

enum JobStatus { pending, inProgress, completed, cancelled }

class JobNote {
  final String id;
  final String text;
  final String authorId;
  final DateTime timestamp;

  JobNote({
    required this.id,
    required this.text,
    required this.authorId,
    required this.timestamp,
  });
}

class JobImage {
  final String id;
  final String path; // Local path or URL
  final DateTime timestamp;

  JobImage({
    required this.id,
    required this.path,
    required this.timestamp,
  });
}

class Job {
  final String id;
  final String customerId;
  final String customerName; // Denormalized for list view performance
  String deviceName;
  String issueDescription;
  JobStatus status;
  String? technicianId;
  String? technicianName;
  double? finalPrice;
  final DateTime createdAt;
  List<JobNote> notes;
  List<JobImage> images;

  Job({
    required this.id,
    required this.customerId,
    required this.customerName,
    required this.deviceName,
    required this.issueDescription,
    this.status = JobStatus.pending,
    this.technicianId,
    this.technicianName,
    this.finalPrice,
    required this.createdAt,
    this.notes = const [],
    this.images = const [],
  });
}
