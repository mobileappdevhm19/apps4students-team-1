part of swagger.api;

class Lecture {
  
  int id = null;
  

  String title = null;
  

  String description = null;
  

  bool visible = null;
  

  DateTime start = null;
  

  DateTime stop = null;
  

  Course course = null;
  

  List<Pause> pauses = [];
  

  List<Question> questions = [];
  
  Lecture();

  @override
  String toString() {
    return 'Lecture[id=$id, title=$title, description=$description, visible=$visible, start=$start, stop=$stop, course=$course, pauses=$pauses, questions=$questions, ]';
  }

  Lecture.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    title =
        json['title']
    ;
    description =
        json['description']
    ;
    visible =
        json['visible']
    ;
    start = json['start'] == null ? null : DateTime.parse(json['start']);
    stop = json['stop'] == null ? null : DateTime.parse(json['stop']);
    course =
      
      
      new Course.fromJson(json['course'])
;
    pauses =
      Pause.listFromJson(json['pauses'])
;
    questions =
      Question.listFromJson(json['questions'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'visible': visible,
      'start': start == null ? '' : start.toUtc().toIso8601String(),
      'stop': stop == null ? '' : stop.toUtc().toIso8601String(),
      'course': course,
      'pauses': pauses,
      'questions': questions
     };
  }

  static List<Lecture> listFromJson(List<dynamic> json) {
    return json == null ? new List<Lecture>() : json.map((value) => new Lecture.fromJson(value)).toList();
  }

  static Map<String, Lecture> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Lecture>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Lecture.fromJson(value));
    }
    return map;
  }
}

