import 'package:maw3od_app/components/lesson.dart';
import 'package:maw3od_app/components/single_lesson.dart';

class Lessons {
  List<Lesson> lessons = [
    Lesson(title: 'lesson 1 ', duration: 30, image: 'less1', isPlaying: true),
    Lesson(title: 'lesson 2 ', duration: 5, image: 'less2', isPlaying: false),
    Lesson(title: 'lesson 3 ', duration: 10, image: 'less3', isPlaying: false),
    Lesson(title: 'lesson 4 ', duration: 15, image: 'less4', isPlaying: false),
    Lesson(title: 'lesson 5 ', duration: 10, image: 'less5', isPlaying: false),
  ];

  List<SingleLesson> lessonList = [];

  List<SingleLesson> getLessonsList() {
    for (var lesson in lessons) {
      if (lesson != null) {
        lessonList.add(
          SingleLesson(
              isPlaying: lesson.isPlaying,
              title: lesson.title,
              duration: lesson.duration,
              image: lesson.image),
        );
      }
    }

    return lessonList;
  }
}
