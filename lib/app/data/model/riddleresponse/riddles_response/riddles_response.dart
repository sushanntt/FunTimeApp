import 'dart:convert';

import 'package:equatable/equatable.dart';

class RiddlesResponse extends Equatable {
  final String? title;
  final String? question;
  final String? answer;

  const RiddlesResponse({this.title, this.question, this.answer});

  factory RiddlesResponse.fromMap(Map<String, dynamic> data) {
    return RiddlesResponse(
      title: data['title'] as String?,
      question: data['question'] as String?,
      answer: data['answer'] as String?,
    );
  }

  Map<String, dynamic> toMap() => {
        'title': title,
        'question': question,
        'answer': answer,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [RiddlesResponse].
  factory RiddlesResponse.fromJson(String data) {
    return RiddlesResponse.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [RiddlesResponse] to a JSON string.
  String toJson() => json.encode(toMap());

  RiddlesResponse copyWith({
    String? title,
    String? question,
    String? answer,
  }) {
    return RiddlesResponse(
      title: title ?? this.title,
      question: question ?? this.question,
      answer: answer ?? this.answer,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [title, question, answer];
}
