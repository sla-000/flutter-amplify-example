/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

// ignore_for_file: public_member_api_docs, file_names, unnecessary_new, prefer_if_null_operators, prefer_const_constructors, slash_for_doc_comments, annotate_overrides, non_constant_identifier_names, unnecessary_string_interpolations, prefer_adjacent_string_concatenation, unnecessary_const, dead_code

import 'ModelProvider.dart';

/** This is an auto generated class representing the ShopModel type in your schema. */
@immutable
class ShopModel extends Model {
  static const classType = const _ShopModelModelType();
  final String id;
  final String? _name;
  final String? _timeZone;
  final List<int>? _workingWeekDays;
  final TemporalTime? _startTime;
  final TemporalTime? _endTime;
  final List<OrderModel>? _orders;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  String? get name {
    return _name;
  }

  String? get timeZone {
    return _timeZone;
  }

  List<int>? get workingWeekDays {
    return _workingWeekDays;
  }

  TemporalTime? get startTime {
    return _startTime;
  }

  TemporalTime? get endTime {
    return _endTime;
  }

  List<OrderModel>? get orders {
    return _orders;
  }

  TemporalDateTime? get createdAt {
    return _createdAt;
  }

  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  const ShopModel._internal(
      {required this.id, name, timeZone, workingWeekDays, startTime, endTime, orders, createdAt, updatedAt})
      : _name = name,
        _timeZone = timeZone,
        _workingWeekDays = workingWeekDays,
        _startTime = startTime,
        _endTime = endTime,
        _orders = orders,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory ShopModel(
      {String? id,
      String? name,
      String? timeZone,
      List<int>? workingWeekDays,
      TemporalTime? startTime,
      TemporalTime? endTime,
      List<OrderModel>? orders}) {
    return ShopModel._internal(
        id: id == null ? UUID.getUUID() : id,
        name: name,
        timeZone: timeZone,
        workingWeekDays: workingWeekDays != null ? List<int>.unmodifiable(workingWeekDays) : workingWeekDays,
        startTime: startTime,
        endTime: endTime,
        orders: orders != null ? List<OrderModel>.unmodifiable(orders) : orders);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShopModel &&
        id == other.id &&
        _name == other._name &&
        _timeZone == other._timeZone &&
        DeepCollectionEquality().equals(_workingWeekDays, other._workingWeekDays) &&
        _startTime == other._startTime &&
        _endTime == other._endTime &&
        DeepCollectionEquality().equals(_orders, other._orders);
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("ShopModel {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("timeZone=" + "$_timeZone" + ", ");
    buffer.write("workingWeekDays=" + (_workingWeekDays != null ? _workingWeekDays!.toString() : "null") + ", ");
    buffer.write("startTime=" + (_startTime != null ? _startTime!.format() : "null") + ", ");
    buffer.write("endTime=" + (_endTime != null ? _endTime!.format() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  ShopModel copyWith(
      {String? id,
      String? name,
      String? timeZone,
      List<int>? workingWeekDays,
      TemporalTime? startTime,
      TemporalTime? endTime,
      List<OrderModel>? orders}) {
    return ShopModel._internal(
        id: id ?? this.id,
        name: name ?? this.name,
        timeZone: timeZone ?? this.timeZone,
        workingWeekDays: workingWeekDays ?? this.workingWeekDays,
        startTime: startTime ?? this.startTime,
        endTime: endTime ?? this.endTime,
        orders: orders ?? this.orders);
  }

  ShopModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _name = json['name'],
        _timeZone = json['timeZone'],
        _workingWeekDays = (json['workingWeekDays'] as List?)?.map((e) => (e as num).toInt()).toList(),
        _startTime = json['startTime'] != null ? TemporalTime.fromString(json['startTime']) : null,
        _endTime = json['endTime'] != null ? TemporalTime.fromString(json['endTime']) : null,
        _orders = json['orders'] is List
            ? (json['orders'] as List)
                .where((e) => e?['serializedData'] != null)
                .map((e) => OrderModel.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
                .toList()
            : null,
        _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
        _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': _name,
        'timeZone': _timeZone,
        'workingWeekDays': _workingWeekDays,
        'startTime': _startTime?.format(),
        'endTime': _endTime?.format(),
        'orders': _orders?.map((OrderModel? e) => e?.toJson()).toList(),
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  static final QueryField ID = QueryField(fieldName: "shopModel.id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField TIMEZONE = QueryField(fieldName: "timeZone");
  static final QueryField WORKINGWEEKDAYS = QueryField(fieldName: "workingWeekDays");
  static final QueryField STARTTIME = QueryField(fieldName: "startTime");
  static final QueryField ENDTIME = QueryField(fieldName: "endTime");
  static final QueryField ORDERS = QueryField(
      fieldName: "orders", fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (OrderModel).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ShopModel";
    modelSchemaDefinition.pluralName = "ShopModels";

    modelSchemaDefinition.authRules = [
      AuthRule(
          authStrategy: AuthStrategy.PUBLIC,
          operations: [ModelOperation.CREATE, ModelOperation.UPDATE, ModelOperation.DELETE, ModelOperation.READ])
    ];

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: ShopModel.NAME, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: ShopModel.TIMEZONE, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: ShopModel.WORKINGWEEKDAYS,
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection, ofModelName: describeEnum(ModelFieldTypeEnum.int))));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: ShopModel.STARTTIME, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.time)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: ShopModel.ENDTIME, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.time)));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
        key: ShopModel.ORDERS,
        isRequired: false,
        ofModelName: (OrderModel).toString(),
        associatedKey: OrderModel.SHOPMODELID));

    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
        fieldName: 'createdAt',
        isRequired: false,
        isReadOnly: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)));

    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
        fieldName: 'updatedAt',
        isRequired: false,
        isReadOnly: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)));
  });
}

class _ShopModelModelType extends ModelType<ShopModel> {
  const _ShopModelModelType();

  @override
  ShopModel fromJson(Map<String, dynamic> jsonData) {
    return ShopModel.fromJson(jsonData);
  }
}
