//ไฟล์ที่ map กับข้อมูลในตาราง
class Task {
  //ตัวแปรที่ล้อชื่อกับคอลลัมน์ในตาราง
  String? id;
  String? task_name;
  String? task_where;
  String? task_person;
  String? task_status;
  String? task_image_url;
  String? task_duedate;

  //Contructor
  //ที่เอาไว้แพ็คข้อมูลเวลาส่งไป insert / update ไปยัง supabase
  //ทีเอาไว้แพ็คข้อมูลส่งค่าระหว่างหน้าจอ หรือส่งข้อมูลไปมาใดๆ
  Task({
    this.id,
    this.task_name,
    this.task_where,
    this.task_person,
    this.task_image_url,
    this.task_status,
    this.task_duedate,
  });

  //คำสั่งในการแปลข้อมูลจาก supabase ซึ่งเป็น JSON มาใช้ในแอพ -> fromJsOn
  factory Task.fromJson(Map<String, dynamic> json) => Task(
        id: json['id'],
        task_name: json['task_name'],
        task_where: json['task_where'],
        task_person: json['task_person'],
        task_status: json['task_status'],
        task_image_url: json['task_image_url'],
        task_duedate: json['task_duedate'],
      );

  //คำสั่งในการแปลงข้องมูลจาก แอพไปยัง supabase -> toJson
  //คำสั่งในการแปลงข้องมูลจาก แอพไปยัง supabase -> toJson
  Map<String, dynamic> toJson() => {
        'id': id,
        'task_name': task_name,
        'task_where': task_where,
        'task_person': task_person,
        'task_status': task_status,
        'task_image_url': task_image_url,
        'task_duedate': task_duedate,
      };
}
