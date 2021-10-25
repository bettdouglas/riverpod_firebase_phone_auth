// // ignore_for_file: prefer_final_fields

// import 'dart:async';

// import 'package:flutter_riverpod/flutter_riverpod.dart';

// class Paginator {
//   Paginator() {
//     resultStream = controller.stream.asyncMap((int pageIndex) async {
//       return next(pageIndex);
//     });
//   }

//   int page = 0;
//   final _previousResults = <String>[];
//   final controller = StreamController<int>();

//   late Stream<List<String>> resultStream;

//   Future<List<String>> _fetchNext(int page) async {
//     await Future.delayed(const Duration(seconds: 3));
//     return ['hello'];
//   }

//   Future<List<String>> next(int pageIdx) async {
//     try {
//       page++;
//       final latestResults = await _fetchNext(pageIdx);
//       _previousResults.addAll(latestResults);
//       return _previousResults;
//     } catch (e) {
//       page--;
//       rethrow;
//     }
//   }
// }

// final paginatorProvider = Provider((ref) => Paginator());

// final pageStreamProvider = StreamProvider(
//   (ref) => ref.watch(paginatorProvider).resultStream,
// );

// class Word {
//   final String word;
//   final Tense tense;
//   final String inEnglish;
//   final String inSpanish;
//   final bool status;
//   final int id;
//   Word({
//     required this.word,
//     required this.tense,
//     required this.inEnglish,
//     required this.inSpanish,
//     required this.status,
//     required this.id,
//   });

//   Word copyWith({
//     String? word,
//     Tense? tense,
//     String? inEnglish,
//     String? inSpanish,
//     bool? status,
//     int? id,
//   }) {
//     return Word(
//       word: word ?? this.word,
//       tense: tense ?? this.tense,
//       inEnglish: inEnglish ?? this.inEnglish,
//       inSpanish: inSpanish ?? this.inSpanish,
//       status: status ?? this.status,
//       id: id ?? this.id,
//     );
//   }
// }

// enum Tense { present, past, continuous }

// abstract class WordRepository {
//   Future<Word> addWord(Word word);
//   Future<Word> updateWordStatus(Word word, bool status);
//   Future<List<Word>> getWords();
//   Future<Word> getWord(int wordId);
// }

// class SqliteRepository extends WordRepository {
//   final Database db;
//   SqliteRepository({
//     required this.db,
//   });

//   @override
//   Future<Word> addWord(Word word) {
//     // TODO: implement addWord
//     throw UnimplementedError();
//   }

//   @override
//   Future<Word> getWord(int wordId) {
//     // TODO: implement getWord
//     throw UnimplementedError();
//   }

//   @override
//   Future<List<Word>> getWords() {
//     // TODO: implement getWords
//     throw UnimplementedError();
//   }

//   @override
//   Future<Word> updateWordStatus(Word word, bool status) {
//     // TODO: implement updateWordStatus
//     throw UnimplementedError();
//   }
// }

// class HiveRepository extends WordRepository {
//   final Box<Word> wordsBox;
//   HiveRepository({
//     required this.wordsBox,
//   });

//   @override
//   Future<Word> addWord(Word word) {
//     // TODO: implement addWord
//     throw UnimplementedError();
//   }

//   @override
//   Future<Word> getWord(int wordId) {
//     // TODO: implement getWord
//     throw UnimplementedError();
//   }

//   @override
//   Future<List<Word>> getWords() {
//     // TODO: implement getWords
//     throw UnimplementedError();
//   }

//   @override
//   Future<Word> updateWordStatus(Word word, bool status) {
//     // TODO: implement updateWordStatus
//     throw UnimplementedError();
//   }
// }
