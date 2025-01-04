import 'package:hive/hive.dart';
import 'package:nots_app/models/not_model.dart';

class NotModelAdaptor extends TypeAdapter<NotModel> {
  @override
  read(BinaryReader reader) {
    return NotModel(
        title: reader.readString(),
        subtitle: reader.readString(),
        date: reader.readString(),
        color: reader.readInt());
  }

  @override
  int get typeId => 0;

  @override
  void write(BinaryWriter writer, NotModel obj) {
    writer.writeString(obj.title);
    writer.writeString(obj.subtitle);
    writer.writeString(obj.date);
    writer.writeInt(obj.color);
  }
}
