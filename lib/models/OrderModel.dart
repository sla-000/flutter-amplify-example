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

// ignore_for_file: public_member_api_docs, file_names, unnecessary_new, prefer_if_null_operators, prefer_const_constructors, slash_for_doc_comments, annotate_overrides, non_constant_identifier_names, unnecessary_string_interpolations, prefer_adjacent_string_concatenation, unnecessary_const, dead_code

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the OrderModel type in your schema. */
@immutable
class OrderModel extends Model {
  static const classType = const _OrderModelModelType();
  final String id;
  final TemporalDateTime? _start;
  final TemporalDateTime? _end;
  final String? _shopmodelID;
  final String? _clientName;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  TemporalDateTime? get start {
    return _start;
  }

  TemporalDateTime? get end {
    return _end;
  }

  String get shopmodelID {
    try {
      return _shopmodelID!;
    } catch (e) {
      throw new AmplifyCodeGenModelException(AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  String? get clientName {
    return _clientName;
  }

  TemporalDateTime? get createdAt {
    return _createdAt;
  }

  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  const OrderModel._internal({required this.id, start, end, required shopmodelID, clientName, createdAt, updatedAt})
      : _start = start,
        _end = end,
        _shopmodelID = shopmodelID,
        _clientName = clientName,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory OrderModel(
      {String? id, TemporalDateTime? start, TemporalDateTime? end, required String shopmodelID, String? clientName}) {
    return OrderModel._internal(
        id: id == null ? UUID.getUUID() : id, start: start, end: end, shopmodelID: shopmodelID, clientName: clientName);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderModel &&
        id == other.id &&
        _start == other._start &&
        _end == other._end &&
        _shopmodelID == other._shopmodelID &&
        _clientName == other._clientName;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("OrderModel {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("start=" + (_start != null ? _start!.format() : "null") + ", ");
    buffer.write("end=" + (_end != null ? _end!.format() : "null") + ", ");
    buffer.write("shopmodelID=" + "$_shopmodelID" + ", ");
    buffer.write("clientName=" + "$_clientName" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  OrderModel copyWith(
      {String? id, TemporalDateTime? start, TemporalDateTime? end, String? shopmodelID, String? clientName}) {
    return OrderModel._internal(
        id: id ?? this.id,
        start: start ?? this.start,
        end: end ?? this.end,
        shopmodelID: shopmodelID ?? this.shopmodelID,
        clientName: clientName ?? this.clientName);
  }

  OrderModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _start = json['start'] != null ? TemporalDateTime.fromString(json['start']) : null,
        _end = json['end'] != null ? TemporalDateTime.fromString(json['end']) : null,
        _shopmodelID = json['shopmodelID'],
        _clientName = json['clientName'],
        _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
        _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'start': _start?.format(),
        'end': _end?.format(),
        'shopmodelID': _shopmodelID,
        'clientName': _clientName,
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  static final QueryField ID = QueryField(fieldName: "orderModel.id");
  static final QueryField START = QueryField(fieldName: "start");
  static final QueryField END = QueryField(fieldName: "end");
  static final QueryField SHOPMODELID = QueryField(fieldName: "shopmodelID");
  static final QueryField CLIENTNAME = QueryField(fieldName: "clientName");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "OrderModel";
    modelSchemaDefinition.pluralName = "OrderModels";

    modelSchemaDefinition.authRules = [
      AuthRule(
          authStrategy: AuthStrategy.PUBLIC,
          operations: [ModelOperation.CREATE, ModelOperation.UPDATE, ModelOperation.DELETE, ModelOperation.READ])
    ];

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: OrderModel.START, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: OrderModel.END, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: OrderModel.SHOPMODELID, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: OrderModel.CLIENTNAME, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

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

class _OrderModelModelType extends ModelType<OrderModel> {
  const _OrderModelModelType();

  @override
  OrderModel fromJson(Map<String, dynamic> jsonData) {
    return OrderModel.fromJson(jsonData);
  }
}
