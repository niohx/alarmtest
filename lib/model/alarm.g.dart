// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AlarmState _$_$_AlarmStateFromJson(Map<String, dynamic> json) {
  return _$_AlarmState(
    id: json['id'] as int,
    time: json['time'] as String,
    mount: json['mount'] as bool,
    ringing: json['ringing'] as bool,
    uniqueId: json['uniqueId'] as String,
  );
}

Map<String, dynamic> _$_$_AlarmStateToJson(_$_AlarmState instance) =>
    <String, dynamic>{
      'id': instance.id,
      'time': instance.time,
      'mount': instance.mount,
      'ringing': instance.ringing,
      'uniqueId': instance.uniqueId,
    };