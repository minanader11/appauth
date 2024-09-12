// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'apiTicketManager.enums.swagger.dart' as enums;
export 'apiTicketManager.enums.swagger.dart';

part 'apiTicketManager.swagger.g.dart';

@JsonSerializable(explicitToJson: true)
class SearchTripInput {
  const SearchTripInput({
    this.tripId,
    this.legsData,
    this.profile,
    this.mediaType,
    this.contractType,
  });

  factory SearchTripInput.fromJson(Map<String, dynamic> json) =>
      _$SearchTripInputFromJson(json);

  static const toJsonFactory = _$SearchTripInputToJson;
  Map<String, dynamic> toJson() => _$SearchTripInputToJson(this);

  @JsonKey(name: 'tripId')
  final String? tripId;
  @JsonKey(name: 'legsData', defaultValue: <LegData>[])
  final List<LegData>? legsData;
  @JsonKey(name: 'profile')
  final String? profile;
  @JsonKey(name: 'mediaType')
  final String? mediaType;
  @JsonKey(name: 'contractType')
  final String? contractType;
  static const fromJsonFactory = _$SearchTripInputFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchTripInput &&
            (identical(other.tripId, tripId) ||
                const DeepCollectionEquality().equals(other.tripId, tripId)) &&
            (identical(other.legsData, legsData) ||
                const DeepCollectionEquality()
                    .equals(other.legsData, legsData)) &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.mediaType, mediaType) ||
                const DeepCollectionEquality()
                    .equals(other.mediaType, mediaType)) &&
            (identical(other.contractType, contractType) ||
                const DeepCollectionEquality()
                    .equals(other.contractType, contractType)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tripId) ^
      const DeepCollectionEquality().hash(legsData) ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(mediaType) ^
      const DeepCollectionEquality().hash(contractType) ^
      runtimeType.hashCode;
}

extension $SearchTripInputExtension on SearchTripInput {
  SearchTripInput copyWith(
      {String? tripId,
      List<LegData>? legsData,
      String? profile,
      String? mediaType,
      String? contractType}) {
    return SearchTripInput(
        tripId: tripId ?? this.tripId,
        legsData: legsData ?? this.legsData,
        profile: profile ?? this.profile,
        mediaType: mediaType ?? this.mediaType,
        contractType: contractType ?? this.contractType);
  }

  SearchTripInput copyWithWrapped(
      {Wrapped<String?>? tripId,
      Wrapped<List<LegData>?>? legsData,
      Wrapped<String?>? profile,
      Wrapped<String?>? mediaType,
      Wrapped<String?>? contractType}) {
    return SearchTripInput(
        tripId: (tripId != null ? tripId.value : this.tripId),
        legsData: (legsData != null ? legsData.value : this.legsData),
        profile: (profile != null ? profile.value : this.profile),
        mediaType: (mediaType != null ? mediaType.value : this.mediaType),
        contractType:
            (contractType != null ? contractType.value : this.contractType));
  }
}

@JsonSerializable(explicitToJson: true)
class LegData {
  const LegData({
    required this.legDataType,
    required this.legId,
    this.duration,
    this.physicalKm,
    this.commercialKm,
  });

  factory LegData.fromJson(Map<String, dynamic> json) =>
      _$LegDataFromJson(json);

  static const toJsonFactory = _$LegDataToJson;
  Map<String, dynamic> toJson() => _$LegDataToJson(this);

  @JsonKey(
    name: 'legDataType',
    toJson: legDataEnumToJson,
    fromJson: legDataEnumFromJson,
  )
  final enums.LegDataEnum legDataType;
  @JsonKey(name: 'legId')
  final String legId;
  @JsonKey(name: 'duration')
  final String? duration;
  @JsonKey(name: 'physicalKm')
  final double? physicalKm;
  @JsonKey(name: 'commercialKm')
  final double? commercialKm;
  static const fromJsonFactory = _$LegDataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LegData &&
            (identical(other.legDataType, legDataType) ||
                const DeepCollectionEquality()
                    .equals(other.legDataType, legDataType)) &&
            (identical(other.legId, legId) ||
                const DeepCollectionEquality().equals(other.legId, legId)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.physicalKm, physicalKm) ||
                const DeepCollectionEquality()
                    .equals(other.physicalKm, physicalKm)) &&
            (identical(other.commercialKm, commercialKm) ||
                const DeepCollectionEquality()
                    .equals(other.commercialKm, commercialKm)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(legDataType) ^
      const DeepCollectionEquality().hash(legId) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(physicalKm) ^
      const DeepCollectionEquality().hash(commercialKm) ^
      runtimeType.hashCode;
}

extension $LegDataExtension on LegData {
  LegData copyWith(
      {enums.LegDataEnum? legDataType,
      String? legId,
      String? duration,
      double? physicalKm,
      double? commercialKm}) {
    return LegData(
        legDataType: legDataType ?? this.legDataType,
        legId: legId ?? this.legId,
        duration: duration ?? this.duration,
        physicalKm: physicalKm ?? this.physicalKm,
        commercialKm: commercialKm ?? this.commercialKm);
  }

  LegData copyWithWrapped(
      {Wrapped<enums.LegDataEnum>? legDataType,
      Wrapped<String>? legId,
      Wrapped<String?>? duration,
      Wrapped<double?>? physicalKm,
      Wrapped<double?>? commercialKm}) {
    return LegData(
        legDataType:
            (legDataType != null ? legDataType.value : this.legDataType),
        legId: (legId != null ? legId.value : this.legId),
        duration: (duration != null ? duration.value : this.duration),
        physicalKm: (physicalKm != null ? physicalKm.value : this.physicalKm),
        commercialKm:
            (commercialKm != null ? commercialKm.value : this.commercialKm));
  }
}

@JsonSerializable(explicitToJson: true)
class LegDataTransport {
  const LegDataTransport({
    required this.transportOperator,
    required this.line,
    this.route,
    this.journey,
    this.zone,
    required this.transportMode,
    required this.origin,
    this.originDt,
    required this.destination,
    this.destinationDt,
    required this.legDataType,
    required this.legId,
    this.duration,
    this.physicalKm,
    this.commercialKm,
  });

  factory LegDataTransport.fromJson(Map<String, dynamic> json) =>
      _$LegDataTransportFromJson(json);

  static const toJsonFactory = _$LegDataTransportToJson;
  Map<String, dynamic> toJson() => _$LegDataTransportToJson(this);

  @JsonKey(name: 'transportOperator')
  final String transportOperator;
  @JsonKey(name: 'line')
  final GenericInfoData line;
  @JsonKey(name: 'route')
  final GenericInfoData? route;
  @JsonKey(name: 'journey')
  final GenericInfoData? journey;
  @JsonKey(name: 'zone')
  final GenericInfoData? zone;
  @JsonKey(name: 'transportMode')
  final String transportMode;
  @JsonKey(name: 'origin')
  final String origin;
  @JsonKey(name: 'originDt', toJson: _dateToJson)
  final DateTime? originDt;
  @JsonKey(name: 'destination')
  final String destination;
  @JsonKey(name: 'destinationDt', toJson: _dateToJson)
  final DateTime? destinationDt;
  @JsonKey(
    name: 'legDataType',
    toJson: legDataEnumToJson,
    fromJson: legDataEnumFromJson,
  )
  final enums.LegDataEnum legDataType;
  @JsonKey(name: 'legId')
  final String legId;
  @JsonKey(name: 'duration')
  final String? duration;
  @JsonKey(name: 'physicalKm')
  final double? physicalKm;
  @JsonKey(name: 'commercialKm')
  final double? commercialKm;
  static const fromJsonFactory = _$LegDataTransportFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LegDataTransport &&
            (identical(other.transportOperator, transportOperator) ||
                const DeepCollectionEquality()
                    .equals(other.transportOperator, transportOperator)) &&
            (identical(other.line, line) ||
                const DeepCollectionEquality().equals(other.line, line)) &&
            (identical(other.route, route) ||
                const DeepCollectionEquality().equals(other.route, route)) &&
            (identical(other.journey, journey) ||
                const DeepCollectionEquality()
                    .equals(other.journey, journey)) &&
            (identical(other.zone, zone) ||
                const DeepCollectionEquality().equals(other.zone, zone)) &&
            (identical(other.transportMode, transportMode) ||
                const DeepCollectionEquality()
                    .equals(other.transportMode, transportMode)) &&
            (identical(other.origin, origin) ||
                const DeepCollectionEquality().equals(other.origin, origin)) &&
            (identical(other.originDt, originDt) ||
                const DeepCollectionEquality()
                    .equals(other.originDt, originDt)) &&
            (identical(other.destination, destination) ||
                const DeepCollectionEquality()
                    .equals(other.destination, destination)) &&
            (identical(other.destinationDt, destinationDt) ||
                const DeepCollectionEquality()
                    .equals(other.destinationDt, destinationDt)) &&
            (identical(other.legDataType, legDataType) ||
                const DeepCollectionEquality()
                    .equals(other.legDataType, legDataType)) &&
            (identical(other.legId, legId) ||
                const DeepCollectionEquality().equals(other.legId, legId)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.physicalKm, physicalKm) ||
                const DeepCollectionEquality()
                    .equals(other.physicalKm, physicalKm)) &&
            (identical(other.commercialKm, commercialKm) ||
                const DeepCollectionEquality()
                    .equals(other.commercialKm, commercialKm)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transportOperator) ^
      const DeepCollectionEquality().hash(line) ^
      const DeepCollectionEquality().hash(route) ^
      const DeepCollectionEquality().hash(journey) ^
      const DeepCollectionEquality().hash(zone) ^
      const DeepCollectionEquality().hash(transportMode) ^
      const DeepCollectionEquality().hash(origin) ^
      const DeepCollectionEquality().hash(originDt) ^
      const DeepCollectionEquality().hash(destination) ^
      const DeepCollectionEquality().hash(destinationDt) ^
      const DeepCollectionEquality().hash(legDataType) ^
      const DeepCollectionEquality().hash(legId) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(physicalKm) ^
      const DeepCollectionEquality().hash(commercialKm) ^
      runtimeType.hashCode;
}

extension $LegDataTransportExtension on LegDataTransport {
  LegDataTransport copyWith(
      {String? transportOperator,
      GenericInfoData? line,
      GenericInfoData? route,
      GenericInfoData? journey,
      GenericInfoData? zone,
      String? transportMode,
      String? origin,
      DateTime? originDt,
      String? destination,
      DateTime? destinationDt,
      enums.LegDataEnum? legDataType,
      String? legId,
      String? duration,
      double? physicalKm,
      double? commercialKm}) {
    return LegDataTransport(
        transportOperator: transportOperator ?? this.transportOperator,
        line: line ?? this.line,
        route: route ?? this.route,
        journey: journey ?? this.journey,
        zone: zone ?? this.zone,
        transportMode: transportMode ?? this.transportMode,
        origin: origin ?? this.origin,
        originDt: originDt ?? this.originDt,
        destination: destination ?? this.destination,
        destinationDt: destinationDt ?? this.destinationDt,
        legDataType: legDataType ?? this.legDataType,
        legId: legId ?? this.legId,
        duration: duration ?? this.duration,
        physicalKm: physicalKm ?? this.physicalKm,
        commercialKm: commercialKm ?? this.commercialKm);
  }

  LegDataTransport copyWithWrapped(
      {Wrapped<String>? transportOperator,
      Wrapped<GenericInfoData>? line,
      Wrapped<GenericInfoData?>? route,
      Wrapped<GenericInfoData?>? journey,
      Wrapped<GenericInfoData?>? zone,
      Wrapped<String>? transportMode,
      Wrapped<String>? origin,
      Wrapped<DateTime?>? originDt,
      Wrapped<String>? destination,
      Wrapped<DateTime?>? destinationDt,
      Wrapped<enums.LegDataEnum>? legDataType,
      Wrapped<String>? legId,
      Wrapped<String?>? duration,
      Wrapped<double?>? physicalKm,
      Wrapped<double?>? commercialKm}) {
    return LegDataTransport(
        transportOperator: (transportOperator != null
            ? transportOperator.value
            : this.transportOperator),
        line: (line != null ? line.value : this.line),
        route: (route != null ? route.value : this.route),
        journey: (journey != null ? journey.value : this.journey),
        zone: (zone != null ? zone.value : this.zone),
        transportMode:
            (transportMode != null ? transportMode.value : this.transportMode),
        origin: (origin != null ? origin.value : this.origin),
        originDt: (originDt != null ? originDt.value : this.originDt),
        destination:
            (destination != null ? destination.value : this.destination),
        destinationDt:
            (destinationDt != null ? destinationDt.value : this.destinationDt),
        legDataType:
            (legDataType != null ? legDataType.value : this.legDataType),
        legId: (legId != null ? legId.value : this.legId),
        duration: (duration != null ? duration.value : this.duration),
        physicalKm: (physicalKm != null ? physicalKm.value : this.physicalKm),
        commercialKm:
            (commercialKm != null ? commercialKm.value : this.commercialKm));
  }
}

@JsonSerializable(explicitToJson: true)
class LegDataPMob {
  const LegDataPMob({
    this.route,
    this.journey,
    this.zone,
    this.origin,
    this.originDt,
    this.destination,
    this.destinationDt,
    required this.legDataType,
    required this.legId,
    this.duration,
    this.physicalKm,
    this.commercialKm,
  });

  factory LegDataPMob.fromJson(Map<String, dynamic> json) =>
      _$LegDataPMobFromJson(json);

  static const toJsonFactory = _$LegDataPMobToJson;
  Map<String, dynamic> toJson() => _$LegDataPMobToJson(this);

  @JsonKey(name: 'route')
  final GenericInfoData? route;
  @JsonKey(name: 'journey')
  final GenericInfoData? journey;
  @JsonKey(name: 'zone')
  final GenericInfoData? zone;
  @JsonKey(name: 'origin')
  final String? origin;
  @JsonKey(name: 'originDt', toJson: _dateToJson)
  final DateTime? originDt;
  @JsonKey(name: 'destination')
  final String? destination;
  @JsonKey(name: 'destinationDt', toJson: _dateToJson)
  final DateTime? destinationDt;
  @JsonKey(
    name: 'legDataType',
    toJson: legDataEnumToJson,
    fromJson: legDataEnumFromJson,
  )
  final enums.LegDataEnum legDataType;
  @JsonKey(name: 'legId')
  final String legId;
  @JsonKey(name: 'duration')
  final String? duration;
  @JsonKey(name: 'physicalKm')
  final double? physicalKm;
  @JsonKey(name: 'commercialKm')
  final double? commercialKm;
  static const fromJsonFactory = _$LegDataPMobFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LegDataPMob &&
            (identical(other.route, route) ||
                const DeepCollectionEquality().equals(other.route, route)) &&
            (identical(other.journey, journey) ||
                const DeepCollectionEquality()
                    .equals(other.journey, journey)) &&
            (identical(other.zone, zone) ||
                const DeepCollectionEquality().equals(other.zone, zone)) &&
            (identical(other.origin, origin) ||
                const DeepCollectionEquality().equals(other.origin, origin)) &&
            (identical(other.originDt, originDt) ||
                const DeepCollectionEquality()
                    .equals(other.originDt, originDt)) &&
            (identical(other.destination, destination) ||
                const DeepCollectionEquality()
                    .equals(other.destination, destination)) &&
            (identical(other.destinationDt, destinationDt) ||
                const DeepCollectionEquality()
                    .equals(other.destinationDt, destinationDt)) &&
            (identical(other.legDataType, legDataType) ||
                const DeepCollectionEquality()
                    .equals(other.legDataType, legDataType)) &&
            (identical(other.legId, legId) ||
                const DeepCollectionEquality().equals(other.legId, legId)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.physicalKm, physicalKm) ||
                const DeepCollectionEquality()
                    .equals(other.physicalKm, physicalKm)) &&
            (identical(other.commercialKm, commercialKm) ||
                const DeepCollectionEquality()
                    .equals(other.commercialKm, commercialKm)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(route) ^
      const DeepCollectionEquality().hash(journey) ^
      const DeepCollectionEquality().hash(zone) ^
      const DeepCollectionEquality().hash(origin) ^
      const DeepCollectionEquality().hash(originDt) ^
      const DeepCollectionEquality().hash(destination) ^
      const DeepCollectionEquality().hash(destinationDt) ^
      const DeepCollectionEquality().hash(legDataType) ^
      const DeepCollectionEquality().hash(legId) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(physicalKm) ^
      const DeepCollectionEquality().hash(commercialKm) ^
      runtimeType.hashCode;
}

extension $LegDataPMobExtension on LegDataPMob {
  LegDataPMob copyWith(
      {GenericInfoData? route,
      GenericInfoData? journey,
      GenericInfoData? zone,
      String? origin,
      DateTime? originDt,
      String? destination,
      DateTime? destinationDt,
      enums.LegDataEnum? legDataType,
      String? legId,
      String? duration,
      double? physicalKm,
      double? commercialKm}) {
    return LegDataPMob(
        route: route ?? this.route,
        journey: journey ?? this.journey,
        zone: zone ?? this.zone,
        origin: origin ?? this.origin,
        originDt: originDt ?? this.originDt,
        destination: destination ?? this.destination,
        destinationDt: destinationDt ?? this.destinationDt,
        legDataType: legDataType ?? this.legDataType,
        legId: legId ?? this.legId,
        duration: duration ?? this.duration,
        physicalKm: physicalKm ?? this.physicalKm,
        commercialKm: commercialKm ?? this.commercialKm);
  }

  LegDataPMob copyWithWrapped(
      {Wrapped<GenericInfoData?>? route,
      Wrapped<GenericInfoData?>? journey,
      Wrapped<GenericInfoData?>? zone,
      Wrapped<String?>? origin,
      Wrapped<DateTime?>? originDt,
      Wrapped<String?>? destination,
      Wrapped<DateTime?>? destinationDt,
      Wrapped<enums.LegDataEnum>? legDataType,
      Wrapped<String>? legId,
      Wrapped<String?>? duration,
      Wrapped<double?>? physicalKm,
      Wrapped<double?>? commercialKm}) {
    return LegDataPMob(
        route: (route != null ? route.value : this.route),
        journey: (journey != null ? journey.value : this.journey),
        zone: (zone != null ? zone.value : this.zone),
        origin: (origin != null ? origin.value : this.origin),
        originDt: (originDt != null ? originDt.value : this.originDt),
        destination:
            (destination != null ? destination.value : this.destination),
        destinationDt:
            (destinationDt != null ? destinationDt.value : this.destinationDt),
        legDataType:
            (legDataType != null ? legDataType.value : this.legDataType),
        legId: (legId != null ? legId.value : this.legId),
        duration: (duration != null ? duration.value : this.duration),
        physicalKm: (physicalKm != null ? physicalKm.value : this.physicalKm),
        commercialKm:
            (commercialKm != null ? commercialKm.value : this.commercialKm));
  }
}

@JsonSerializable(explicitToJson: true)
class LegDataShare {
  const LegDataShare({
    this.transportOperator,
    this.line,
    this.zone,
    required this.transportMode,
    required this.origin,
    this.originDt,
    required this.destination,
    this.destinationDt,
    required this.legDataType,
    required this.legId,
    this.duration,
    this.physicalKm,
    this.commercialKm,
  });

  factory LegDataShare.fromJson(Map<String, dynamic> json) =>
      _$LegDataShareFromJson(json);

  static const toJsonFactory = _$LegDataShareToJson;
  Map<String, dynamic> toJson() => _$LegDataShareToJson(this);

  @JsonKey(name: 'transportOperator')
  final String? transportOperator;
  @JsonKey(name: 'line')
  final GenericInfoData? line;
  @JsonKey(name: 'zone')
  final GenericInfoData? zone;
  @JsonKey(name: 'transportMode')
  final String transportMode;
  @JsonKey(name: 'origin')
  final String origin;
  @JsonKey(name: 'originDt', toJson: _dateToJson)
  final DateTime? originDt;
  @JsonKey(name: 'destination')
  final String destination;
  @JsonKey(name: 'destinationDt', toJson: _dateToJson)
  final DateTime? destinationDt;
  @JsonKey(
    name: 'legDataType',
    toJson: legDataEnumToJson,
    fromJson: legDataEnumFromJson,
  )
  final enums.LegDataEnum legDataType;
  @JsonKey(name: 'legId')
  final String legId;
  @JsonKey(name: 'duration')
  final String? duration;
  @JsonKey(name: 'physicalKm')
  final double? physicalKm;
  @JsonKey(name: 'commercialKm')
  final double? commercialKm;
  static const fromJsonFactory = _$LegDataShareFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LegDataShare &&
            (identical(other.transportOperator, transportOperator) ||
                const DeepCollectionEquality()
                    .equals(other.transportOperator, transportOperator)) &&
            (identical(other.line, line) ||
                const DeepCollectionEquality().equals(other.line, line)) &&
            (identical(other.zone, zone) ||
                const DeepCollectionEquality().equals(other.zone, zone)) &&
            (identical(other.transportMode, transportMode) ||
                const DeepCollectionEquality()
                    .equals(other.transportMode, transportMode)) &&
            (identical(other.origin, origin) ||
                const DeepCollectionEquality().equals(other.origin, origin)) &&
            (identical(other.originDt, originDt) ||
                const DeepCollectionEquality()
                    .equals(other.originDt, originDt)) &&
            (identical(other.destination, destination) ||
                const DeepCollectionEquality()
                    .equals(other.destination, destination)) &&
            (identical(other.destinationDt, destinationDt) ||
                const DeepCollectionEquality()
                    .equals(other.destinationDt, destinationDt)) &&
            (identical(other.legDataType, legDataType) ||
                const DeepCollectionEquality()
                    .equals(other.legDataType, legDataType)) &&
            (identical(other.legId, legId) ||
                const DeepCollectionEquality().equals(other.legId, legId)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.physicalKm, physicalKm) ||
                const DeepCollectionEquality()
                    .equals(other.physicalKm, physicalKm)) &&
            (identical(other.commercialKm, commercialKm) ||
                const DeepCollectionEquality()
                    .equals(other.commercialKm, commercialKm)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transportOperator) ^
      const DeepCollectionEquality().hash(line) ^
      const DeepCollectionEquality().hash(zone) ^
      const DeepCollectionEquality().hash(transportMode) ^
      const DeepCollectionEquality().hash(origin) ^
      const DeepCollectionEquality().hash(originDt) ^
      const DeepCollectionEquality().hash(destination) ^
      const DeepCollectionEquality().hash(destinationDt) ^
      const DeepCollectionEquality().hash(legDataType) ^
      const DeepCollectionEquality().hash(legId) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(physicalKm) ^
      const DeepCollectionEquality().hash(commercialKm) ^
      runtimeType.hashCode;
}

extension $LegDataShareExtension on LegDataShare {
  LegDataShare copyWith(
      {String? transportOperator,
      GenericInfoData? line,
      GenericInfoData? zone,
      String? transportMode,
      String? origin,
      DateTime? originDt,
      String? destination,
      DateTime? destinationDt,
      enums.LegDataEnum? legDataType,
      String? legId,
      String? duration,
      double? physicalKm,
      double? commercialKm}) {
    return LegDataShare(
        transportOperator: transportOperator ?? this.transportOperator,
        line: line ?? this.line,
        zone: zone ?? this.zone,
        transportMode: transportMode ?? this.transportMode,
        origin: origin ?? this.origin,
        originDt: originDt ?? this.originDt,
        destination: destination ?? this.destination,
        destinationDt: destinationDt ?? this.destinationDt,
        legDataType: legDataType ?? this.legDataType,
        legId: legId ?? this.legId,
        duration: duration ?? this.duration,
        physicalKm: physicalKm ?? this.physicalKm,
        commercialKm: commercialKm ?? this.commercialKm);
  }

  LegDataShare copyWithWrapped(
      {Wrapped<String?>? transportOperator,
      Wrapped<GenericInfoData?>? line,
      Wrapped<GenericInfoData?>? zone,
      Wrapped<String>? transportMode,
      Wrapped<String>? origin,
      Wrapped<DateTime?>? originDt,
      Wrapped<String>? destination,
      Wrapped<DateTime?>? destinationDt,
      Wrapped<enums.LegDataEnum>? legDataType,
      Wrapped<String>? legId,
      Wrapped<String?>? duration,
      Wrapped<double?>? physicalKm,
      Wrapped<double?>? commercialKm}) {
    return LegDataShare(
        transportOperator: (transportOperator != null
            ? transportOperator.value
            : this.transportOperator),
        line: (line != null ? line.value : this.line),
        zone: (zone != null ? zone.value : this.zone),
        transportMode:
            (transportMode != null ? transportMode.value : this.transportMode),
        origin: (origin != null ? origin.value : this.origin),
        originDt: (originDt != null ? originDt.value : this.originDt),
        destination:
            (destination != null ? destination.value : this.destination),
        destinationDt:
            (destinationDt != null ? destinationDt.value : this.destinationDt),
        legDataType:
            (legDataType != null ? legDataType.value : this.legDataType),
        legId: (legId != null ? legId.value : this.legId),
        duration: (duration != null ? duration.value : this.duration),
        physicalKm: (physicalKm != null ? physicalKm.value : this.physicalKm),
        commercialKm:
            (commercialKm != null ? commercialKm.value : this.commercialKm));
  }
}

@JsonSerializable(explicitToJson: true)
class GenericInfoData {
  const GenericInfoData({
    this.id,
    this.description,
  });

  factory GenericInfoData.fromJson(Map<String, dynamic> json) =>
      _$GenericInfoDataFromJson(json);

  static const toJsonFactory = _$GenericInfoDataToJson;
  Map<String, dynamic> toJson() => _$GenericInfoDataToJson(this);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$GenericInfoDataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GenericInfoData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $GenericInfoDataExtension on GenericInfoData {
  GenericInfoData copyWith({String? id, String? description}) {
    return GenericInfoData(
        id: id ?? this.id, description: description ?? this.description);
  }

  GenericInfoData copyWithWrapped(
      {Wrapped<String?>? id, Wrapped<String?>? description}) {
    return GenericInfoData(
        id: (id != null ? id.value : this.id),
        description:
            (description != null ? description.value : this.description));
  }
}

@JsonSerializable(explicitToJson: true)
class CardDataModel {
  const CardDataModel({
    this.cardDataModelId,
    this.encodingType,
    this.encodedCardDataModel,
  });

  factory CardDataModel.fromJson(Map<String, dynamic> json) =>
      _$CardDataModelFromJson(json);

  static const toJsonFactory = _$CardDataModelToJson;
  Map<String, dynamic> toJson() => _$CardDataModelToJson(this);

  @JsonKey(name: 'cardDataModelId')
  final String? cardDataModelId;
  @JsonKey(
    name: 'encodingType',
    toJson: cardDataModelEncodingTypeNullableToJson,
    fromJson: cardDataModelEncodingTypeNullableFromJson,
  )
  final enums.CardDataModelEncodingType? encodingType;
  @JsonKey(name: 'encodedCardDataModel')
  final String? encodedCardDataModel;
  static const fromJsonFactory = _$CardDataModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CardDataModel &&
            (identical(other.cardDataModelId, cardDataModelId) ||
                const DeepCollectionEquality()
                    .equals(other.cardDataModelId, cardDataModelId)) &&
            (identical(other.encodingType, encodingType) ||
                const DeepCollectionEquality()
                    .equals(other.encodingType, encodingType)) &&
            (identical(other.encodedCardDataModel, encodedCardDataModel) ||
                const DeepCollectionEquality()
                    .equals(other.encodedCardDataModel, encodedCardDataModel)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(cardDataModelId) ^
      const DeepCollectionEquality().hash(encodingType) ^
      const DeepCollectionEquality().hash(encodedCardDataModel) ^
      runtimeType.hashCode;
}

extension $CardDataModelExtension on CardDataModel {
  CardDataModel copyWith(
      {String? cardDataModelId,
      enums.CardDataModelEncodingType? encodingType,
      String? encodedCardDataModel}) {
    return CardDataModel(
        cardDataModelId: cardDataModelId ?? this.cardDataModelId,
        encodingType: encodingType ?? this.encodingType,
        encodedCardDataModel:
            encodedCardDataModel ?? this.encodedCardDataModel);
  }

  CardDataModel copyWithWrapped(
      {Wrapped<String?>? cardDataModelId,
      Wrapped<enums.CardDataModelEncodingType?>? encodingType,
      Wrapped<String?>? encodedCardDataModel}) {
    return CardDataModel(
        cardDataModelId: (cardDataModelId != null
            ? cardDataModelId.value
            : this.cardDataModelId),
        encodingType:
            (encodingType != null ? encodingType.value : this.encodingType),
        encodedCardDataModel: (encodedCardDataModel != null
            ? encodedCardDataModel.value
            : this.encodedCardDataModel));
  }
}

@JsonSerializable(explicitToJson: true)
class Error {
  const Error({
    required this.code,
    required this.message,
    this.details,
  });

  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);

  static const toJsonFactory = _$ErrorToJson;
  Map<String, dynamic> toJson() => _$ErrorToJson(this);

  @JsonKey(name: 'code')
  final String code;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'details')
  final String? details;
  static const fromJsonFactory = _$ErrorFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality().equals(other.details, details)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(details) ^
      runtimeType.hashCode;
}

extension $ErrorExtension on Error {
  Error copyWith({String? code, String? message, String? details}) {
    return Error(
        code: code ?? this.code,
        message: message ?? this.message,
        details: details ?? this.details);
  }

  Error copyWithWrapped(
      {Wrapped<String>? code,
      Wrapped<String>? message,
      Wrapped<String?>? details}) {
    return Error(
        code: (code != null ? code.value : this.code),
        message: (message != null ? message.value : this.message),
        details: (details != null ? details.value : this.details));
  }
}

@JsonSerializable(explicitToJson: true)
class DeviceData {
  const DeviceData({
    this.deviceId,
    required this.deviceCodeExt,
    required this.userId,
    this.registrationDate,
    this.blacklistDate,
    this.model,
    this.status,
    this.deviceType,
  });

  factory DeviceData.fromJson(Map<String, dynamic> json) =>
      _$DeviceDataFromJson(json);

  static const toJsonFactory = _$DeviceDataToJson;
  Map<String, dynamic> toJson() => _$DeviceDataToJson(this);

  @JsonKey(name: 'deviceId')
  final String? deviceId;
  @JsonKey(name: 'deviceCodeExt')
  final String deviceCodeExt;
  @JsonKey(name: 'userId')
  final String userId;
  @JsonKey(name: 'registrationDate')
  final DateTime? registrationDate;
  @JsonKey(name: 'blacklistDate')
  final DateTime? blacklistDate;
  @JsonKey(name: 'model')
  final String? model;
  @JsonKey(
    name: 'status',
    toJson: deviceDataStatusNullableToJson,
    fromJson: deviceDataStatusNullableFromJson,
  )
  final enums.DeviceDataStatus? status;
  @JsonKey(name: 'deviceType')
  final String? deviceType;
  static const fromJsonFactory = _$DeviceDataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeviceData &&
            (identical(other.deviceId, deviceId) ||
                const DeepCollectionEquality()
                    .equals(other.deviceId, deviceId)) &&
            (identical(other.deviceCodeExt, deviceCodeExt) ||
                const DeepCollectionEquality()
                    .equals(other.deviceCodeExt, deviceCodeExt)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.registrationDate, registrationDate) ||
                const DeepCollectionEquality()
                    .equals(other.registrationDate, registrationDate)) &&
            (identical(other.blacklistDate, blacklistDate) ||
                const DeepCollectionEquality()
                    .equals(other.blacklistDate, blacklistDate)) &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.deviceType, deviceType) ||
                const DeepCollectionEquality()
                    .equals(other.deviceType, deviceType)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(deviceId) ^
      const DeepCollectionEquality().hash(deviceCodeExt) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(registrationDate) ^
      const DeepCollectionEquality().hash(blacklistDate) ^
      const DeepCollectionEquality().hash(model) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(deviceType) ^
      runtimeType.hashCode;
}

extension $DeviceDataExtension on DeviceData {
  DeviceData copyWith(
      {String? deviceId,
      String? deviceCodeExt,
      String? userId,
      DateTime? registrationDate,
      DateTime? blacklistDate,
      String? model,
      enums.DeviceDataStatus? status,
      String? deviceType}) {
    return DeviceData(
        deviceId: deviceId ?? this.deviceId,
        deviceCodeExt: deviceCodeExt ?? this.deviceCodeExt,
        userId: userId ?? this.userId,
        registrationDate: registrationDate ?? this.registrationDate,
        blacklistDate: blacklistDate ?? this.blacklistDate,
        model: model ?? this.model,
        status: status ?? this.status,
        deviceType: deviceType ?? this.deviceType);
  }

  DeviceData copyWithWrapped(
      {Wrapped<String?>? deviceId,
      Wrapped<String>? deviceCodeExt,
      Wrapped<String>? userId,
      Wrapped<DateTime?>? registrationDate,
      Wrapped<DateTime?>? blacklistDate,
      Wrapped<String?>? model,
      Wrapped<enums.DeviceDataStatus?>? status,
      Wrapped<String?>? deviceType}) {
    return DeviceData(
        deviceId: (deviceId != null ? deviceId.value : this.deviceId),
        deviceCodeExt:
            (deviceCodeExt != null ? deviceCodeExt.value : this.deviceCodeExt),
        userId: (userId != null ? userId.value : this.userId),
        registrationDate: (registrationDate != null
            ? registrationDate.value
            : this.registrationDate),
        blacklistDate:
            (blacklistDate != null ? blacklistDate.value : this.blacklistDate),
        model: (model != null ? model.value : this.model),
        status: (status != null ? status.value : this.status),
        deviceType: (deviceType != null ? deviceType.value : this.deviceType));
  }
}

@JsonSerializable(explicitToJson: true)
class HCEDeviceBlackList {
  const HCEDeviceBlackList({
    this.deviceCodeExt,
    this.inBlackListSince,
    this.model,
    this.registrationDate,
  });

  factory HCEDeviceBlackList.fromJson(Map<String, dynamic> json) =>
      _$HCEDeviceBlackListFromJson(json);

  static const toJsonFactory = _$HCEDeviceBlackListToJson;
  Map<String, dynamic> toJson() => _$HCEDeviceBlackListToJson(this);

  @JsonKey(name: 'deviceCodeExt')
  final String? deviceCodeExt;
  @JsonKey(name: 'inBlackListSince')
  final DateTime? inBlackListSince;
  @JsonKey(name: 'model')
  final String? model;
  @JsonKey(name: 'registrationDate')
  final DateTime? registrationDate;
  static const fromJsonFactory = _$HCEDeviceBlackListFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HCEDeviceBlackList &&
            (identical(other.deviceCodeExt, deviceCodeExt) ||
                const DeepCollectionEquality()
                    .equals(other.deviceCodeExt, deviceCodeExt)) &&
            (identical(other.inBlackListSince, inBlackListSince) ||
                const DeepCollectionEquality()
                    .equals(other.inBlackListSince, inBlackListSince)) &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)) &&
            (identical(other.registrationDate, registrationDate) ||
                const DeepCollectionEquality()
                    .equals(other.registrationDate, registrationDate)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(deviceCodeExt) ^
      const DeepCollectionEquality().hash(inBlackListSince) ^
      const DeepCollectionEquality().hash(model) ^
      const DeepCollectionEquality().hash(registrationDate) ^
      runtimeType.hashCode;
}

extension $HCEDeviceBlackListExtension on HCEDeviceBlackList {
  HCEDeviceBlackList copyWith(
      {String? deviceCodeExt,
      DateTime? inBlackListSince,
      String? model,
      DateTime? registrationDate}) {
    return HCEDeviceBlackList(
        deviceCodeExt: deviceCodeExt ?? this.deviceCodeExt,
        inBlackListSince: inBlackListSince ?? this.inBlackListSince,
        model: model ?? this.model,
        registrationDate: registrationDate ?? this.registrationDate);
  }

  HCEDeviceBlackList copyWithWrapped(
      {Wrapped<String?>? deviceCodeExt,
      Wrapped<DateTime?>? inBlackListSince,
      Wrapped<String?>? model,
      Wrapped<DateTime?>? registrationDate}) {
    return HCEDeviceBlackList(
        deviceCodeExt:
            (deviceCodeExt != null ? deviceCodeExt.value : this.deviceCodeExt),
        inBlackListSince: (inBlackListSince != null
            ? inBlackListSince.value
            : this.inBlackListSince),
        model: (model != null ? model.value : this.model),
        registrationDate: (registrationDate != null
            ? registrationDate.value
            : this.registrationDate));
  }
}

@JsonSerializable(explicitToJson: true)
class TicketListData {
  const TicketListData({
    required this.ticketId,
    required this.mediaId,
    this.touchPointId,
    this.deviceId,
    this.notes,
    this.eventDateTime,
    this.codInsertionType,
  });

  factory TicketListData.fromJson(Map<String, dynamic> json) =>
      _$TicketListDataFromJson(json);

  static const toJsonFactory = _$TicketListDataToJson;
  Map<String, dynamic> toJson() => _$TicketListDataToJson(this);

  @JsonKey(name: 'ticketId')
  final String ticketId;
  @JsonKey(name: 'mediaId')
  final String mediaId;
  @JsonKey(name: 'touchPointId')
  final String? touchPointId;
  @JsonKey(name: 'deviceId')
  final String? deviceId;
  @JsonKey(name: 'notes')
  final String? notes;
  @JsonKey(name: 'eventDateTime')
  final DateTime? eventDateTime;
  @JsonKey(
    name: 'codInsertionType',
    toJson: ticketListDataCodInsertionTypeNullableToJson,
    fromJson: ticketListDataCodInsertionTypeNullableFromJson,
  )
  final enums.TicketListDataCodInsertionType? codInsertionType;
  static const fromJsonFactory = _$TicketListDataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TicketListData &&
            (identical(other.ticketId, ticketId) ||
                const DeepCollectionEquality()
                    .equals(other.ticketId, ticketId)) &&
            (identical(other.mediaId, mediaId) ||
                const DeepCollectionEquality()
                    .equals(other.mediaId, mediaId)) &&
            (identical(other.touchPointId, touchPointId) ||
                const DeepCollectionEquality()
                    .equals(other.touchPointId, touchPointId)) &&
            (identical(other.deviceId, deviceId) ||
                const DeepCollectionEquality()
                    .equals(other.deviceId, deviceId)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.eventDateTime, eventDateTime) ||
                const DeepCollectionEquality()
                    .equals(other.eventDateTime, eventDateTime)) &&
            (identical(other.codInsertionType, codInsertionType) ||
                const DeepCollectionEquality()
                    .equals(other.codInsertionType, codInsertionType)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ticketId) ^
      const DeepCollectionEquality().hash(mediaId) ^
      const DeepCollectionEquality().hash(touchPointId) ^
      const DeepCollectionEquality().hash(deviceId) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(eventDateTime) ^
      const DeepCollectionEquality().hash(codInsertionType) ^
      runtimeType.hashCode;
}

extension $TicketListDataExtension on TicketListData {
  TicketListData copyWith(
      {String? ticketId,
      String? mediaId,
      String? touchPointId,
      String? deviceId,
      String? notes,
      DateTime? eventDateTime,
      enums.TicketListDataCodInsertionType? codInsertionType}) {
    return TicketListData(
        ticketId: ticketId ?? this.ticketId,
        mediaId: mediaId ?? this.mediaId,
        touchPointId: touchPointId ?? this.touchPointId,
        deviceId: deviceId ?? this.deviceId,
        notes: notes ?? this.notes,
        eventDateTime: eventDateTime ?? this.eventDateTime,
        codInsertionType: codInsertionType ?? this.codInsertionType);
  }

  TicketListData copyWithWrapped(
      {Wrapped<String>? ticketId,
      Wrapped<String>? mediaId,
      Wrapped<String?>? touchPointId,
      Wrapped<String?>? deviceId,
      Wrapped<String?>? notes,
      Wrapped<DateTime?>? eventDateTime,
      Wrapped<enums.TicketListDataCodInsertionType?>? codInsertionType}) {
    return TicketListData(
        ticketId: (ticketId != null ? ticketId.value : this.ticketId),
        mediaId: (mediaId != null ? mediaId.value : this.mediaId),
        touchPointId:
            (touchPointId != null ? touchPointId.value : this.touchPointId),
        deviceId: (deviceId != null ? deviceId.value : this.deviceId),
        notes: (notes != null ? notes.value : this.notes),
        eventDateTime:
            (eventDateTime != null ? eventDateTime.value : this.eventDateTime),
        codInsertionType: (codInsertionType != null
            ? codInsertionType.value
            : this.codInsertionType));
  }
}

@JsonSerializable(explicitToJson: true)
class EventData {
  const EventData({
    this.eventType,
    this.ticketId,
    this.mediaId,
    this.hceDeviceId,
    this.mediaExtCode,
    this.partyAccountId,
    this.sessionId,
    this.eventExtCode,
    required this.eventDate,
    this.eventOutcome,
    this.note,
    this.infrastructureList,
  });

  factory EventData.fromJson(Map<String, dynamic> json) =>
      _$EventDataFromJson(json);

  static const toJsonFactory = _$EventDataToJson;
  Map<String, dynamic> toJson() => _$EventDataToJson(this);

  @JsonKey(
    name: 'eventType',
    toJson: eventDataEventTypeNullableToJson,
    fromJson: eventDataEventTypeEventTypeNullableFromJson,
  )
  final enums.EventDataEventType? eventType;
  static enums.EventDataEventType? eventDataEventTypeEventTypeNullableFromJson(
          Object? value) =>
      eventDataEventTypeNullableFromJson(
          value, enums.EventDataEventType.tktbased);

  @JsonKey(name: 'ticketId')
  final String? ticketId;
  @JsonKey(name: 'mediaId')
  final String? mediaId;
  @JsonKey(name: 'hceDeviceId')
  final String? hceDeviceId;
  @JsonKey(name: 'mediaExtCode')
  final String? mediaExtCode;
  @JsonKey(name: 'partyAccountId')
  final String? partyAccountId;
  @JsonKey(name: 'sessionId')
  final String? sessionId;
  @JsonKey(name: 'eventExtCode')
  final String? eventExtCode;
  @JsonKey(name: 'eventDate')
  final DateTime eventDate;
  @JsonKey(
    name: 'eventOutcome',
    toJson: eventDataEventOutcomeNullableToJson,
    fromJson: eventDataEventOutcomeEventOutcomeNullableFromJson,
  )
  final enums.EventDataEventOutcome? eventOutcome;
  static enums.EventDataEventOutcome?
      eventDataEventOutcomeEventOutcomeNullableFromJson(Object? value) =>
          eventDataEventOutcomeNullableFromJson(
              value, enums.EventDataEventOutcome.success);

  @JsonKey(name: 'note')
  final String? note;
  @JsonKey(name: 'infrastructureList', defaultValue: <InfrastructureElement>[])
  final List<InfrastructureElement>? infrastructureList;
  static const fromJsonFactory = _$EventDataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EventData &&
            (identical(other.eventType, eventType) ||
                const DeepCollectionEquality()
                    .equals(other.eventType, eventType)) &&
            (identical(other.ticketId, ticketId) ||
                const DeepCollectionEquality()
                    .equals(other.ticketId, ticketId)) &&
            (identical(other.mediaId, mediaId) ||
                const DeepCollectionEquality()
                    .equals(other.mediaId, mediaId)) &&
            (identical(other.hceDeviceId, hceDeviceId) ||
                const DeepCollectionEquality()
                    .equals(other.hceDeviceId, hceDeviceId)) &&
            (identical(other.mediaExtCode, mediaExtCode) ||
                const DeepCollectionEquality()
                    .equals(other.mediaExtCode, mediaExtCode)) &&
            (identical(other.partyAccountId, partyAccountId) ||
                const DeepCollectionEquality()
                    .equals(other.partyAccountId, partyAccountId)) &&
            (identical(other.sessionId, sessionId) ||
                const DeepCollectionEquality()
                    .equals(other.sessionId, sessionId)) &&
            (identical(other.eventExtCode, eventExtCode) ||
                const DeepCollectionEquality()
                    .equals(other.eventExtCode, eventExtCode)) &&
            (identical(other.eventDate, eventDate) ||
                const DeepCollectionEquality()
                    .equals(other.eventDate, eventDate)) &&
            (identical(other.eventOutcome, eventOutcome) ||
                const DeepCollectionEquality()
                    .equals(other.eventOutcome, eventOutcome)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.infrastructureList, infrastructureList) ||
                const DeepCollectionEquality()
                    .equals(other.infrastructureList, infrastructureList)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(eventType) ^
      const DeepCollectionEquality().hash(ticketId) ^
      const DeepCollectionEquality().hash(mediaId) ^
      const DeepCollectionEquality().hash(hceDeviceId) ^
      const DeepCollectionEquality().hash(mediaExtCode) ^
      const DeepCollectionEquality().hash(partyAccountId) ^
      const DeepCollectionEquality().hash(sessionId) ^
      const DeepCollectionEquality().hash(eventExtCode) ^
      const DeepCollectionEquality().hash(eventDate) ^
      const DeepCollectionEquality().hash(eventOutcome) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(infrastructureList) ^
      runtimeType.hashCode;
}

extension $EventDataExtension on EventData {
  EventData copyWith(
      {enums.EventDataEventType? eventType,
      String? ticketId,
      String? mediaId,
      String? hceDeviceId,
      String? mediaExtCode,
      String? partyAccountId,
      String? sessionId,
      String? eventExtCode,
      DateTime? eventDate,
      enums.EventDataEventOutcome? eventOutcome,
      String? note,
      List<InfrastructureElement>? infrastructureList}) {
    return EventData(
        eventType: eventType ?? this.eventType,
        ticketId: ticketId ?? this.ticketId,
        mediaId: mediaId ?? this.mediaId,
        hceDeviceId: hceDeviceId ?? this.hceDeviceId,
        mediaExtCode: mediaExtCode ?? this.mediaExtCode,
        partyAccountId: partyAccountId ?? this.partyAccountId,
        sessionId: sessionId ?? this.sessionId,
        eventExtCode: eventExtCode ?? this.eventExtCode,
        eventDate: eventDate ?? this.eventDate,
        eventOutcome: eventOutcome ?? this.eventOutcome,
        note: note ?? this.note,
        infrastructureList: infrastructureList ?? this.infrastructureList);
  }

  EventData copyWithWrapped(
      {Wrapped<enums.EventDataEventType?>? eventType,
      Wrapped<String?>? ticketId,
      Wrapped<String?>? mediaId,
      Wrapped<String?>? hceDeviceId,
      Wrapped<String?>? mediaExtCode,
      Wrapped<String?>? partyAccountId,
      Wrapped<String?>? sessionId,
      Wrapped<String?>? eventExtCode,
      Wrapped<DateTime>? eventDate,
      Wrapped<enums.EventDataEventOutcome?>? eventOutcome,
      Wrapped<String?>? note,
      Wrapped<List<InfrastructureElement>?>? infrastructureList}) {
    return EventData(
        eventType: (eventType != null ? eventType.value : this.eventType),
        ticketId: (ticketId != null ? ticketId.value : this.ticketId),
        mediaId: (mediaId != null ? mediaId.value : this.mediaId),
        hceDeviceId:
            (hceDeviceId != null ? hceDeviceId.value : this.hceDeviceId),
        mediaExtCode:
            (mediaExtCode != null ? mediaExtCode.value : this.mediaExtCode),
        partyAccountId: (partyAccountId != null
            ? partyAccountId.value
            : this.partyAccountId),
        sessionId: (sessionId != null ? sessionId.value : this.sessionId),
        eventExtCode:
            (eventExtCode != null ? eventExtCode.value : this.eventExtCode),
        eventDate: (eventDate != null ? eventDate.value : this.eventDate),
        eventOutcome:
            (eventOutcome != null ? eventOutcome.value : this.eventOutcome),
        note: (note != null ? note.value : this.note),
        infrastructureList: (infrastructureList != null
            ? infrastructureList.value
            : this.infrastructureList));
  }
}

@JsonSerializable(explicitToJson: true)
class IssuanceNotification {
  const IssuanceNotification({
    required this.eventData,
  });

  factory IssuanceNotification.fromJson(Map<String, dynamic> json) =>
      _$IssuanceNotificationFromJson(json);

  static const toJsonFactory = _$IssuanceNotificationToJson;
  Map<String, dynamic> toJson() => _$IssuanceNotificationToJson(this);

  @JsonKey(name: 'eventData')
  final EventData eventData;
  static const fromJsonFactory = _$IssuanceNotificationFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IssuanceNotification &&
            (identical(other.eventData, eventData) ||
                const DeepCollectionEquality()
                    .equals(other.eventData, eventData)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(eventData) ^ runtimeType.hashCode;
}

extension $IssuanceNotificationExtension on IssuanceNotification {
  IssuanceNotification copyWith({EventData? eventData}) {
    return IssuanceNotification(eventData: eventData ?? this.eventData);
  }

  IssuanceNotification copyWithWrapped({Wrapped<EventData>? eventData}) {
    return IssuanceNotification(
        eventData: (eventData != null ? eventData.value : this.eventData));
  }
}

@JsonSerializable(explicitToJson: true)
class ProofOfPurchase {
  const ProofOfPurchase({
    this.ticketId,
    this.purchaseDate,
    this.transactionId,
    this.cardDataModelId,
    this.tokenInfo,
  });

  factory ProofOfPurchase.fromJson(Map<String, dynamic> json) =>
      _$ProofOfPurchaseFromJson(json);

  static const toJsonFactory = _$ProofOfPurchaseToJson;
  Map<String, dynamic> toJson() => _$ProofOfPurchaseToJson(this);

  @JsonKey(name: 'ticketId')
  final String? ticketId;
  @JsonKey(name: 'purchaseDate')
  final DateTime? purchaseDate;
  @JsonKey(name: 'transactionId')
  final String? transactionId;
  @JsonKey(name: 'cardDataModelId')
  final String? cardDataModelId;
  @JsonKey(name: 'tokenInfo')
  final TokenInfo? tokenInfo;
  static const fromJsonFactory = _$ProofOfPurchaseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProofOfPurchase &&
            (identical(other.ticketId, ticketId) ||
                const DeepCollectionEquality()
                    .equals(other.ticketId, ticketId)) &&
            (identical(other.purchaseDate, purchaseDate) ||
                const DeepCollectionEquality()
                    .equals(other.purchaseDate, purchaseDate)) &&
            (identical(other.transactionId, transactionId) ||
                const DeepCollectionEquality()
                    .equals(other.transactionId, transactionId)) &&
            (identical(other.cardDataModelId, cardDataModelId) ||
                const DeepCollectionEquality()
                    .equals(other.cardDataModelId, cardDataModelId)) &&
            (identical(other.tokenInfo, tokenInfo) ||
                const DeepCollectionEquality()
                    .equals(other.tokenInfo, tokenInfo)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ticketId) ^
      const DeepCollectionEquality().hash(purchaseDate) ^
      const DeepCollectionEquality().hash(transactionId) ^
      const DeepCollectionEquality().hash(cardDataModelId) ^
      const DeepCollectionEquality().hash(tokenInfo) ^
      runtimeType.hashCode;
}

extension $ProofOfPurchaseExtension on ProofOfPurchase {
  ProofOfPurchase copyWith(
      {String? ticketId,
      DateTime? purchaseDate,
      String? transactionId,
      String? cardDataModelId,
      TokenInfo? tokenInfo}) {
    return ProofOfPurchase(
        ticketId: ticketId ?? this.ticketId,
        purchaseDate: purchaseDate ?? this.purchaseDate,
        transactionId: transactionId ?? this.transactionId,
        cardDataModelId: cardDataModelId ?? this.cardDataModelId,
        tokenInfo: tokenInfo ?? this.tokenInfo);
  }

  ProofOfPurchase copyWithWrapped(
      {Wrapped<String?>? ticketId,
      Wrapped<DateTime?>? purchaseDate,
      Wrapped<String?>? transactionId,
      Wrapped<String?>? cardDataModelId,
      Wrapped<TokenInfo?>? tokenInfo}) {
    return ProofOfPurchase(
        ticketId: (ticketId != null ? ticketId.value : this.ticketId),
        purchaseDate:
            (purchaseDate != null ? purchaseDate.value : this.purchaseDate),
        transactionId:
            (transactionId != null ? transactionId.value : this.transactionId),
        cardDataModelId: (cardDataModelId != null
            ? cardDataModelId.value
            : this.cardDataModelId),
        tokenInfo: (tokenInfo != null ? tokenInfo.value : this.tokenInfo));
  }
}

@JsonSerializable(explicitToJson: true)
class PurchaseCart {
  const PurchaseCart({
    required this.totalAmount,
    required this.ccy,
    required this.paymentType,
    this.codGateway,
    required this.purchaseDate,
    this.purchaseOutcome,
    this.note,
    this.externalTransactionCode,
    this.invoiceCode,
    this.userId,
    required this.sellerId,
    required this.items,
    required this.infrastructureList,
    this.workShiftId,
    this.cashAmountEntered,
    this.changeValue,
    this.payoutChange,
    this.missingPayoutChange,
    this.extraData,
  });

  factory PurchaseCart.fromJson(Map<String, dynamic> json) =>
      _$PurchaseCartFromJson(json);

  static const toJsonFactory = _$PurchaseCartToJson;
  Map<String, dynamic> toJson() => _$PurchaseCartToJson(this);

  @JsonKey(name: 'totalAmount')
  final double totalAmount;
  @JsonKey(name: 'ccy')
  final String ccy;
  @JsonKey(
    name: 'paymentType',
    toJson: paymentTypeEnumToJson,
    fromJson: paymentTypeEnumFromJson,
  )
  final enums.PaymentTypeEnum paymentType;
  @JsonKey(
    name: 'codGateway',
    toJson: paymentGatewayTypeNullableToJson,
    fromJson: paymentGatewayTypeNullableFromJson,
  )
  final enums.PaymentGatewayType? codGateway;
  @JsonKey(name: 'purchaseDate')
  final DateTime purchaseDate;
  @JsonKey(
    name: 'purchaseOutcome',
    toJson: purchaseCartPurchaseOutcomeNullableToJson,
    fromJson: purchaseCartPurchaseOutcomePurchaseOutcomeNullableFromJson,
  )
  final enums.PurchaseCartPurchaseOutcome? purchaseOutcome;
  static enums.PurchaseCartPurchaseOutcome?
      purchaseCartPurchaseOutcomePurchaseOutcomeNullableFromJson(
              Object? value) =>
          purchaseCartPurchaseOutcomeNullableFromJson(
              value, enums.PurchaseCartPurchaseOutcome.success);

  @JsonKey(name: 'note')
  final String? note;
  @JsonKey(name: 'externalTransactionCode')
  final String? externalTransactionCode;
  @JsonKey(name: 'invoiceCode')
  final String? invoiceCode;
  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'sellerId')
  final String sellerId;
  @JsonKey(name: 'items', defaultValue: <PurchaseData>[])
  final List<PurchaseData> items;
  @JsonKey(name: 'infrastructureList', defaultValue: <InfrastructureElement>[])
  final List<InfrastructureElement> infrastructureList;
  @JsonKey(name: 'workShiftId')
  final String? workShiftId;
  @JsonKey(name: 'cashAmountEntered')
  final double? cashAmountEntered;
  @JsonKey(name: 'changeValue')
  final double? changeValue;
  @JsonKey(name: 'payoutChange')
  final double? payoutChange;
  @JsonKey(name: 'missingPayoutChange')
  final double? missingPayoutChange;
  @JsonKey(name: 'extraData')
  final String? extraData;
  static const fromJsonFactory = _$PurchaseCartFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PurchaseCart &&
            (identical(other.totalAmount, totalAmount) ||
                const DeepCollectionEquality()
                    .equals(other.totalAmount, totalAmount)) &&
            (identical(other.ccy, ccy) ||
                const DeepCollectionEquality().equals(other.ccy, ccy)) &&
            (identical(other.paymentType, paymentType) ||
                const DeepCollectionEquality()
                    .equals(other.paymentType, paymentType)) &&
            (identical(other.codGateway, codGateway) ||
                const DeepCollectionEquality()
                    .equals(other.codGateway, codGateway)) &&
            (identical(other.purchaseDate, purchaseDate) ||
                const DeepCollectionEquality()
                    .equals(other.purchaseDate, purchaseDate)) &&
            (identical(other.purchaseOutcome, purchaseOutcome) ||
                const DeepCollectionEquality()
                    .equals(other.purchaseOutcome, purchaseOutcome)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(
                    other.externalTransactionCode, externalTransactionCode) ||
                const DeepCollectionEquality().equals(
                    other.externalTransactionCode, externalTransactionCode)) &&
            (identical(other.invoiceCode, invoiceCode) ||
                const DeepCollectionEquality()
                    .equals(other.invoiceCode, invoiceCode)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.sellerId, sellerId) ||
                const DeepCollectionEquality()
                    .equals(other.sellerId, sellerId)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.infrastructureList, infrastructureList) ||
                const DeepCollectionEquality()
                    .equals(other.infrastructureList, infrastructureList)) &&
            (identical(other.workShiftId, workShiftId) ||
                const DeepCollectionEquality()
                    .equals(other.workShiftId, workShiftId)) &&
            (identical(other.cashAmountEntered, cashAmountEntered) ||
                const DeepCollectionEquality()
                    .equals(other.cashAmountEntered, cashAmountEntered)) &&
            (identical(other.changeValue, changeValue) ||
                const DeepCollectionEquality()
                    .equals(other.changeValue, changeValue)) &&
            (identical(other.payoutChange, payoutChange) ||
                const DeepCollectionEquality()
                    .equals(other.payoutChange, payoutChange)) &&
            (identical(other.missingPayoutChange, missingPayoutChange) ||
                const DeepCollectionEquality()
                    .equals(other.missingPayoutChange, missingPayoutChange)) &&
            (identical(other.extraData, extraData) ||
                const DeepCollectionEquality()
                    .equals(other.extraData, extraData)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalAmount) ^
      const DeepCollectionEquality().hash(ccy) ^
      const DeepCollectionEquality().hash(paymentType) ^
      const DeepCollectionEquality().hash(codGateway) ^
      const DeepCollectionEquality().hash(purchaseDate) ^
      const DeepCollectionEquality().hash(purchaseOutcome) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(externalTransactionCode) ^
      const DeepCollectionEquality().hash(invoiceCode) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(sellerId) ^
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(infrastructureList) ^
      const DeepCollectionEquality().hash(workShiftId) ^
      const DeepCollectionEquality().hash(cashAmountEntered) ^
      const DeepCollectionEquality().hash(changeValue) ^
      const DeepCollectionEquality().hash(payoutChange) ^
      const DeepCollectionEquality().hash(missingPayoutChange) ^
      const DeepCollectionEquality().hash(extraData) ^
      runtimeType.hashCode;
}

extension $PurchaseCartExtension on PurchaseCart {
  PurchaseCart copyWith(
      {double? totalAmount,
      String? ccy,
      enums.PaymentTypeEnum? paymentType,
      enums.PaymentGatewayType? codGateway,
      DateTime? purchaseDate,
      enums.PurchaseCartPurchaseOutcome? purchaseOutcome,
      String? note,
      String? externalTransactionCode,
      String? invoiceCode,
      String? userId,
      String? sellerId,
      List<PurchaseData>? items,
      List<InfrastructureElement>? infrastructureList,
      String? workShiftId,
      double? cashAmountEntered,
      double? changeValue,
      double? payoutChange,
      double? missingPayoutChange,
      String? extraData}) {
    return PurchaseCart(
        totalAmount: totalAmount ?? this.totalAmount,
        ccy: ccy ?? this.ccy,
        paymentType: paymentType ?? this.paymentType,
        codGateway: codGateway ?? this.codGateway,
        purchaseDate: purchaseDate ?? this.purchaseDate,
        purchaseOutcome: purchaseOutcome ?? this.purchaseOutcome,
        note: note ?? this.note,
        externalTransactionCode:
            externalTransactionCode ?? this.externalTransactionCode,
        invoiceCode: invoiceCode ?? this.invoiceCode,
        userId: userId ?? this.userId,
        sellerId: sellerId ?? this.sellerId,
        items: items ?? this.items,
        infrastructureList: infrastructureList ?? this.infrastructureList,
        workShiftId: workShiftId ?? this.workShiftId,
        cashAmountEntered: cashAmountEntered ?? this.cashAmountEntered,
        changeValue: changeValue ?? this.changeValue,
        payoutChange: payoutChange ?? this.payoutChange,
        missingPayoutChange: missingPayoutChange ?? this.missingPayoutChange,
        extraData: extraData ?? this.extraData);
  }

  PurchaseCart copyWithWrapped(
      {Wrapped<double>? totalAmount,
      Wrapped<String>? ccy,
      Wrapped<enums.PaymentTypeEnum>? paymentType,
      Wrapped<enums.PaymentGatewayType?>? codGateway,
      Wrapped<DateTime>? purchaseDate,
      Wrapped<enums.PurchaseCartPurchaseOutcome?>? purchaseOutcome,
      Wrapped<String?>? note,
      Wrapped<String?>? externalTransactionCode,
      Wrapped<String?>? invoiceCode,
      Wrapped<String?>? userId,
      Wrapped<String>? sellerId,
      Wrapped<List<PurchaseData>>? items,
      Wrapped<List<InfrastructureElement>>? infrastructureList,
      Wrapped<String?>? workShiftId,
      Wrapped<double?>? cashAmountEntered,
      Wrapped<double?>? changeValue,
      Wrapped<double?>? payoutChange,
      Wrapped<double?>? missingPayoutChange,
      Wrapped<String?>? extraData}) {
    return PurchaseCart(
        totalAmount:
            (totalAmount != null ? totalAmount.value : this.totalAmount),
        ccy: (ccy != null ? ccy.value : this.ccy),
        paymentType:
            (paymentType != null ? paymentType.value : this.paymentType),
        codGateway: (codGateway != null ? codGateway.value : this.codGateway),
        purchaseDate:
            (purchaseDate != null ? purchaseDate.value : this.purchaseDate),
        purchaseOutcome: (purchaseOutcome != null
            ? purchaseOutcome.value
            : this.purchaseOutcome),
        note: (note != null ? note.value : this.note),
        externalTransactionCode: (externalTransactionCode != null
            ? externalTransactionCode.value
            : this.externalTransactionCode),
        invoiceCode:
            (invoiceCode != null ? invoiceCode.value : this.invoiceCode),
        userId: (userId != null ? userId.value : this.userId),
        sellerId: (sellerId != null ? sellerId.value : this.sellerId),
        items: (items != null ? items.value : this.items),
        infrastructureList: (infrastructureList != null
            ? infrastructureList.value
            : this.infrastructureList),
        workShiftId:
            (workShiftId != null ? workShiftId.value : this.workShiftId),
        cashAmountEntered: (cashAmountEntered != null
            ? cashAmountEntered.value
            : this.cashAmountEntered),
        changeValue:
            (changeValue != null ? changeValue.value : this.changeValue),
        payoutChange:
            (payoutChange != null ? payoutChange.value : this.payoutChange),
        missingPayoutChange: (missingPayoutChange != null
            ? missingPayoutChange.value
            : this.missingPayoutChange),
        extraData: (extraData != null ? extraData.value : this.extraData));
  }
}

@JsonSerializable(explicitToJson: true)
class PurchaseData {
  const PurchaseData({
    required this.itemType,
    required this.itemId,
    required this.itemVersion,
    this.fareTableCellId,
    this.promotionId,
    this.quantity,
    this.mediaId,
    required this.mediaType,
    this.startValidity,
    this.endValidity,
    this.geographicalIntervalLimit,
    this.extraData,
  });

  factory PurchaseData.fromJson(Map<String, dynamic> json) =>
      _$PurchaseDataFromJson(json);

  static const toJsonFactory = _$PurchaseDataToJson;
  Map<String, dynamic> toJson() => _$PurchaseDataToJson(this);

  @JsonKey(
    name: 'itemType',
    toJson: purchaseDataItemTypeToJson,
    fromJson: purchaseDataItemTypeFromJson,
  )
  final enums.PurchaseDataItemType itemType;
  @JsonKey(name: 'itemId')
  final String itemId;
  @JsonKey(name: 'itemVersion')
  final int itemVersion;
  @JsonKey(name: 'fareTableCellId')
  final String? fareTableCellId;
  @JsonKey(name: 'promotionId')
  final String? promotionId;
  @JsonKey(name: 'quantity')
  final int? quantity;
  @JsonKey(name: 'mediaId')
  final String? mediaId;
  @JsonKey(
    name: 'mediaType',
    toJson: purchaseDataMediaTypeToJson,
    fromJson: purchaseDataMediaTypeFromJson,
  )
  final enums.PurchaseDataMediaType mediaType;
  @JsonKey(name: 'startValidity')
  final DateTime? startValidity;
  @JsonKey(name: 'endValidity')
  final DateTime? endValidity;
  @JsonKey(
      name: 'geographicalIntervalLimit',
      defaultValue: <GeographicalIntervalLimit>[])
  final List<GeographicalIntervalLimit>? geographicalIntervalLimit;
  @JsonKey(name: 'extraData')
  final String? extraData;
  static const fromJsonFactory = _$PurchaseDataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PurchaseData &&
            (identical(other.itemType, itemType) ||
                const DeepCollectionEquality()
                    .equals(other.itemType, itemType)) &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)) &&
            (identical(other.itemVersion, itemVersion) ||
                const DeepCollectionEquality()
                    .equals(other.itemVersion, itemVersion)) &&
            (identical(other.fareTableCellId, fareTableCellId) ||
                const DeepCollectionEquality()
                    .equals(other.fareTableCellId, fareTableCellId)) &&
            (identical(other.promotionId, promotionId) ||
                const DeepCollectionEquality()
                    .equals(other.promotionId, promotionId)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.mediaId, mediaId) ||
                const DeepCollectionEquality()
                    .equals(other.mediaId, mediaId)) &&
            (identical(other.mediaType, mediaType) ||
                const DeepCollectionEquality()
                    .equals(other.mediaType, mediaType)) &&
            (identical(other.startValidity, startValidity) ||
                const DeepCollectionEquality()
                    .equals(other.startValidity, startValidity)) &&
            (identical(other.endValidity, endValidity) ||
                const DeepCollectionEquality()
                    .equals(other.endValidity, endValidity)) &&
            (identical(other.geographicalIntervalLimit,
                    geographicalIntervalLimit) ||
                const DeepCollectionEquality().equals(
                    other.geographicalIntervalLimit,
                    geographicalIntervalLimit)) &&
            (identical(other.extraData, extraData) ||
                const DeepCollectionEquality()
                    .equals(other.extraData, extraData)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(itemType) ^
      const DeepCollectionEquality().hash(itemId) ^
      const DeepCollectionEquality().hash(itemVersion) ^
      const DeepCollectionEquality().hash(fareTableCellId) ^
      const DeepCollectionEquality().hash(promotionId) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(mediaId) ^
      const DeepCollectionEquality().hash(mediaType) ^
      const DeepCollectionEquality().hash(startValidity) ^
      const DeepCollectionEquality().hash(endValidity) ^
      const DeepCollectionEquality().hash(geographicalIntervalLimit) ^
      const DeepCollectionEquality().hash(extraData) ^
      runtimeType.hashCode;
}

extension $PurchaseDataExtension on PurchaseData {
  PurchaseData copyWith(
      {enums.PurchaseDataItemType? itemType,
      String? itemId,
      int? itemVersion,
      String? fareTableCellId,
      String? promotionId,
      int? quantity,
      String? mediaId,
      enums.PurchaseDataMediaType? mediaType,
      DateTime? startValidity,
      DateTime? endValidity,
      List<GeographicalIntervalLimit>? geographicalIntervalLimit,
      String? extraData}) {
    return PurchaseData(
        itemType: itemType ?? this.itemType,
        itemId: itemId ?? this.itemId,
        itemVersion: itemVersion ?? this.itemVersion,
        fareTableCellId: fareTableCellId ?? this.fareTableCellId,
        promotionId: promotionId ?? this.promotionId,
        quantity: quantity ?? this.quantity,
        mediaId: mediaId ?? this.mediaId,
        mediaType: mediaType ?? this.mediaType,
        startValidity: startValidity ?? this.startValidity,
        endValidity: endValidity ?? this.endValidity,
        geographicalIntervalLimit:
            geographicalIntervalLimit ?? this.geographicalIntervalLimit,
        extraData: extraData ?? this.extraData);
  }

  PurchaseData copyWithWrapped(
      {Wrapped<enums.PurchaseDataItemType>? itemType,
      Wrapped<String>? itemId,
      Wrapped<int>? itemVersion,
      Wrapped<String?>? fareTableCellId,
      Wrapped<String?>? promotionId,
      Wrapped<int?>? quantity,
      Wrapped<String?>? mediaId,
      Wrapped<enums.PurchaseDataMediaType>? mediaType,
      Wrapped<DateTime?>? startValidity,
      Wrapped<DateTime?>? endValidity,
      Wrapped<List<GeographicalIntervalLimit>?>? geographicalIntervalLimit,
      Wrapped<String?>? extraData}) {
    return PurchaseData(
        itemType: (itemType != null ? itemType.value : this.itemType),
        itemId: (itemId != null ? itemId.value : this.itemId),
        itemVersion:
            (itemVersion != null ? itemVersion.value : this.itemVersion),
        fareTableCellId: (fareTableCellId != null
            ? fareTableCellId.value
            : this.fareTableCellId),
        promotionId:
            (promotionId != null ? promotionId.value : this.promotionId),
        quantity: (quantity != null ? quantity.value : this.quantity),
        mediaId: (mediaId != null ? mediaId.value : this.mediaId),
        mediaType: (mediaType != null ? mediaType.value : this.mediaType),
        startValidity:
            (startValidity != null ? startValidity.value : this.startValidity),
        endValidity:
            (endValidity != null ? endValidity.value : this.endValidity),
        geographicalIntervalLimit: (geographicalIntervalLimit != null
            ? geographicalIntervalLimit.value
            : this.geographicalIntervalLimit),
        extraData: (extraData != null ? extraData.value : this.extraData));
  }
}

@JsonSerializable(explicitToJson: true)
class EpursePurchaseCart {
  const EpursePurchaseCart({
    required this.totalAmount,
    required this.ccy,
    required this.paymentType,
    this.codGateway,
    required this.purchaseDate,
    this.purchaseOutcome,
    this.note,
    this.invoiceCode,
    this.workshiftId,
    required this.ownerType,
    required this.items,
    required this.infrastructureList,
    this.numCreditAmount,
    this.numDiscountAmount,
    this.numDiscountPerc,
    this.creditNotes,
    this.discountNotes,
    this.channel,
  });

  factory EpursePurchaseCart.fromJson(Map<String, dynamic> json) =>
      _$EpursePurchaseCartFromJson(json);

  static const toJsonFactory = _$EpursePurchaseCartToJson;
  Map<String, dynamic> toJson() => _$EpursePurchaseCartToJson(this);

  @JsonKey(name: 'totalAmount')
  final double totalAmount;
  @JsonKey(name: 'ccy')
  final String ccy;
  @JsonKey(
    name: 'paymentType',
    toJson: paymentTypeEnumToJson,
    fromJson: paymentTypeEnumFromJson,
  )
  final enums.PaymentTypeEnum paymentType;
  @JsonKey(
    name: 'codGateway',
    toJson: paymentGatewayTypeNullableToJson,
    fromJson: paymentGatewayTypeNullableFromJson,
  )
  final enums.PaymentGatewayType? codGateway;
  @JsonKey(name: 'purchaseDate')
  final DateTime purchaseDate;
  @JsonKey(
    name: 'purchaseOutcome',
    toJson: epursePurchaseCartPurchaseOutcomeNullableToJson,
    fromJson: epursePurchaseCartPurchaseOutcomePurchaseOutcomeNullableFromJson,
  )
  final enums.EpursePurchaseCartPurchaseOutcome? purchaseOutcome;
  static enums.EpursePurchaseCartPurchaseOutcome?
      epursePurchaseCartPurchaseOutcomePurchaseOutcomeNullableFromJson(
              Object? value) =>
          epursePurchaseCartPurchaseOutcomeNullableFromJson(
              value, enums.EpursePurchaseCartPurchaseOutcome.success);

  @JsonKey(name: 'note')
  final String? note;
  @JsonKey(name: 'invoiceCode')
  final String? invoiceCode;
  @JsonKey(name: 'workshiftId')
  final String? workshiftId;
  @JsonKey(name: 'ownerType')
  final String ownerType;
  @JsonKey(name: 'items', defaultValue: <TopupEpursePurchaseData>[])
  final List<TopupEpursePurchaseData> items;
  @JsonKey(name: 'infrastructureList', defaultValue: <InfrastructureElement>[])
  final List<InfrastructureElement> infrastructureList;
  @JsonKey(name: 'numCreditAmount')
  final double? numCreditAmount;
  @JsonKey(name: 'numDiscountAmount')
  final double? numDiscountAmount;
  @JsonKey(name: 'numDiscountPerc')
  final double? numDiscountPerc;
  @JsonKey(name: 'creditNotes')
  final String? creditNotes;
  @JsonKey(name: 'discountNotes')
  final String? discountNotes;
  @JsonKey(name: 'channel')
  final String? channel;
  static const fromJsonFactory = _$EpursePurchaseCartFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EpursePurchaseCart &&
            (identical(other.totalAmount, totalAmount) ||
                const DeepCollectionEquality()
                    .equals(other.totalAmount, totalAmount)) &&
            (identical(other.ccy, ccy) ||
                const DeepCollectionEquality().equals(other.ccy, ccy)) &&
            (identical(other.paymentType, paymentType) ||
                const DeepCollectionEquality()
                    .equals(other.paymentType, paymentType)) &&
            (identical(other.codGateway, codGateway) ||
                const DeepCollectionEquality()
                    .equals(other.codGateway, codGateway)) &&
            (identical(other.purchaseDate, purchaseDate) ||
                const DeepCollectionEquality()
                    .equals(other.purchaseDate, purchaseDate)) &&
            (identical(other.purchaseOutcome, purchaseOutcome) ||
                const DeepCollectionEquality()
                    .equals(other.purchaseOutcome, purchaseOutcome)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.invoiceCode, invoiceCode) ||
                const DeepCollectionEquality()
                    .equals(other.invoiceCode, invoiceCode)) &&
            (identical(other.workshiftId, workshiftId) ||
                const DeepCollectionEquality()
                    .equals(other.workshiftId, workshiftId)) &&
            (identical(other.ownerType, ownerType) ||
                const DeepCollectionEquality()
                    .equals(other.ownerType, ownerType)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.infrastructureList, infrastructureList) ||
                const DeepCollectionEquality()
                    .equals(other.infrastructureList, infrastructureList)) &&
            (identical(other.numCreditAmount, numCreditAmount) ||
                const DeepCollectionEquality()
                    .equals(other.numCreditAmount, numCreditAmount)) &&
            (identical(other.numDiscountAmount, numDiscountAmount) ||
                const DeepCollectionEquality()
                    .equals(other.numDiscountAmount, numDiscountAmount)) &&
            (identical(other.numDiscountPerc, numDiscountPerc) ||
                const DeepCollectionEquality()
                    .equals(other.numDiscountPerc, numDiscountPerc)) &&
            (identical(other.creditNotes, creditNotes) ||
                const DeepCollectionEquality()
                    .equals(other.creditNotes, creditNotes)) &&
            (identical(other.discountNotes, discountNotes) ||
                const DeepCollectionEquality()
                    .equals(other.discountNotes, discountNotes)) &&
            (identical(other.channel, channel) ||
                const DeepCollectionEquality().equals(other.channel, channel)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalAmount) ^
      const DeepCollectionEquality().hash(ccy) ^
      const DeepCollectionEquality().hash(paymentType) ^
      const DeepCollectionEquality().hash(codGateway) ^
      const DeepCollectionEquality().hash(purchaseDate) ^
      const DeepCollectionEquality().hash(purchaseOutcome) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(invoiceCode) ^
      const DeepCollectionEquality().hash(workshiftId) ^
      const DeepCollectionEquality().hash(ownerType) ^
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(infrastructureList) ^
      const DeepCollectionEquality().hash(numCreditAmount) ^
      const DeepCollectionEquality().hash(numDiscountAmount) ^
      const DeepCollectionEquality().hash(numDiscountPerc) ^
      const DeepCollectionEquality().hash(creditNotes) ^
      const DeepCollectionEquality().hash(discountNotes) ^
      const DeepCollectionEquality().hash(channel) ^
      runtimeType.hashCode;
}

extension $EpursePurchaseCartExtension on EpursePurchaseCart {
  EpursePurchaseCart copyWith(
      {double? totalAmount,
      String? ccy,
      enums.PaymentTypeEnum? paymentType,
      enums.PaymentGatewayType? codGateway,
      DateTime? purchaseDate,
      enums.EpursePurchaseCartPurchaseOutcome? purchaseOutcome,
      String? note,
      String? invoiceCode,
      String? workshiftId,
      String? ownerType,
      List<TopupEpursePurchaseData>? items,
      List<InfrastructureElement>? infrastructureList,
      double? numCreditAmount,
      double? numDiscountAmount,
      double? numDiscountPerc,
      String? creditNotes,
      String? discountNotes,
      String? channel}) {
    return EpursePurchaseCart(
        totalAmount: totalAmount ?? this.totalAmount,
        ccy: ccy ?? this.ccy,
        paymentType: paymentType ?? this.paymentType,
        codGateway: codGateway ?? this.codGateway,
        purchaseDate: purchaseDate ?? this.purchaseDate,
        purchaseOutcome: purchaseOutcome ?? this.purchaseOutcome,
        note: note ?? this.note,
        invoiceCode: invoiceCode ?? this.invoiceCode,
        workshiftId: workshiftId ?? this.workshiftId,
        ownerType: ownerType ?? this.ownerType,
        items: items ?? this.items,
        infrastructureList: infrastructureList ?? this.infrastructureList,
        numCreditAmount: numCreditAmount ?? this.numCreditAmount,
        numDiscountAmount: numDiscountAmount ?? this.numDiscountAmount,
        numDiscountPerc: numDiscountPerc ?? this.numDiscountPerc,
        creditNotes: creditNotes ?? this.creditNotes,
        discountNotes: discountNotes ?? this.discountNotes,
        channel: channel ?? this.channel);
  }

  EpursePurchaseCart copyWithWrapped(
      {Wrapped<double>? totalAmount,
      Wrapped<String>? ccy,
      Wrapped<enums.PaymentTypeEnum>? paymentType,
      Wrapped<enums.PaymentGatewayType?>? codGateway,
      Wrapped<DateTime>? purchaseDate,
      Wrapped<enums.EpursePurchaseCartPurchaseOutcome?>? purchaseOutcome,
      Wrapped<String?>? note,
      Wrapped<String?>? invoiceCode,
      Wrapped<String?>? workshiftId,
      Wrapped<String>? ownerType,
      Wrapped<List<TopupEpursePurchaseData>>? items,
      Wrapped<List<InfrastructureElement>>? infrastructureList,
      Wrapped<double?>? numCreditAmount,
      Wrapped<double?>? numDiscountAmount,
      Wrapped<double?>? numDiscountPerc,
      Wrapped<String?>? creditNotes,
      Wrapped<String?>? discountNotes,
      Wrapped<String?>? channel}) {
    return EpursePurchaseCart(
        totalAmount:
            (totalAmount != null ? totalAmount.value : this.totalAmount),
        ccy: (ccy != null ? ccy.value : this.ccy),
        paymentType:
            (paymentType != null ? paymentType.value : this.paymentType),
        codGateway: (codGateway != null ? codGateway.value : this.codGateway),
        purchaseDate:
            (purchaseDate != null ? purchaseDate.value : this.purchaseDate),
        purchaseOutcome: (purchaseOutcome != null
            ? purchaseOutcome.value
            : this.purchaseOutcome),
        note: (note != null ? note.value : this.note),
        invoiceCode:
            (invoiceCode != null ? invoiceCode.value : this.invoiceCode),
        workshiftId:
            (workshiftId != null ? workshiftId.value : this.workshiftId),
        ownerType: (ownerType != null ? ownerType.value : this.ownerType),
        items: (items != null ? items.value : this.items),
        infrastructureList: (infrastructureList != null
            ? infrastructureList.value
            : this.infrastructureList),
        numCreditAmount: (numCreditAmount != null
            ? numCreditAmount.value
            : this.numCreditAmount),
        numDiscountAmount: (numDiscountAmount != null
            ? numDiscountAmount.value
            : this.numDiscountAmount),
        numDiscountPerc: (numDiscountPerc != null
            ? numDiscountPerc.value
            : this.numDiscountPerc),
        creditNotes:
            (creditNotes != null ? creditNotes.value : this.creditNotes),
        discountNotes:
            (discountNotes != null ? discountNotes.value : this.discountNotes),
        channel: (channel != null ? channel.value : this.channel));
  }
}

@JsonSerializable(explicitToJson: true)
class TopupEpursePurchaseData {
  const TopupEpursePurchaseData({
    required this.topUpAmount,
    this.quantity,
  });

  factory TopupEpursePurchaseData.fromJson(Map<String, dynamic> json) =>
      _$TopupEpursePurchaseDataFromJson(json);

  static const toJsonFactory = _$TopupEpursePurchaseDataToJson;
  Map<String, dynamic> toJson() => _$TopupEpursePurchaseDataToJson(this);

  @JsonKey(name: 'topUpAmount')
  final double topUpAmount;
  @JsonKey(name: 'quantity')
  final int? quantity;
  static const fromJsonFactory = _$TopupEpursePurchaseDataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TopupEpursePurchaseData &&
            (identical(other.topUpAmount, topUpAmount) ||
                const DeepCollectionEquality()
                    .equals(other.topUpAmount, topUpAmount)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(topUpAmount) ^
      const DeepCollectionEquality().hash(quantity) ^
      runtimeType.hashCode;
}

extension $TopupEpursePurchaseDataExtension on TopupEpursePurchaseData {
  TopupEpursePurchaseData copyWith({double? topUpAmount, int? quantity}) {
    return TopupEpursePurchaseData(
        topUpAmount: topUpAmount ?? this.topUpAmount,
        quantity: quantity ?? this.quantity);
  }

  TopupEpursePurchaseData copyWithWrapped(
      {Wrapped<double>? topUpAmount, Wrapped<int?>? quantity}) {
    return TopupEpursePurchaseData(
        topUpAmount:
            (topUpAmount != null ? topUpAmount.value : this.topUpAmount),
        quantity: (quantity != null ? quantity.value : this.quantity));
  }
}

@JsonSerializable(explicitToJson: true)
class RefundData {
  const RefundData({
    required this.purchaseTransactionId,
    required this.ticketIdList,
    required this.refundPaymentMethod,
    this.debitNote,
    this.workShiftId,
  });

  factory RefundData.fromJson(Map<String, dynamic> json) =>
      _$RefundDataFromJson(json);

  static const toJsonFactory = _$RefundDataToJson;
  Map<String, dynamic> toJson() => _$RefundDataToJson(this);

  @JsonKey(name: 'purchaseTransactionId')
  final String purchaseTransactionId;
  @JsonKey(name: 'ticketIdList', defaultValue: <String>[])
  final List<String> ticketIdList;
  @JsonKey(
    name: 'refundPaymentMethod',
    toJson: paymentTypeEnumToJson,
    fromJson: paymentTypeEnumFromJson,
  )
  final enums.PaymentTypeEnum refundPaymentMethod;
  @JsonKey(name: 'debitNote')
  final String? debitNote;
  @JsonKey(name: 'workShiftId')
  final String? workShiftId;
  static const fromJsonFactory = _$RefundDataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RefundData &&
            (identical(other.purchaseTransactionId, purchaseTransactionId) ||
                const DeepCollectionEquality().equals(
                    other.purchaseTransactionId, purchaseTransactionId)) &&
            (identical(other.ticketIdList, ticketIdList) ||
                const DeepCollectionEquality()
                    .equals(other.ticketIdList, ticketIdList)) &&
            (identical(other.refundPaymentMethod, refundPaymentMethod) ||
                const DeepCollectionEquality()
                    .equals(other.refundPaymentMethod, refundPaymentMethod)) &&
            (identical(other.debitNote, debitNote) ||
                const DeepCollectionEquality()
                    .equals(other.debitNote, debitNote)) &&
            (identical(other.workShiftId, workShiftId) ||
                const DeepCollectionEquality()
                    .equals(other.workShiftId, workShiftId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(purchaseTransactionId) ^
      const DeepCollectionEquality().hash(ticketIdList) ^
      const DeepCollectionEquality().hash(refundPaymentMethod) ^
      const DeepCollectionEquality().hash(debitNote) ^
      const DeepCollectionEquality().hash(workShiftId) ^
      runtimeType.hashCode;
}

extension $RefundDataExtension on RefundData {
  RefundData copyWith(
      {String? purchaseTransactionId,
      List<String>? ticketIdList,
      enums.PaymentTypeEnum? refundPaymentMethod,
      String? debitNote,
      String? workShiftId}) {
    return RefundData(
        purchaseTransactionId:
            purchaseTransactionId ?? this.purchaseTransactionId,
        ticketIdList: ticketIdList ?? this.ticketIdList,
        refundPaymentMethod: refundPaymentMethod ?? this.refundPaymentMethod,
        debitNote: debitNote ?? this.debitNote,
        workShiftId: workShiftId ?? this.workShiftId);
  }

  RefundData copyWithWrapped(
      {Wrapped<String>? purchaseTransactionId,
      Wrapped<List<String>>? ticketIdList,
      Wrapped<enums.PaymentTypeEnum>? refundPaymentMethod,
      Wrapped<String?>? debitNote,
      Wrapped<String?>? workShiftId}) {
    return RefundData(
        purchaseTransactionId: (purchaseTransactionId != null
            ? purchaseTransactionId.value
            : this.purchaseTransactionId),
        ticketIdList:
            (ticketIdList != null ? ticketIdList.value : this.ticketIdList),
        refundPaymentMethod: (refundPaymentMethod != null
            ? refundPaymentMethod.value
            : this.refundPaymentMethod),
        debitNote: (debitNote != null ? debitNote.value : this.debitNote),
        workShiftId:
            (workShiftId != null ? workShiftId.value : this.workShiftId));
  }
}

@JsonSerializable(explicitToJson: true)
class ChangeCompensationData {
  const ChangeCompensationData({
    required this.purchaseTransactionId,
    required this.amount,
    required this.workShiftId,
  });

  factory ChangeCompensationData.fromJson(Map<String, dynamic> json) =>
      _$ChangeCompensationDataFromJson(json);

  static const toJsonFactory = _$ChangeCompensationDataToJson;
  Map<String, dynamic> toJson() => _$ChangeCompensationDataToJson(this);

  @JsonKey(name: 'purchaseTransactionId')
  final String purchaseTransactionId;
  @JsonKey(name: 'amount')
  final double amount;
  @JsonKey(name: 'workShiftId')
  final String workShiftId;
  static const fromJsonFactory = _$ChangeCompensationDataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeCompensationData &&
            (identical(other.purchaseTransactionId, purchaseTransactionId) ||
                const DeepCollectionEquality().equals(
                    other.purchaseTransactionId, purchaseTransactionId)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.workShiftId, workShiftId) ||
                const DeepCollectionEquality()
                    .equals(other.workShiftId, workShiftId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(purchaseTransactionId) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(workShiftId) ^
      runtimeType.hashCode;
}

extension $ChangeCompensationDataExtension on ChangeCompensationData {
  ChangeCompensationData copyWith(
      {String? purchaseTransactionId, double? amount, String? workShiftId}) {
    return ChangeCompensationData(
        purchaseTransactionId:
            purchaseTransactionId ?? this.purchaseTransactionId,
        amount: amount ?? this.amount,
        workShiftId: workShiftId ?? this.workShiftId);
  }

  ChangeCompensationData copyWithWrapped(
      {Wrapped<String>? purchaseTransactionId,
      Wrapped<double>? amount,
      Wrapped<String>? workShiftId}) {
    return ChangeCompensationData(
        purchaseTransactionId: (purchaseTransactionId != null
            ? purchaseTransactionId.value
            : this.purchaseTransactionId),
        amount: (amount != null ? amount.value : this.amount),
        workShiftId:
            (workShiftId != null ? workShiftId.value : this.workShiftId));
  }
}

@JsonSerializable(explicitToJson: true)
class TokenInfo {
  const TokenInfo({
    this.activationRequired,
    this.availableFrom,
    this.consumableSince,
  });

  factory TokenInfo.fromJson(Map<String, dynamic> json) =>
      _$TokenInfoFromJson(json);

  static const toJsonFactory = _$TokenInfoToJson;
  Map<String, dynamic> toJson() => _$TokenInfoToJson(this);

  @JsonKey(name: 'activationRequired')
  final bool? activationRequired;
  @JsonKey(name: 'availableFrom')
  final DateTime? availableFrom;
  @JsonKey(name: 'consumableSince')
  final int? consumableSince;
  static const fromJsonFactory = _$TokenInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TokenInfo &&
            (identical(other.activationRequired, activationRequired) ||
                const DeepCollectionEquality()
                    .equals(other.activationRequired, activationRequired)) &&
            (identical(other.availableFrom, availableFrom) ||
                const DeepCollectionEquality()
                    .equals(other.availableFrom, availableFrom)) &&
            (identical(other.consumableSince, consumableSince) ||
                const DeepCollectionEquality()
                    .equals(other.consumableSince, consumableSince)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(activationRequired) ^
      const DeepCollectionEquality().hash(availableFrom) ^
      const DeepCollectionEquality().hash(consumableSince) ^
      runtimeType.hashCode;
}

extension $TokenInfoExtension on TokenInfo {
  TokenInfo copyWith(
      {bool? activationRequired,
      DateTime? availableFrom,
      int? consumableSince}) {
    return TokenInfo(
        activationRequired: activationRequired ?? this.activationRequired,
        availableFrom: availableFrom ?? this.availableFrom,
        consumableSince: consumableSince ?? this.consumableSince);
  }

  TokenInfo copyWithWrapped(
      {Wrapped<bool?>? activationRequired,
      Wrapped<DateTime?>? availableFrom,
      Wrapped<int?>? consumableSince}) {
    return TokenInfo(
        activationRequired: (activationRequired != null
            ? activationRequired.value
            : this.activationRequired),
        availableFrom:
            (availableFrom != null ? availableFrom.value : this.availableFrom),
        consumableSince: (consumableSince != null
            ? consumableSince.value
            : this.consumableSince));
  }
}

@JsonSerializable(explicitToJson: true)
class ValidationData {
  const ValidationData({
    required this.codeValidationEvent,
    this.serviceType,
    this.serviceMode,
    this.serviceProvider,
  });

  factory ValidationData.fromJson(Map<String, dynamic> json) =>
      _$ValidationDataFromJson(json);

  static const toJsonFactory = _$ValidationDataToJson;
  Map<String, dynamic> toJson() => _$ValidationDataToJson(this);

  @JsonKey(
    name: 'codeValidationEvent',
    toJson: validationDataCodeValidationEventToJson,
    fromJson: validationDataCodeValidationEventFromJson,
  )
  final enums.ValidationDataCodeValidationEvent codeValidationEvent;
  @JsonKey(
    name: 'serviceType',
    toJson: validationDataServiceTypeNullableToJson,
    fromJson: validationDataServiceTypeServiceTypeNullableFromJson,
  )
  final enums.ValidationDataServiceType? serviceType;
  static enums.ValidationDataServiceType?
      validationDataServiceTypeServiceTypeNullableFromJson(Object? value) =>
          validationDataServiceTypeNullableFromJson(
              value, enums.ValidationDataServiceType.transportation);

  @JsonKey(name: 'serviceMode')
  final String? serviceMode;
  @JsonKey(name: 'serviceProvider')
  final String? serviceProvider;
  static const fromJsonFactory = _$ValidationDataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ValidationData &&
            (identical(other.codeValidationEvent, codeValidationEvent) ||
                const DeepCollectionEquality()
                    .equals(other.codeValidationEvent, codeValidationEvent)) &&
            (identical(other.serviceType, serviceType) ||
                const DeepCollectionEquality()
                    .equals(other.serviceType, serviceType)) &&
            (identical(other.serviceMode, serviceMode) ||
                const DeepCollectionEquality()
                    .equals(other.serviceMode, serviceMode)) &&
            (identical(other.serviceProvider, serviceProvider) ||
                const DeepCollectionEquality()
                    .equals(other.serviceProvider, serviceProvider)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(codeValidationEvent) ^
      const DeepCollectionEquality().hash(serviceType) ^
      const DeepCollectionEquality().hash(serviceMode) ^
      const DeepCollectionEquality().hash(serviceProvider) ^
      runtimeType.hashCode;
}

extension $ValidationDataExtension on ValidationData {
  ValidationData copyWith(
      {enums.ValidationDataCodeValidationEvent? codeValidationEvent,
      enums.ValidationDataServiceType? serviceType,
      String? serviceMode,
      String? serviceProvider}) {
    return ValidationData(
        codeValidationEvent: codeValidationEvent ?? this.codeValidationEvent,
        serviceType: serviceType ?? this.serviceType,
        serviceMode: serviceMode ?? this.serviceMode,
        serviceProvider: serviceProvider ?? this.serviceProvider);
  }

  ValidationData copyWithWrapped(
      {Wrapped<enums.ValidationDataCodeValidationEvent>? codeValidationEvent,
      Wrapped<enums.ValidationDataServiceType?>? serviceType,
      Wrapped<String?>? serviceMode,
      Wrapped<String?>? serviceProvider}) {
    return ValidationData(
        codeValidationEvent: (codeValidationEvent != null
            ? codeValidationEvent.value
            : this.codeValidationEvent),
        serviceType:
            (serviceType != null ? serviceType.value : this.serviceType),
        serviceMode:
            (serviceMode != null ? serviceMode.value : this.serviceMode),
        serviceProvider: (serviceProvider != null
            ? serviceProvider.value
            : this.serviceProvider));
  }
}

@JsonSerializable(explicitToJson: true)
class ValidationNotification {
  const ValidationNotification({
    required this.eventData,
    required this.validationData,
    this.travelSummary,
  });

  factory ValidationNotification.fromJson(Map<String, dynamic> json) =>
      _$ValidationNotificationFromJson(json);

  static const toJsonFactory = _$ValidationNotificationToJson;
  Map<String, dynamic> toJson() => _$ValidationNotificationToJson(this);

  @JsonKey(name: 'eventData')
  final EventData eventData;
  @JsonKey(name: 'validationData')
  final ValidationData validationData;
  @JsonKey(name: 'travelSummary')
  final TravelSummary? travelSummary;
  static const fromJsonFactory = _$ValidationNotificationFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ValidationNotification &&
            (identical(other.eventData, eventData) ||
                const DeepCollectionEquality()
                    .equals(other.eventData, eventData)) &&
            (identical(other.validationData, validationData) ||
                const DeepCollectionEquality()
                    .equals(other.validationData, validationData)) &&
            (identical(other.travelSummary, travelSummary) ||
                const DeepCollectionEquality()
                    .equals(other.travelSummary, travelSummary)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(eventData) ^
      const DeepCollectionEquality().hash(validationData) ^
      const DeepCollectionEquality().hash(travelSummary) ^
      runtimeType.hashCode;
}

extension $ValidationNotificationExtension on ValidationNotification {
  ValidationNotification copyWith(
      {EventData? eventData,
      ValidationData? validationData,
      TravelSummary? travelSummary}) {
    return ValidationNotification(
        eventData: eventData ?? this.eventData,
        validationData: validationData ?? this.validationData,
        travelSummary: travelSummary ?? this.travelSummary);
  }

  ValidationNotification copyWithWrapped(
      {Wrapped<EventData>? eventData,
      Wrapped<ValidationData>? validationData,
      Wrapped<TravelSummary?>? travelSummary}) {
    return ValidationNotification(
        eventData: (eventData != null ? eventData.value : this.eventData),
        validationData: (validationData != null
            ? validationData.value
            : this.validationData),
        travelSummary:
            (travelSummary != null ? travelSummary.value : this.travelSummary));
  }
}

@JsonSerializable(explicitToJson: true)
class ValidationResponse {
  const ValidationResponse({
    this.successes,
    this.errors,
  });

  factory ValidationResponse.fromJson(Map<String, dynamic> json) =>
      _$ValidationResponseFromJson(json);

  static const toJsonFactory = _$ValidationResponseToJson;
  Map<String, dynamic> toJson() => _$ValidationResponseToJson(this);

  @JsonKey(name: 'successes', defaultValue: <ValidationResult>[])
  final List<ValidationResult>? successes;
  @JsonKey(name: 'errors', defaultValue: <ValidationResult>[])
  final List<ValidationResult>? errors;
  static const fromJsonFactory = _$ValidationResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ValidationResponse &&
            (identical(other.successes, successes) ||
                const DeepCollectionEquality()
                    .equals(other.successes, successes)) &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(successes) ^
      const DeepCollectionEquality().hash(errors) ^
      runtimeType.hashCode;
}

extension $ValidationResponseExtension on ValidationResponse {
  ValidationResponse copyWith(
      {List<ValidationResult>? successes, List<ValidationResult>? errors}) {
    return ValidationResponse(
        successes: successes ?? this.successes, errors: errors ?? this.errors);
  }

  ValidationResponse copyWithWrapped(
      {Wrapped<List<ValidationResult>?>? successes,
      Wrapped<List<ValidationResult>?>? errors}) {
    return ValidationResponse(
        successes: (successes != null ? successes.value : this.successes),
        errors: (errors != null ? errors.value : this.errors));
  }
}

@JsonSerializable(explicitToJson: true)
class ValidationResult {
  const ValidationResult({
    this.ticketId,
    this.sessionId,
    this.eventDate,
    this.errors,
  });

  factory ValidationResult.fromJson(Map<String, dynamic> json) =>
      _$ValidationResultFromJson(json);

  static const toJsonFactory = _$ValidationResultToJson;
  Map<String, dynamic> toJson() => _$ValidationResultToJson(this);

  @JsonKey(name: 'ticketId')
  final String? ticketId;
  @JsonKey(name: 'sessionId')
  final String? sessionId;
  @JsonKey(name: 'eventDate')
  final DateTime? eventDate;
  @JsonKey(name: 'errors', defaultValue: <Error>[])
  final List<Error>? errors;
  static const fromJsonFactory = _$ValidationResultFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ValidationResult &&
            (identical(other.ticketId, ticketId) ||
                const DeepCollectionEquality()
                    .equals(other.ticketId, ticketId)) &&
            (identical(other.sessionId, sessionId) ||
                const DeepCollectionEquality()
                    .equals(other.sessionId, sessionId)) &&
            (identical(other.eventDate, eventDate) ||
                const DeepCollectionEquality()
                    .equals(other.eventDate, eventDate)) &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ticketId) ^
      const DeepCollectionEquality().hash(sessionId) ^
      const DeepCollectionEquality().hash(eventDate) ^
      const DeepCollectionEquality().hash(errors) ^
      runtimeType.hashCode;
}

extension $ValidationResultExtension on ValidationResult {
  ValidationResult copyWith(
      {String? ticketId,
      String? sessionId,
      DateTime? eventDate,
      List<Error>? errors}) {
    return ValidationResult(
        ticketId: ticketId ?? this.ticketId,
        sessionId: sessionId ?? this.sessionId,
        eventDate: eventDate ?? this.eventDate,
        errors: errors ?? this.errors);
  }

  ValidationResult copyWithWrapped(
      {Wrapped<String?>? ticketId,
      Wrapped<String?>? sessionId,
      Wrapped<DateTime?>? eventDate,
      Wrapped<List<Error>?>? errors}) {
    return ValidationResult(
        ticketId: (ticketId != null ? ticketId.value : this.ticketId),
        sessionId: (sessionId != null ? sessionId.value : this.sessionId),
        eventDate: (eventDate != null ? eventDate.value : this.eventDate),
        errors: (errors != null ? errors.value : this.errors));
  }
}

@JsonSerializable(explicitToJson: true)
class InspectionData {
  const InspectionData({
    required this.inspectorId,
  });

  factory InspectionData.fromJson(Map<String, dynamic> json) =>
      _$InspectionDataFromJson(json);

  static const toJsonFactory = _$InspectionDataToJson;
  Map<String, dynamic> toJson() => _$InspectionDataToJson(this);

  @JsonKey(name: 'inspectorId')
  final String inspectorId;
  static const fromJsonFactory = _$InspectionDataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InspectionData &&
            (identical(other.inspectorId, inspectorId) ||
                const DeepCollectionEquality()
                    .equals(other.inspectorId, inspectorId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(inspectorId) ^ runtimeType.hashCode;
}

extension $InspectionDataExtension on InspectionData {
  InspectionData copyWith({String? inspectorId}) {
    return InspectionData(inspectorId: inspectorId ?? this.inspectorId);
  }

  InspectionData copyWithWrapped({Wrapped<String>? inspectorId}) {
    return InspectionData(
        inspectorId:
            (inspectorId != null ? inspectorId.value : this.inspectorId));
  }
}

@JsonSerializable(explicitToJson: true)
class InspectionNotification {
  const InspectionNotification({
    required this.eventData,
    required this.inspectionData,
  });

  factory InspectionNotification.fromJson(Map<String, dynamic> json) =>
      _$InspectionNotificationFromJson(json);

  static const toJsonFactory = _$InspectionNotificationToJson;
  Map<String, dynamic> toJson() => _$InspectionNotificationToJson(this);

  @JsonKey(name: 'eventData')
  final EventData eventData;
  @JsonKey(name: 'inspectionData')
  final InspectionData inspectionData;
  static const fromJsonFactory = _$InspectionNotificationFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InspectionNotification &&
            (identical(other.eventData, eventData) ||
                const DeepCollectionEquality()
                    .equals(other.eventData, eventData)) &&
            (identical(other.inspectionData, inspectionData) ||
                const DeepCollectionEquality()
                    .equals(other.inspectionData, inspectionData)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(eventData) ^
      const DeepCollectionEquality().hash(inspectionData) ^
      runtimeType.hashCode;
}

extension $InspectionNotificationExtension on InspectionNotification {
  InspectionNotification copyWith(
      {EventData? eventData, InspectionData? inspectionData}) {
    return InspectionNotification(
        eventData: eventData ?? this.eventData,
        inspectionData: inspectionData ?? this.inspectionData);
  }

  InspectionNotification copyWithWrapped(
      {Wrapped<EventData>? eventData,
      Wrapped<InspectionData>? inspectionData}) {
    return InspectionNotification(
        eventData: (eventData != null ? eventData.value : this.eventData),
        inspectionData: (inspectionData != null
            ? inspectionData.value
            : this.inspectionData));
  }
}

@JsonSerializable(explicitToJson: true)
class TransactionId {
  const TransactionId({
    this.transactionId,
  });

  factory TransactionId.fromJson(Map<String, dynamic> json) =>
      _$TransactionIdFromJson(json);

  static const toJsonFactory = _$TransactionIdToJson;
  Map<String, dynamic> toJson() => _$TransactionIdToJson(this);

  @JsonKey(name: 'transactionId')
  final String? transactionId;
  static const fromJsonFactory = _$TransactionIdFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransactionId &&
            (identical(other.transactionId, transactionId) ||
                const DeepCollectionEquality()
                    .equals(other.transactionId, transactionId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transactionId) ^ runtimeType.hashCode;
}

extension $TransactionIdExtension on TransactionId {
  TransactionId copyWith({String? transactionId}) {
    return TransactionId(transactionId: transactionId ?? this.transactionId);
  }

  TransactionId copyWithWrapped({Wrapped<String?>? transactionId}) {
    return TransactionId(
        transactionId:
            (transactionId != null ? transactionId.value : this.transactionId));
  }
}

@JsonSerializable(explicitToJson: true)
class TransactionRefund {
  const TransactionRefund({
    required this.transactionId,
    required this.purchaseTransactionId,
    required this.refundPaymentMethod,
    required this.ccy,
    required this.totalAmountRefund,
    this.debitNote,
    required this.seller,
    required this.refundItems,
  });

  factory TransactionRefund.fromJson(Map<String, dynamic> json) =>
      _$TransactionRefundFromJson(json);

  static const toJsonFactory = _$TransactionRefundToJson;
  Map<String, dynamic> toJson() => _$TransactionRefundToJson(this);

  @JsonKey(name: 'transactionId')
  final String transactionId;
  @JsonKey(name: 'purchaseTransactionId')
  final String purchaseTransactionId;
  @JsonKey(
    name: 'refundPaymentMethod',
    toJson: paymentTypeEnumToJson,
    fromJson: paymentTypeEnumFromJson,
  )
  final enums.PaymentTypeEnum refundPaymentMethod;
  @JsonKey(name: 'ccy')
  final String ccy;
  @JsonKey(name: 'totalAmountRefund')
  final double totalAmountRefund;
  @JsonKey(name: 'debitNote')
  final String? debitNote;
  @JsonKey(name: 'seller')
  final OrganisationRef seller;
  @JsonKey(name: 'refundItems', defaultValue: <RefundItem>[])
  final List<RefundItem> refundItems;
  static const fromJsonFactory = _$TransactionRefundFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransactionRefund &&
            (identical(other.transactionId, transactionId) ||
                const DeepCollectionEquality()
                    .equals(other.transactionId, transactionId)) &&
            (identical(other.purchaseTransactionId, purchaseTransactionId) ||
                const DeepCollectionEquality().equals(
                    other.purchaseTransactionId, purchaseTransactionId)) &&
            (identical(other.refundPaymentMethod, refundPaymentMethod) ||
                const DeepCollectionEquality()
                    .equals(other.refundPaymentMethod, refundPaymentMethod)) &&
            (identical(other.ccy, ccy) ||
                const DeepCollectionEquality().equals(other.ccy, ccy)) &&
            (identical(other.totalAmountRefund, totalAmountRefund) ||
                const DeepCollectionEquality()
                    .equals(other.totalAmountRefund, totalAmountRefund)) &&
            (identical(other.debitNote, debitNote) ||
                const DeepCollectionEquality()
                    .equals(other.debitNote, debitNote)) &&
            (identical(other.seller, seller) ||
                const DeepCollectionEquality().equals(other.seller, seller)) &&
            (identical(other.refundItems, refundItems) ||
                const DeepCollectionEquality()
                    .equals(other.refundItems, refundItems)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transactionId) ^
      const DeepCollectionEquality().hash(purchaseTransactionId) ^
      const DeepCollectionEquality().hash(refundPaymentMethod) ^
      const DeepCollectionEquality().hash(ccy) ^
      const DeepCollectionEquality().hash(totalAmountRefund) ^
      const DeepCollectionEquality().hash(debitNote) ^
      const DeepCollectionEquality().hash(seller) ^
      const DeepCollectionEquality().hash(refundItems) ^
      runtimeType.hashCode;
}

extension $TransactionRefundExtension on TransactionRefund {
  TransactionRefund copyWith(
      {String? transactionId,
      String? purchaseTransactionId,
      enums.PaymentTypeEnum? refundPaymentMethod,
      String? ccy,
      double? totalAmountRefund,
      String? debitNote,
      OrganisationRef? seller,
      List<RefundItem>? refundItems}) {
    return TransactionRefund(
        transactionId: transactionId ?? this.transactionId,
        purchaseTransactionId:
            purchaseTransactionId ?? this.purchaseTransactionId,
        refundPaymentMethod: refundPaymentMethod ?? this.refundPaymentMethod,
        ccy: ccy ?? this.ccy,
        totalAmountRefund: totalAmountRefund ?? this.totalAmountRefund,
        debitNote: debitNote ?? this.debitNote,
        seller: seller ?? this.seller,
        refundItems: refundItems ?? this.refundItems);
  }

  TransactionRefund copyWithWrapped(
      {Wrapped<String>? transactionId,
      Wrapped<String>? purchaseTransactionId,
      Wrapped<enums.PaymentTypeEnum>? refundPaymentMethod,
      Wrapped<String>? ccy,
      Wrapped<double>? totalAmountRefund,
      Wrapped<String?>? debitNote,
      Wrapped<OrganisationRef>? seller,
      Wrapped<List<RefundItem>>? refundItems}) {
    return TransactionRefund(
        transactionId:
            (transactionId != null ? transactionId.value : this.transactionId),
        purchaseTransactionId: (purchaseTransactionId != null
            ? purchaseTransactionId.value
            : this.purchaseTransactionId),
        refundPaymentMethod: (refundPaymentMethod != null
            ? refundPaymentMethod.value
            : this.refundPaymentMethod),
        ccy: (ccy != null ? ccy.value : this.ccy),
        totalAmountRefund: (totalAmountRefund != null
            ? totalAmountRefund.value
            : this.totalAmountRefund),
        debitNote: (debitNote != null ? debitNote.value : this.debitNote),
        seller: (seller != null ? seller.value : this.seller),
        refundItems:
            (refundItems != null ? refundItems.value : this.refundItems));
  }
}

@JsonSerializable(explicitToJson: true)
class RefundItem {
  const RefundItem({
    this.purchasedItemId,
    this.fareProductData,
    this.salesPackageData,
    this.refundAmount,
    this.originalAmount,
    this.itemType,
    this.ticketId,
    this.quantity,
  });

  factory RefundItem.fromJson(Map<String, dynamic> json) =>
      _$RefundItemFromJson(json);

  static const toJsonFactory = _$RefundItemToJson;
  Map<String, dynamic> toJson() => _$RefundItemToJson(this);

  @JsonKey(name: 'purchasedItemId')
  final String? purchasedItemId;
  @JsonKey(name: 'fareProductData')
  final TicketProductData? fareProductData;
  @JsonKey(name: 'salesPackageData')
  final TicketSalesPackageData? salesPackageData;
  @JsonKey(name: 'refundAmount')
  final double? refundAmount;
  @JsonKey(name: 'originalAmount')
  final double? originalAmount;
  @JsonKey(name: 'itemType')
  final String? itemType;
  @JsonKey(name: 'ticketId')
  final String? ticketId;
  @JsonKey(name: 'quantity')
  final int? quantity;
  static const fromJsonFactory = _$RefundItemFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RefundItem &&
            (identical(other.purchasedItemId, purchasedItemId) ||
                const DeepCollectionEquality()
                    .equals(other.purchasedItemId, purchasedItemId)) &&
            (identical(other.fareProductData, fareProductData) ||
                const DeepCollectionEquality()
                    .equals(other.fareProductData, fareProductData)) &&
            (identical(other.salesPackageData, salesPackageData) ||
                const DeepCollectionEquality()
                    .equals(other.salesPackageData, salesPackageData)) &&
            (identical(other.refundAmount, refundAmount) ||
                const DeepCollectionEquality()
                    .equals(other.refundAmount, refundAmount)) &&
            (identical(other.originalAmount, originalAmount) ||
                const DeepCollectionEquality()
                    .equals(other.originalAmount, originalAmount)) &&
            (identical(other.itemType, itemType) ||
                const DeepCollectionEquality()
                    .equals(other.itemType, itemType)) &&
            (identical(other.ticketId, ticketId) ||
                const DeepCollectionEquality()
                    .equals(other.ticketId, ticketId)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(purchasedItemId) ^
      const DeepCollectionEquality().hash(fareProductData) ^
      const DeepCollectionEquality().hash(salesPackageData) ^
      const DeepCollectionEquality().hash(refundAmount) ^
      const DeepCollectionEquality().hash(originalAmount) ^
      const DeepCollectionEquality().hash(itemType) ^
      const DeepCollectionEquality().hash(ticketId) ^
      const DeepCollectionEquality().hash(quantity) ^
      runtimeType.hashCode;
}

extension $RefundItemExtension on RefundItem {
  RefundItem copyWith(
      {String? purchasedItemId,
      TicketProductData? fareProductData,
      TicketSalesPackageData? salesPackageData,
      double? refundAmount,
      double? originalAmount,
      String? itemType,
      String? ticketId,
      int? quantity}) {
    return RefundItem(
        purchasedItemId: purchasedItemId ?? this.purchasedItemId,
        fareProductData: fareProductData ?? this.fareProductData,
        salesPackageData: salesPackageData ?? this.salesPackageData,
        refundAmount: refundAmount ?? this.refundAmount,
        originalAmount: originalAmount ?? this.originalAmount,
        itemType: itemType ?? this.itemType,
        ticketId: ticketId ?? this.ticketId,
        quantity: quantity ?? this.quantity);
  }

  RefundItem copyWithWrapped(
      {Wrapped<String?>? purchasedItemId,
      Wrapped<TicketProductData?>? fareProductData,
      Wrapped<TicketSalesPackageData?>? salesPackageData,
      Wrapped<double?>? refundAmount,
      Wrapped<double?>? originalAmount,
      Wrapped<String?>? itemType,
      Wrapped<String?>? ticketId,
      Wrapped<int?>? quantity}) {
    return RefundItem(
        purchasedItemId: (purchasedItemId != null
            ? purchasedItemId.value
            : this.purchasedItemId),
        fareProductData: (fareProductData != null
            ? fareProductData.value
            : this.fareProductData),
        salesPackageData: (salesPackageData != null
            ? salesPackageData.value
            : this.salesPackageData),
        refundAmount:
            (refundAmount != null ? refundAmount.value : this.refundAmount),
        originalAmount: (originalAmount != null
            ? originalAmount.value
            : this.originalAmount),
        itemType: (itemType != null ? itemType.value : this.itemType),
        ticketId: (ticketId != null ? ticketId.value : this.ticketId),
        quantity: (quantity != null ? quantity.value : this.quantity));
  }
}

@JsonSerializable(explicitToJson: true)
class TransactionChangeCompensation {
  const TransactionChangeCompensation({
    this.paymentType,
    this.ccy,
    this.amount,
    this.codTransaction,
    this.transactionResult,
    required this.transactionType,
    this.transactionTime,
    this.customerId,
    this.extCodTransaction,
    this.fareProductType,
    this.infrastructureElements,
    this.relatedTransactions,
    this.workshiftId,
    this.notes,
    this.extraData,
  });

  factory TransactionChangeCompensation.fromJson(Map<String, dynamic> json) =>
      _$TransactionChangeCompensationFromJson(json);

  static const toJsonFactory = _$TransactionChangeCompensationToJson;
  Map<String, dynamic> toJson() => _$TransactionChangeCompensationToJson(this);

  @JsonKey(
    name: 'paymentType',
    toJson: paymentTypeEnumNullableToJson,
    fromJson: paymentTypeEnumNullableFromJson,
  )
  final enums.PaymentTypeEnum? paymentType;
  @JsonKey(name: 'ccy')
  final String? ccy;
  @JsonKey(name: 'amount')
  final double? amount;
  @JsonKey(name: 'codTransaction')
  final String? codTransaction;
  @JsonKey(
    name: 'transactionResult',
    toJson: transactionChangeCompensationTransactionResultNullableToJson,
    fromJson: transactionChangeCompensationTransactionResultNullableFromJson,
  )
  final enums.TransactionChangeCompensationTransactionResult? transactionResult;
  @JsonKey(
    name: 'transactionType',
    toJson: transactionChangeCompensationTransactionTypeToJson,
    fromJson: transactionChangeCompensationTransactionTypeFromJson,
  )
  final enums.TransactionChangeCompensationTransactionType transactionType;
  @JsonKey(name: 'transactionTime')
  final DateTime? transactionTime;
  @JsonKey(name: 'customerId')
  final String? customerId;
  @JsonKey(name: 'extCodTransaction')
  final String? extCodTransaction;
  @JsonKey(
    name: 'fareProductType',
    toJson: transactionChangeCompensationFareProductTypeNullableToJson,
    fromJson: transactionChangeCompensationFareProductTypeNullableFromJson,
  )
  final enums.TransactionChangeCompensationFareProductType? fareProductType;
  @JsonKey(
      name: 'infrastructureElements', defaultValue: <InfrastructureElement>[])
  final List<InfrastructureElement>? infrastructureElements;
  @JsonKey(name: 'relatedTransactions', defaultValue: <CodeTypeElement>[])
  final List<CodeTypeElement>? relatedTransactions;
  @JsonKey(name: 'workshiftId')
  final String? workshiftId;
  @JsonKey(name: 'notes')
  final String? notes;
  @JsonKey(name: 'extraData')
  final String? extraData;
  static const fromJsonFactory = _$TransactionChangeCompensationFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransactionChangeCompensation &&
            (identical(other.paymentType, paymentType) ||
                const DeepCollectionEquality()
                    .equals(other.paymentType, paymentType)) &&
            (identical(other.ccy, ccy) ||
                const DeepCollectionEquality().equals(other.ccy, ccy)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.codTransaction, codTransaction) ||
                const DeepCollectionEquality()
                    .equals(other.codTransaction, codTransaction)) &&
            (identical(other.transactionResult, transactionResult) ||
                const DeepCollectionEquality()
                    .equals(other.transactionResult, transactionResult)) &&
            (identical(other.transactionType, transactionType) ||
                const DeepCollectionEquality()
                    .equals(other.transactionType, transactionType)) &&
            (identical(other.transactionTime, transactionTime) ||
                const DeepCollectionEquality()
                    .equals(other.transactionTime, transactionTime)) &&
            (identical(other.customerId, customerId) ||
                const DeepCollectionEquality()
                    .equals(other.customerId, customerId)) &&
            (identical(other.extCodTransaction, extCodTransaction) ||
                const DeepCollectionEquality()
                    .equals(other.extCodTransaction, extCodTransaction)) &&
            (identical(other.fareProductType, fareProductType) ||
                const DeepCollectionEquality()
                    .equals(other.fareProductType, fareProductType)) &&
            (identical(other.infrastructureElements, infrastructureElements) ||
                const DeepCollectionEquality().equals(
                    other.infrastructureElements, infrastructureElements)) &&
            (identical(other.relatedTransactions, relatedTransactions) ||
                const DeepCollectionEquality()
                    .equals(other.relatedTransactions, relatedTransactions)) &&
            (identical(other.workshiftId, workshiftId) ||
                const DeepCollectionEquality()
                    .equals(other.workshiftId, workshiftId)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.extraData, extraData) ||
                const DeepCollectionEquality()
                    .equals(other.extraData, extraData)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(paymentType) ^
      const DeepCollectionEquality().hash(ccy) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(codTransaction) ^
      const DeepCollectionEquality().hash(transactionResult) ^
      const DeepCollectionEquality().hash(transactionType) ^
      const DeepCollectionEquality().hash(transactionTime) ^
      const DeepCollectionEquality().hash(customerId) ^
      const DeepCollectionEquality().hash(extCodTransaction) ^
      const DeepCollectionEquality().hash(fareProductType) ^
      const DeepCollectionEquality().hash(infrastructureElements) ^
      const DeepCollectionEquality().hash(relatedTransactions) ^
      const DeepCollectionEquality().hash(workshiftId) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(extraData) ^
      runtimeType.hashCode;
}

extension $TransactionChangeCompensationExtension
    on TransactionChangeCompensation {
  TransactionChangeCompensation copyWith(
      {enums.PaymentTypeEnum? paymentType,
      String? ccy,
      double? amount,
      String? codTransaction,
      enums.TransactionChangeCompensationTransactionResult? transactionResult,
      enums.TransactionChangeCompensationTransactionType? transactionType,
      DateTime? transactionTime,
      String? customerId,
      String? extCodTransaction,
      enums.TransactionChangeCompensationFareProductType? fareProductType,
      List<InfrastructureElement>? infrastructureElements,
      List<CodeTypeElement>? relatedTransactions,
      String? workshiftId,
      String? notes,
      String? extraData}) {
    return TransactionChangeCompensation(
        paymentType: paymentType ?? this.paymentType,
        ccy: ccy ?? this.ccy,
        amount: amount ?? this.amount,
        codTransaction: codTransaction ?? this.codTransaction,
        transactionResult: transactionResult ?? this.transactionResult,
        transactionType: transactionType ?? this.transactionType,
        transactionTime: transactionTime ?? this.transactionTime,
        customerId: customerId ?? this.customerId,
        extCodTransaction: extCodTransaction ?? this.extCodTransaction,
        fareProductType: fareProductType ?? this.fareProductType,
        infrastructureElements:
            infrastructureElements ?? this.infrastructureElements,
        relatedTransactions: relatedTransactions ?? this.relatedTransactions,
        workshiftId: workshiftId ?? this.workshiftId,
        notes: notes ?? this.notes,
        extraData: extraData ?? this.extraData);
  }

  TransactionChangeCompensation copyWithWrapped(
      {Wrapped<enums.PaymentTypeEnum?>? paymentType,
      Wrapped<String?>? ccy,
      Wrapped<double?>? amount,
      Wrapped<String?>? codTransaction,
      Wrapped<enums.TransactionChangeCompensationTransactionResult?>?
          transactionResult,
      Wrapped<enums.TransactionChangeCompensationTransactionType>?
          transactionType,
      Wrapped<DateTime?>? transactionTime,
      Wrapped<String?>? customerId,
      Wrapped<String?>? extCodTransaction,
      Wrapped<enums.TransactionChangeCompensationFareProductType?>?
          fareProductType,
      Wrapped<List<InfrastructureElement>?>? infrastructureElements,
      Wrapped<List<CodeTypeElement>?>? relatedTransactions,
      Wrapped<String?>? workshiftId,
      Wrapped<String?>? notes,
      Wrapped<String?>? extraData}) {
    return TransactionChangeCompensation(
        paymentType:
            (paymentType != null ? paymentType.value : this.paymentType),
        ccy: (ccy != null ? ccy.value : this.ccy),
        amount: (amount != null ? amount.value : this.amount),
        codTransaction: (codTransaction != null
            ? codTransaction.value
            : this.codTransaction),
        transactionResult: (transactionResult != null
            ? transactionResult.value
            : this.transactionResult),
        transactionType: (transactionType != null
            ? transactionType.value
            : this.transactionType),
        transactionTime: (transactionTime != null
            ? transactionTime.value
            : this.transactionTime),
        customerId: (customerId != null ? customerId.value : this.customerId),
        extCodTransaction: (extCodTransaction != null
            ? extCodTransaction.value
            : this.extCodTransaction),
        fareProductType: (fareProductType != null
            ? fareProductType.value
            : this.fareProductType),
        infrastructureElements: (infrastructureElements != null
            ? infrastructureElements.value
            : this.infrastructureElements),
        relatedTransactions: (relatedTransactions != null
            ? relatedTransactions.value
            : this.relatedTransactions),
        workshiftId:
            (workshiftId != null ? workshiftId.value : this.workshiftId),
        notes: (notes != null ? notes.value : this.notes),
        extraData: (extraData != null ? extraData.value : this.extraData));
  }
}

@JsonSerializable(explicitToJson: true)
class PurchaseRef {
  const PurchaseRef({
    this.purchaseRef,
    this.urlPaymentGateway,
  });

  factory PurchaseRef.fromJson(Map<String, dynamic> json) =>
      _$PurchaseRefFromJson(json);

  static const toJsonFactory = _$PurchaseRefToJson;
  Map<String, dynamic> toJson() => _$PurchaseRefToJson(this);

  @JsonKey(name: 'purchaseRef')
  final String? purchaseRef;
  @JsonKey(name: 'urlPaymentGateway')
  final String? urlPaymentGateway;
  static const fromJsonFactory = _$PurchaseRefFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PurchaseRef &&
            (identical(other.purchaseRef, purchaseRef) ||
                const DeepCollectionEquality()
                    .equals(other.purchaseRef, purchaseRef)) &&
            (identical(other.urlPaymentGateway, urlPaymentGateway) ||
                const DeepCollectionEquality()
                    .equals(other.urlPaymentGateway, urlPaymentGateway)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(purchaseRef) ^
      const DeepCollectionEquality().hash(urlPaymentGateway) ^
      runtimeType.hashCode;
}

extension $PurchaseRefExtension on PurchaseRef {
  PurchaseRef copyWith({String? purchaseRef, String? urlPaymentGateway}) {
    return PurchaseRef(
        purchaseRef: purchaseRef ?? this.purchaseRef,
        urlPaymentGateway: urlPaymentGateway ?? this.urlPaymentGateway);
  }

  PurchaseRef copyWithWrapped(
      {Wrapped<String?>? purchaseRef, Wrapped<String?>? urlPaymentGateway}) {
    return PurchaseRef(
        purchaseRef:
            (purchaseRef != null ? purchaseRef.value : this.purchaseRef),
        urlPaymentGateway: (urlPaymentGateway != null
            ? urlPaymentGateway.value
            : this.urlPaymentGateway));
  }
}

@JsonSerializable(explicitToJson: true)
class DateRange {
  const DateRange({
    this.from,
    this.to,
  });

  factory DateRange.fromJson(Map<String, dynamic> json) =>
      _$DateRangeFromJson(json);

  static const toJsonFactory = _$DateRangeToJson;
  Map<String, dynamic> toJson() => _$DateRangeToJson(this);

  @JsonKey(name: 'from')
  final DateTime? from;
  @JsonKey(name: 'to')
  final DateTime? to;
  static const fromJsonFactory = _$DateRangeFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DateRange &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.to, to) ||
                const DeepCollectionEquality().equals(other.to, to)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(to) ^
      runtimeType.hashCode;
}

extension $DateRangeExtension on DateRange {
  DateRange copyWith({DateTime? from, DateTime? to}) {
    return DateRange(from: from ?? this.from, to: to ?? this.to);
  }

  DateRange copyWithWrapped(
      {Wrapped<DateTime?>? from, Wrapped<DateTime?>? to}) {
    return DateRange(
        from: (from != null ? from.value : this.from),
        to: (to != null ? to.value : this.to));
  }
}

@JsonSerializable(explicitToJson: true)
class LightTransaction {
  const LightTransaction({
    this.id,
    this.date,
    this.type,
    this.status,
    this.infrastructureElements,
  });

  factory LightTransaction.fromJson(Map<String, dynamic> json) =>
      _$LightTransactionFromJson(json);

  static const toJsonFactory = _$LightTransactionToJson;
  Map<String, dynamic> toJson() => _$LightTransactionToJson(this);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'date')
  final DateTime? date;
  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'status')
  final String? status;
  @JsonKey(
      name: 'infrastructureElements', defaultValue: <InfrastructureElement>[])
  final List<InfrastructureElement>? infrastructureElements;
  static const fromJsonFactory = _$LightTransactionFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LightTransaction &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.infrastructureElements, infrastructureElements) ||
                const DeepCollectionEquality().equals(
                    other.infrastructureElements, infrastructureElements)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(infrastructureElements) ^
      runtimeType.hashCode;
}

extension $LightTransactionExtension on LightTransaction {
  LightTransaction copyWith(
      {String? id,
      DateTime? date,
      String? type,
      String? status,
      List<InfrastructureElement>? infrastructureElements}) {
    return LightTransaction(
        id: id ?? this.id,
        date: date ?? this.date,
        type: type ?? this.type,
        status: status ?? this.status,
        infrastructureElements:
            infrastructureElements ?? this.infrastructureElements);
  }

  LightTransaction copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<DateTime?>? date,
      Wrapped<String?>? type,
      Wrapped<String?>? status,
      Wrapped<List<InfrastructureElement>?>? infrastructureElements}) {
    return LightTransaction(
        id: (id != null ? id.value : this.id),
        date: (date != null ? date.value : this.date),
        type: (type != null ? type.value : this.type),
        status: (status != null ? status.value : this.status),
        infrastructureElements: (infrastructureElements != null
            ? infrastructureElements.value
            : this.infrastructureElements));
  }
}

@JsonSerializable(explicitToJson: true)
class TicketData {
  const TicketData({
    this.ticketId,
    this.startValidity,
    this.endValidity,
    this.dueDate,
    this.statusCode,
    this.issued,
    this.product,
    this.salesPackage,
    this.userId,
    this.price,
    this.ccyPrice,
    this.transactions,
    this.mediaId,
    this.mediaType,
    this.cardDataModelId,
    this.cardData,
    this.validityPeriod,
    this.statusDate,
    this.usageResiduals,
  });

  factory TicketData.fromJson(Map<String, dynamic> json) =>
      _$TicketDataFromJson(json);

  static const toJsonFactory = _$TicketDataToJson;
  Map<String, dynamic> toJson() => _$TicketDataToJson(this);

  @JsonKey(name: 'ticketId')
  final String? ticketId;
  @JsonKey(name: 'startValidity')
  final DateTime? startValidity;
  @JsonKey(name: 'endValidity')
  final DateTime? endValidity;
  @JsonKey(name: 'dueDate')
  final DateTime? dueDate;
  @JsonKey(name: 'statusCode')
  final String? statusCode;
  @JsonKey(name: 'issued')
  final bool? issued;
  @JsonKey(name: 'product')
  final TicketProductData? product;
  @JsonKey(name: 'salesPackage')
  final TicketSalesPackageData? salesPackage;
  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'price')
  final double? price;
  @JsonKey(name: 'ccyPrice')
  final String? ccyPrice;
  @JsonKey(name: 'transactions', defaultValue: <LightTransaction>[])
  final List<LightTransaction>? transactions;
  @JsonKey(name: 'mediaId')
  final String? mediaId;
  @JsonKey(
    name: 'mediaType',
    toJson: ticketDataMediaTypeNullableToJson,
    fromJson: ticketDataMediaTypeNullableFromJson,
  )
  final enums.TicketDataMediaType? mediaType;
  @JsonKey(name: 'cardDataModelId')
  final String? cardDataModelId;
  @JsonKey(name: 'cardData')
  final String? cardData;
  @JsonKey(name: 'validityPeriod')
  final ValidityPeriod? validityPeriod;
  @JsonKey(name: 'statusDate')
  final DateTime? statusDate;
  @JsonKey(name: 'usageResiduals')
  final UsageResiduals? usageResiduals;
  static const fromJsonFactory = _$TicketDataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TicketData &&
            (identical(other.ticketId, ticketId) ||
                const DeepCollectionEquality()
                    .equals(other.ticketId, ticketId)) &&
            (identical(other.startValidity, startValidity) ||
                const DeepCollectionEquality()
                    .equals(other.startValidity, startValidity)) &&
            (identical(other.endValidity, endValidity) ||
                const DeepCollectionEquality()
                    .equals(other.endValidity, endValidity)) &&
            (identical(other.dueDate, dueDate) ||
                const DeepCollectionEquality()
                    .equals(other.dueDate, dueDate)) &&
            (identical(other.statusCode, statusCode) ||
                const DeepCollectionEquality()
                    .equals(other.statusCode, statusCode)) &&
            (identical(other.issued, issued) ||
                const DeepCollectionEquality().equals(other.issued, issued)) &&
            (identical(other.product, product) ||
                const DeepCollectionEquality()
                    .equals(other.product, product)) &&
            (identical(other.salesPackage, salesPackage) ||
                const DeepCollectionEquality()
                    .equals(other.salesPackage, salesPackage)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.ccyPrice, ccyPrice) ||
                const DeepCollectionEquality()
                    .equals(other.ccyPrice, ccyPrice)) &&
            (identical(other.transactions, transactions) ||
                const DeepCollectionEquality()
                    .equals(other.transactions, transactions)) &&
            (identical(other.mediaId, mediaId) ||
                const DeepCollectionEquality()
                    .equals(other.mediaId, mediaId)) &&
            (identical(other.mediaType, mediaType) ||
                const DeepCollectionEquality()
                    .equals(other.mediaType, mediaType)) &&
            (identical(other.cardDataModelId, cardDataModelId) ||
                const DeepCollectionEquality()
                    .equals(other.cardDataModelId, cardDataModelId)) &&
            (identical(other.cardData, cardData) ||
                const DeepCollectionEquality()
                    .equals(other.cardData, cardData)) &&
            (identical(other.validityPeriod, validityPeriod) ||
                const DeepCollectionEquality()
                    .equals(other.validityPeriod, validityPeriod)) &&
            (identical(other.statusDate, statusDate) ||
                const DeepCollectionEquality()
                    .equals(other.statusDate, statusDate)) &&
            (identical(other.usageResiduals, usageResiduals) ||
                const DeepCollectionEquality()
                    .equals(other.usageResiduals, usageResiduals)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ticketId) ^
      const DeepCollectionEquality().hash(startValidity) ^
      const DeepCollectionEquality().hash(endValidity) ^
      const DeepCollectionEquality().hash(dueDate) ^
      const DeepCollectionEquality().hash(statusCode) ^
      const DeepCollectionEquality().hash(issued) ^
      const DeepCollectionEquality().hash(product) ^
      const DeepCollectionEquality().hash(salesPackage) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(ccyPrice) ^
      const DeepCollectionEquality().hash(transactions) ^
      const DeepCollectionEquality().hash(mediaId) ^
      const DeepCollectionEquality().hash(mediaType) ^
      const DeepCollectionEquality().hash(cardDataModelId) ^
      const DeepCollectionEquality().hash(cardData) ^
      const DeepCollectionEquality().hash(validityPeriod) ^
      const DeepCollectionEquality().hash(statusDate) ^
      const DeepCollectionEquality().hash(usageResiduals) ^
      runtimeType.hashCode;
}

extension $TicketDataExtension on TicketData {
  TicketData copyWith(
      {String? ticketId,
      DateTime? startValidity,
      DateTime? endValidity,
      DateTime? dueDate,
      String? statusCode,
      bool? issued,
      TicketProductData? product,
      TicketSalesPackageData? salesPackage,
      String? userId,
      double? price,
      String? ccyPrice,
      List<LightTransaction>? transactions,
      String? mediaId,
      enums.TicketDataMediaType? mediaType,
      String? cardDataModelId,
      String? cardData,
      ValidityPeriod? validityPeriod,
      DateTime? statusDate,
      UsageResiduals? usageResiduals}) {
    return TicketData(
        ticketId: ticketId ?? this.ticketId,
        startValidity: startValidity ?? this.startValidity,
        endValidity: endValidity ?? this.endValidity,
        dueDate: dueDate ?? this.dueDate,
        statusCode: statusCode ?? this.statusCode,
        issued: issued ?? this.issued,
        product: product ?? this.product,
        salesPackage: salesPackage ?? this.salesPackage,
        userId: userId ?? this.userId,
        price: price ?? this.price,
        ccyPrice: ccyPrice ?? this.ccyPrice,
        transactions: transactions ?? this.transactions,
        mediaId: mediaId ?? this.mediaId,
        mediaType: mediaType ?? this.mediaType,
        cardDataModelId: cardDataModelId ?? this.cardDataModelId,
        cardData: cardData ?? this.cardData,
        validityPeriod: validityPeriod ?? this.validityPeriod,
        statusDate: statusDate ?? this.statusDate,
        usageResiduals: usageResiduals ?? this.usageResiduals);
  }

  TicketData copyWithWrapped(
      {Wrapped<String?>? ticketId,
      Wrapped<DateTime?>? startValidity,
      Wrapped<DateTime?>? endValidity,
      Wrapped<DateTime?>? dueDate,
      Wrapped<String?>? statusCode,
      Wrapped<bool?>? issued,
      Wrapped<TicketProductData?>? product,
      Wrapped<TicketSalesPackageData?>? salesPackage,
      Wrapped<String?>? userId,
      Wrapped<double?>? price,
      Wrapped<String?>? ccyPrice,
      Wrapped<List<LightTransaction>?>? transactions,
      Wrapped<String?>? mediaId,
      Wrapped<enums.TicketDataMediaType?>? mediaType,
      Wrapped<String?>? cardDataModelId,
      Wrapped<String?>? cardData,
      Wrapped<ValidityPeriod?>? validityPeriod,
      Wrapped<DateTime?>? statusDate,
      Wrapped<UsageResiduals?>? usageResiduals}) {
    return TicketData(
        ticketId: (ticketId != null ? ticketId.value : this.ticketId),
        startValidity:
            (startValidity != null ? startValidity.value : this.startValidity),
        endValidity:
            (endValidity != null ? endValidity.value : this.endValidity),
        dueDate: (dueDate != null ? dueDate.value : this.dueDate),
        statusCode: (statusCode != null ? statusCode.value : this.statusCode),
        issued: (issued != null ? issued.value : this.issued),
        product: (product != null ? product.value : this.product),
        salesPackage:
            (salesPackage != null ? salesPackage.value : this.salesPackage),
        userId: (userId != null ? userId.value : this.userId),
        price: (price != null ? price.value : this.price),
        ccyPrice: (ccyPrice != null ? ccyPrice.value : this.ccyPrice),
        transactions:
            (transactions != null ? transactions.value : this.transactions),
        mediaId: (mediaId != null ? mediaId.value : this.mediaId),
        mediaType: (mediaType != null ? mediaType.value : this.mediaType),
        cardDataModelId: (cardDataModelId != null
            ? cardDataModelId.value
            : this.cardDataModelId),
        cardData: (cardData != null ? cardData.value : this.cardData),
        validityPeriod: (validityPeriod != null
            ? validityPeriod.value
            : this.validityPeriod),
        statusDate: (statusDate != null ? statusDate.value : this.statusDate),
        usageResiduals: (usageResiduals != null
            ? usageResiduals.value
            : this.usageResiduals));
  }
}

@JsonSerializable(explicitToJson: true)
class UsageResiduals {
  const UsageResiduals({
    this.rides,
    this.minutes,
    this.exceedingMinutes,
    this.distance,
    this.exceedingDistance,
    this.lastRideExpiration,
    this.services,
  });

  factory UsageResiduals.fromJson(Map<String, dynamic> json) =>
      _$UsageResidualsFromJson(json);

  static const toJsonFactory = _$UsageResidualsToJson;
  Map<String, dynamic> toJson() => _$UsageResidualsToJson(this);

  @JsonKey(name: 'rides')
  final int? rides;
  @JsonKey(name: 'minutes')
  final int? minutes;
  @JsonKey(name: 'exceedingMinutes')
  final int? exceedingMinutes;
  @JsonKey(name: 'distance')
  final String? distance;
  @JsonKey(name: 'exceedingDistance')
  final String? exceedingDistance;
  @JsonKey(name: 'lastRideExpiration')
  final DateTime? lastRideExpiration;
  @JsonKey(name: 'services', defaultValue: <ServiceResidual>[])
  final List<ServiceResidual>? services;
  static const fromJsonFactory = _$UsageResidualsFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UsageResiduals &&
            (identical(other.rides, rides) ||
                const DeepCollectionEquality().equals(other.rides, rides)) &&
            (identical(other.minutes, minutes) ||
                const DeepCollectionEquality()
                    .equals(other.minutes, minutes)) &&
            (identical(other.exceedingMinutes, exceedingMinutes) ||
                const DeepCollectionEquality()
                    .equals(other.exceedingMinutes, exceedingMinutes)) &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)) &&
            (identical(other.exceedingDistance, exceedingDistance) ||
                const DeepCollectionEquality()
                    .equals(other.exceedingDistance, exceedingDistance)) &&
            (identical(other.lastRideExpiration, lastRideExpiration) ||
                const DeepCollectionEquality()
                    .equals(other.lastRideExpiration, lastRideExpiration)) &&
            (identical(other.services, services) ||
                const DeepCollectionEquality()
                    .equals(other.services, services)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(rides) ^
      const DeepCollectionEquality().hash(minutes) ^
      const DeepCollectionEquality().hash(exceedingMinutes) ^
      const DeepCollectionEquality().hash(distance) ^
      const DeepCollectionEquality().hash(exceedingDistance) ^
      const DeepCollectionEquality().hash(lastRideExpiration) ^
      const DeepCollectionEquality().hash(services) ^
      runtimeType.hashCode;
}

extension $UsageResidualsExtension on UsageResiduals {
  UsageResiduals copyWith(
      {int? rides,
      int? minutes,
      int? exceedingMinutes,
      String? distance,
      String? exceedingDistance,
      DateTime? lastRideExpiration,
      List<ServiceResidual>? services}) {
    return UsageResiduals(
        rides: rides ?? this.rides,
        minutes: minutes ?? this.minutes,
        exceedingMinutes: exceedingMinutes ?? this.exceedingMinutes,
        distance: distance ?? this.distance,
        exceedingDistance: exceedingDistance ?? this.exceedingDistance,
        lastRideExpiration: lastRideExpiration ?? this.lastRideExpiration,
        services: services ?? this.services);
  }

  UsageResiduals copyWithWrapped(
      {Wrapped<int?>? rides,
      Wrapped<int?>? minutes,
      Wrapped<int?>? exceedingMinutes,
      Wrapped<String?>? distance,
      Wrapped<String?>? exceedingDistance,
      Wrapped<DateTime?>? lastRideExpiration,
      Wrapped<List<ServiceResidual>?>? services}) {
    return UsageResiduals(
        rides: (rides != null ? rides.value : this.rides),
        minutes: (minutes != null ? minutes.value : this.minutes),
        exceedingMinutes: (exceedingMinutes != null
            ? exceedingMinutes.value
            : this.exceedingMinutes),
        distance: (distance != null ? distance.value : this.distance),
        exceedingDistance: (exceedingDistance != null
            ? exceedingDistance.value
            : this.exceedingDistance),
        lastRideExpiration: (lastRideExpiration != null
            ? lastRideExpiration.value
            : this.lastRideExpiration),
        services: (services != null ? services.value : this.services));
  }
}

@JsonSerializable(explicitToJson: true)
class ServiceResidual {
  const ServiceResidual({
    this.serviceId,
    this.serviceName,
    this.serviceMode,
    this.usages,
  });

  factory ServiceResidual.fromJson(Map<String, dynamic> json) =>
      _$ServiceResidualFromJson(json);

  static const toJsonFactory = _$ServiceResidualToJson;
  Map<String, dynamic> toJson() => _$ServiceResidualToJson(this);

  @JsonKey(name: 'serviceId')
  final String? serviceId;
  @JsonKey(name: 'serviceName')
  final String? serviceName;
  @JsonKey(name: 'ServiceMode')
  final String? serviceMode;
  @JsonKey(name: 'usages')
  final int? usages;
  static const fromJsonFactory = _$ServiceResidualFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ServiceResidual &&
            (identical(other.serviceId, serviceId) ||
                const DeepCollectionEquality()
                    .equals(other.serviceId, serviceId)) &&
            (identical(other.serviceName, serviceName) ||
                const DeepCollectionEquality()
                    .equals(other.serviceName, serviceName)) &&
            (identical(other.serviceMode, serviceMode) ||
                const DeepCollectionEquality()
                    .equals(other.serviceMode, serviceMode)) &&
            (identical(other.usages, usages) ||
                const DeepCollectionEquality().equals(other.usages, usages)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(serviceId) ^
      const DeepCollectionEquality().hash(serviceName) ^
      const DeepCollectionEquality().hash(serviceMode) ^
      const DeepCollectionEquality().hash(usages) ^
      runtimeType.hashCode;
}

extension $ServiceResidualExtension on ServiceResidual {
  ServiceResidual copyWith(
      {String? serviceId,
      String? serviceName,
      String? serviceMode,
      int? usages}) {
    return ServiceResidual(
        serviceId: serviceId ?? this.serviceId,
        serviceName: serviceName ?? this.serviceName,
        serviceMode: serviceMode ?? this.serviceMode,
        usages: usages ?? this.usages);
  }

  ServiceResidual copyWithWrapped(
      {Wrapped<String?>? serviceId,
      Wrapped<String?>? serviceName,
      Wrapped<String?>? serviceMode,
      Wrapped<int?>? usages}) {
    return ServiceResidual(
        serviceId: (serviceId != null ? serviceId.value : this.serviceId),
        serviceName:
            (serviceName != null ? serviceName.value : this.serviceName),
        serviceMode:
            (serviceMode != null ? serviceMode.value : this.serviceMode),
        usages: (usages != null ? usages.value : this.usages));
  }
}

@JsonSerializable(explicitToJson: true)
class TicketProductData {
  const TicketProductData({
    this.productId,
    this.productVersion,
    this.productDescription,
    this.productTypeCode,
    this.extCodProduct,
    this.priceRef,
    this.promotion,
    this.services,
    this.geographicalIntervalLimit,
  });

  factory TicketProductData.fromJson(Map<String, dynamic> json) =>
      _$TicketProductDataFromJson(json);

  static const toJsonFactory = _$TicketProductDataToJson;
  Map<String, dynamic> toJson() => _$TicketProductDataToJson(this);

  @JsonKey(name: 'productId')
  final String? productId;
  @JsonKey(name: 'productVersion')
  final String? productVersion;
  @JsonKey(name: 'productDescription')
  final String? productDescription;
  @JsonKey(name: 'productTypeCode')
  final String? productTypeCode;
  @JsonKey(name: 'extCodProduct')
  final String? extCodProduct;
  @JsonKey(name: 'priceRef')
  final TicketPriceReference? priceRef;
  @JsonKey(name: 'promotion')
  final PromotionRef? promotion;
  @JsonKey(name: 'services', defaultValue: <ServiceRef>[])
  final List<ServiceRef>? services;
  @JsonKey(
      name: 'geographicalIntervalLimit',
      defaultValue: <GeographicalIntervalLimit>[])
  final List<GeographicalIntervalLimit>? geographicalIntervalLimit;
  static const fromJsonFactory = _$TicketProductDataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TicketProductData &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)) &&
            (identical(other.productVersion, productVersion) ||
                const DeepCollectionEquality()
                    .equals(other.productVersion, productVersion)) &&
            (identical(other.productDescription, productDescription) ||
                const DeepCollectionEquality()
                    .equals(other.productDescription, productDescription)) &&
            (identical(other.productTypeCode, productTypeCode) ||
                const DeepCollectionEquality()
                    .equals(other.productTypeCode, productTypeCode)) &&
            (identical(other.extCodProduct, extCodProduct) ||
                const DeepCollectionEquality()
                    .equals(other.extCodProduct, extCodProduct)) &&
            (identical(other.priceRef, priceRef) ||
                const DeepCollectionEquality()
                    .equals(other.priceRef, priceRef)) &&
            (identical(other.promotion, promotion) ||
                const DeepCollectionEquality()
                    .equals(other.promotion, promotion)) &&
            (identical(other.services, services) ||
                const DeepCollectionEquality()
                    .equals(other.services, services)) &&
            (identical(other.geographicalIntervalLimit,
                    geographicalIntervalLimit) ||
                const DeepCollectionEquality().equals(
                    other.geographicalIntervalLimit,
                    geographicalIntervalLimit)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(productVersion) ^
      const DeepCollectionEquality().hash(productDescription) ^
      const DeepCollectionEquality().hash(productTypeCode) ^
      const DeepCollectionEquality().hash(extCodProduct) ^
      const DeepCollectionEquality().hash(priceRef) ^
      const DeepCollectionEquality().hash(promotion) ^
      const DeepCollectionEquality().hash(services) ^
      const DeepCollectionEquality().hash(geographicalIntervalLimit) ^
      runtimeType.hashCode;
}

extension $TicketProductDataExtension on TicketProductData {
  TicketProductData copyWith(
      {String? productId,
      String? productVersion,
      String? productDescription,
      String? productTypeCode,
      String? extCodProduct,
      TicketPriceReference? priceRef,
      PromotionRef? promotion,
      List<ServiceRef>? services,
      List<GeographicalIntervalLimit>? geographicalIntervalLimit}) {
    return TicketProductData(
        productId: productId ?? this.productId,
        productVersion: productVersion ?? this.productVersion,
        productDescription: productDescription ?? this.productDescription,
        productTypeCode: productTypeCode ?? this.productTypeCode,
        extCodProduct: extCodProduct ?? this.extCodProduct,
        priceRef: priceRef ?? this.priceRef,
        promotion: promotion ?? this.promotion,
        services: services ?? this.services,
        geographicalIntervalLimit:
            geographicalIntervalLimit ?? this.geographicalIntervalLimit);
  }

  TicketProductData copyWithWrapped(
      {Wrapped<String?>? productId,
      Wrapped<String?>? productVersion,
      Wrapped<String?>? productDescription,
      Wrapped<String?>? productTypeCode,
      Wrapped<String?>? extCodProduct,
      Wrapped<TicketPriceReference?>? priceRef,
      Wrapped<PromotionRef?>? promotion,
      Wrapped<List<ServiceRef>?>? services,
      Wrapped<List<GeographicalIntervalLimit>?>? geographicalIntervalLimit}) {
    return TicketProductData(
        productId: (productId != null ? productId.value : this.productId),
        productVersion: (productVersion != null
            ? productVersion.value
            : this.productVersion),
        productDescription: (productDescription != null
            ? productDescription.value
            : this.productDescription),
        productTypeCode: (productTypeCode != null
            ? productTypeCode.value
            : this.productTypeCode),
        extCodProduct:
            (extCodProduct != null ? extCodProduct.value : this.extCodProduct),
        priceRef: (priceRef != null ? priceRef.value : this.priceRef),
        promotion: (promotion != null ? promotion.value : this.promotion),
        services: (services != null ? services.value : this.services),
        geographicalIntervalLimit: (geographicalIntervalLimit != null
            ? geographicalIntervalLimit.value
            : this.geographicalIntervalLimit));
  }
}

@JsonSerializable(explicitToJson: true)
class TicketSalesPackageData {
  const TicketSalesPackageData({
    this.salesPackageId,
    this.salesPackageDescription,
    this.salesPackageCcy,
    this.salesPackagePrice,
  });

  factory TicketSalesPackageData.fromJson(Map<String, dynamic> json) =>
      _$TicketSalesPackageDataFromJson(json);

  static const toJsonFactory = _$TicketSalesPackageDataToJson;
  Map<String, dynamic> toJson() => _$TicketSalesPackageDataToJson(this);

  @JsonKey(name: 'salesPackageId')
  final String? salesPackageId;
  @JsonKey(name: 'salesPackageDescription')
  final String? salesPackageDescription;
  @JsonKey(name: 'salesPackageCcy')
  final String? salesPackageCcy;
  @JsonKey(name: 'salesPackagePrice')
  final double? salesPackagePrice;
  static const fromJsonFactory = _$TicketSalesPackageDataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TicketSalesPackageData &&
            (identical(other.salesPackageId, salesPackageId) ||
                const DeepCollectionEquality()
                    .equals(other.salesPackageId, salesPackageId)) &&
            (identical(
                    other.salesPackageDescription, salesPackageDescription) ||
                const DeepCollectionEquality().equals(
                    other.salesPackageDescription, salesPackageDescription)) &&
            (identical(other.salesPackageCcy, salesPackageCcy) ||
                const DeepCollectionEquality()
                    .equals(other.salesPackageCcy, salesPackageCcy)) &&
            (identical(other.salesPackagePrice, salesPackagePrice) ||
                const DeepCollectionEquality()
                    .equals(other.salesPackagePrice, salesPackagePrice)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(salesPackageId) ^
      const DeepCollectionEquality().hash(salesPackageDescription) ^
      const DeepCollectionEquality().hash(salesPackageCcy) ^
      const DeepCollectionEquality().hash(salesPackagePrice) ^
      runtimeType.hashCode;
}

extension $TicketSalesPackageDataExtension on TicketSalesPackageData {
  TicketSalesPackageData copyWith(
      {String? salesPackageId,
      String? salesPackageDescription,
      String? salesPackageCcy,
      double? salesPackagePrice}) {
    return TicketSalesPackageData(
        salesPackageId: salesPackageId ?? this.salesPackageId,
        salesPackageDescription:
            salesPackageDescription ?? this.salesPackageDescription,
        salesPackageCcy: salesPackageCcy ?? this.salesPackageCcy,
        salesPackagePrice: salesPackagePrice ?? this.salesPackagePrice);
  }

  TicketSalesPackageData copyWithWrapped(
      {Wrapped<String?>? salesPackageId,
      Wrapped<String?>? salesPackageDescription,
      Wrapped<String?>? salesPackageCcy,
      Wrapped<double?>? salesPackagePrice}) {
    return TicketSalesPackageData(
        salesPackageId: (salesPackageId != null
            ? salesPackageId.value
            : this.salesPackageId),
        salesPackageDescription: (salesPackageDescription != null
            ? salesPackageDescription.value
            : this.salesPackageDescription),
        salesPackageCcy: (salesPackageCcy != null
            ? salesPackageCcy.value
            : this.salesPackageCcy),
        salesPackagePrice: (salesPackagePrice != null
            ? salesPackagePrice.value
            : this.salesPackagePrice));
  }
}

@JsonSerializable(explicitToJson: true)
class TicketPriceReference {
  const TicketPriceReference({
    this.fareTableCellId,
    this.fareTableCellName,
    this.serviceId,
    this.serviceName,
    this.serviceOrganisationRef,
    this.fareZoneId,
    this.fareZoneName,
    this.validityPeriodId,
    this.validityPeriodName,
    this.temporalValidityId,
    this.temporalValidityName,
    this.customerProfileId,
    this.customerProfileName,
    this.geographicalId,
    this.geographicalName,
    this.distanceMatrixElementId,
    this.distanceMatrixElementName,
    this.mediaType,
    this.mediaDescriptionType,
    this.distributionTouchpointId,
    this.distributionTouchpointName,
    this.distributionTouchpointType,
  });

  factory TicketPriceReference.fromJson(Map<String, dynamic> json) =>
      _$TicketPriceReferenceFromJson(json);

  static const toJsonFactory = _$TicketPriceReferenceToJson;
  Map<String, dynamic> toJson() => _$TicketPriceReferenceToJson(this);

  @JsonKey(name: 'fareTableCellId')
  final String? fareTableCellId;
  @JsonKey(name: 'fareTableCellName')
  final String? fareTableCellName;
  @JsonKey(name: 'serviceId')
  final String? serviceId;
  @JsonKey(name: 'serviceName')
  final String? serviceName;
  @JsonKey(name: 'serviceOrganisationRef')
  final String? serviceOrganisationRef;
  @JsonKey(name: 'fareZoneId')
  final String? fareZoneId;
  @JsonKey(name: 'fareZoneName')
  final String? fareZoneName;
  @JsonKey(name: 'validityPeriodId')
  final String? validityPeriodId;
  @JsonKey(name: 'validityPeriodName')
  final String? validityPeriodName;
  @JsonKey(name: 'temporalValidityId')
  final String? temporalValidityId;
  @JsonKey(name: 'temporalValidityName')
  final String? temporalValidityName;
  @JsonKey(name: 'customerProfileId')
  final String? customerProfileId;
  @JsonKey(name: 'customerProfileName')
  final String? customerProfileName;
  @JsonKey(name: 'geographicalId')
  final String? geographicalId;
  @JsonKey(name: 'geographicalName')
  final String? geographicalName;
  @JsonKey(name: 'distanceMatrixElementId')
  final String? distanceMatrixElementId;
  @JsonKey(name: 'distanceMatrixElementName')
  final String? distanceMatrixElementName;
  @JsonKey(name: 'mediaType')
  final String? mediaType;
  @JsonKey(name: 'mediaDescriptionType')
  final String? mediaDescriptionType;
  @JsonKey(name: 'distributionTouchpointId')
  final String? distributionTouchpointId;
  @JsonKey(name: 'distributionTouchpointName')
  final String? distributionTouchpointName;
  @JsonKey(name: 'distributionTouchpointType')
  final String? distributionTouchpointType;
  static const fromJsonFactory = _$TicketPriceReferenceFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TicketPriceReference &&
            (identical(other.fareTableCellId, fareTableCellId) ||
                const DeepCollectionEquality()
                    .equals(other.fareTableCellId, fareTableCellId)) &&
            (identical(other.fareTableCellName, fareTableCellName) ||
                const DeepCollectionEquality()
                    .equals(other.fareTableCellName, fareTableCellName)) &&
            (identical(other.serviceId, serviceId) ||
                const DeepCollectionEquality()
                    .equals(other.serviceId, serviceId)) &&
            (identical(other.serviceName, serviceName) ||
                const DeepCollectionEquality()
                    .equals(other.serviceName, serviceName)) &&
            (identical(other.serviceOrganisationRef, serviceOrganisationRef) ||
                const DeepCollectionEquality().equals(
                    other.serviceOrganisationRef, serviceOrganisationRef)) &&
            (identical(other.fareZoneId, fareZoneId) ||
                const DeepCollectionEquality()
                    .equals(other.fareZoneId, fareZoneId)) &&
            (identical(other.fareZoneName, fareZoneName) ||
                const DeepCollectionEquality()
                    .equals(other.fareZoneName, fareZoneName)) &&
            (identical(other.validityPeriodId, validityPeriodId) ||
                const DeepCollectionEquality()
                    .equals(other.validityPeriodId, validityPeriodId)) &&
            (identical(other.validityPeriodName, validityPeriodName) ||
                const DeepCollectionEquality()
                    .equals(other.validityPeriodName, validityPeriodName)) &&
            (identical(other.temporalValidityId, temporalValidityId) ||
                const DeepCollectionEquality()
                    .equals(other.temporalValidityId, temporalValidityId)) &&
            (identical(other.temporalValidityName, temporalValidityName) ||
                const DeepCollectionEquality().equals(
                    other.temporalValidityName, temporalValidityName)) &&
            (identical(other.customerProfileId, customerProfileId) ||
                const DeepCollectionEquality()
                    .equals(other.customerProfileId, customerProfileId)) &&
            (identical(other.customerProfileName, customerProfileName) ||
                const DeepCollectionEquality()
                    .equals(other.customerProfileName, customerProfileName)) &&
            (identical(other.geographicalId, geographicalId) ||
                const DeepCollectionEquality()
                    .equals(other.geographicalId, geographicalId)) &&
            (identical(other.geographicalName, geographicalName) ||
                const DeepCollectionEquality()
                    .equals(other.geographicalName, geographicalName)) &&
            (identical(other.distanceMatrixElementId, distanceMatrixElementId) ||
                const DeepCollectionEquality().equals(
                    other.distanceMatrixElementId, distanceMatrixElementId)) &&
            (identical(other.distanceMatrixElementName, distanceMatrixElementName) ||
                const DeepCollectionEquality().equals(
                    other.distanceMatrixElementName,
                    distanceMatrixElementName)) &&
            (identical(other.mediaType, mediaType) ||
                const DeepCollectionEquality()
                    .equals(other.mediaType, mediaType)) &&
            (identical(other.mediaDescriptionType, mediaDescriptionType) ||
                const DeepCollectionEquality().equals(
                    other.mediaDescriptionType, mediaDescriptionType)) &&
            (identical(other.distributionTouchpointId, distributionTouchpointId) ||
                const DeepCollectionEquality().equals(other.distributionTouchpointId, distributionTouchpointId)) &&
            (identical(other.distributionTouchpointName, distributionTouchpointName) || const DeepCollectionEquality().equals(other.distributionTouchpointName, distributionTouchpointName)) &&
            (identical(other.distributionTouchpointType, distributionTouchpointType) || const DeepCollectionEquality().equals(other.distributionTouchpointType, distributionTouchpointType)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(fareTableCellId) ^
      const DeepCollectionEquality().hash(fareTableCellName) ^
      const DeepCollectionEquality().hash(serviceId) ^
      const DeepCollectionEquality().hash(serviceName) ^
      const DeepCollectionEquality().hash(serviceOrganisationRef) ^
      const DeepCollectionEquality().hash(fareZoneId) ^
      const DeepCollectionEquality().hash(fareZoneName) ^
      const DeepCollectionEquality().hash(validityPeriodId) ^
      const DeepCollectionEquality().hash(validityPeriodName) ^
      const DeepCollectionEquality().hash(temporalValidityId) ^
      const DeepCollectionEquality().hash(temporalValidityName) ^
      const DeepCollectionEquality().hash(customerProfileId) ^
      const DeepCollectionEquality().hash(customerProfileName) ^
      const DeepCollectionEquality().hash(geographicalId) ^
      const DeepCollectionEquality().hash(geographicalName) ^
      const DeepCollectionEquality().hash(distanceMatrixElementId) ^
      const DeepCollectionEquality().hash(distanceMatrixElementName) ^
      const DeepCollectionEquality().hash(mediaType) ^
      const DeepCollectionEquality().hash(mediaDescriptionType) ^
      const DeepCollectionEquality().hash(distributionTouchpointId) ^
      const DeepCollectionEquality().hash(distributionTouchpointName) ^
      const DeepCollectionEquality().hash(distributionTouchpointType) ^
      runtimeType.hashCode;
}

extension $TicketPriceReferenceExtension on TicketPriceReference {
  TicketPriceReference copyWith(
      {String? fareTableCellId,
      String? fareTableCellName,
      String? serviceId,
      String? serviceName,
      String? serviceOrganisationRef,
      String? fareZoneId,
      String? fareZoneName,
      String? validityPeriodId,
      String? validityPeriodName,
      String? temporalValidityId,
      String? temporalValidityName,
      String? customerProfileId,
      String? customerProfileName,
      String? geographicalId,
      String? geographicalName,
      String? distanceMatrixElementId,
      String? distanceMatrixElementName,
      String? mediaType,
      String? mediaDescriptionType,
      String? distributionTouchpointId,
      String? distributionTouchpointName,
      String? distributionTouchpointType}) {
    return TicketPriceReference(
        fareTableCellId: fareTableCellId ?? this.fareTableCellId,
        fareTableCellName: fareTableCellName ?? this.fareTableCellName,
        serviceId: serviceId ?? this.serviceId,
        serviceName: serviceName ?? this.serviceName,
        serviceOrganisationRef:
            serviceOrganisationRef ?? this.serviceOrganisationRef,
        fareZoneId: fareZoneId ?? this.fareZoneId,
        fareZoneName: fareZoneName ?? this.fareZoneName,
        validityPeriodId: validityPeriodId ?? this.validityPeriodId,
        validityPeriodName: validityPeriodName ?? this.validityPeriodName,
        temporalValidityId: temporalValidityId ?? this.temporalValidityId,
        temporalValidityName: temporalValidityName ?? this.temporalValidityName,
        customerProfileId: customerProfileId ?? this.customerProfileId,
        customerProfileName: customerProfileName ?? this.customerProfileName,
        geographicalId: geographicalId ?? this.geographicalId,
        geographicalName: geographicalName ?? this.geographicalName,
        distanceMatrixElementId:
            distanceMatrixElementId ?? this.distanceMatrixElementId,
        distanceMatrixElementName:
            distanceMatrixElementName ?? this.distanceMatrixElementName,
        mediaType: mediaType ?? this.mediaType,
        mediaDescriptionType: mediaDescriptionType ?? this.mediaDescriptionType,
        distributionTouchpointId:
            distributionTouchpointId ?? this.distributionTouchpointId,
        distributionTouchpointName:
            distributionTouchpointName ?? this.distributionTouchpointName,
        distributionTouchpointType:
            distributionTouchpointType ?? this.distributionTouchpointType);
  }

  TicketPriceReference copyWithWrapped(
      {Wrapped<String?>? fareTableCellId,
      Wrapped<String?>? fareTableCellName,
      Wrapped<String?>? serviceId,
      Wrapped<String?>? serviceName,
      Wrapped<String?>? serviceOrganisationRef,
      Wrapped<String?>? fareZoneId,
      Wrapped<String?>? fareZoneName,
      Wrapped<String?>? validityPeriodId,
      Wrapped<String?>? validityPeriodName,
      Wrapped<String?>? temporalValidityId,
      Wrapped<String?>? temporalValidityName,
      Wrapped<String?>? customerProfileId,
      Wrapped<String?>? customerProfileName,
      Wrapped<String?>? geographicalId,
      Wrapped<String?>? geographicalName,
      Wrapped<String?>? distanceMatrixElementId,
      Wrapped<String?>? distanceMatrixElementName,
      Wrapped<String?>? mediaType,
      Wrapped<String?>? mediaDescriptionType,
      Wrapped<String?>? distributionTouchpointId,
      Wrapped<String?>? distributionTouchpointName,
      Wrapped<String?>? distributionTouchpointType}) {
    return TicketPriceReference(
        fareTableCellId: (fareTableCellId != null
            ? fareTableCellId.value
            : this.fareTableCellId),
        fareTableCellName: (fareTableCellName != null
            ? fareTableCellName.value
            : this.fareTableCellName),
        serviceId: (serviceId != null ? serviceId.value : this.serviceId),
        serviceName:
            (serviceName != null ? serviceName.value : this.serviceName),
        serviceOrganisationRef: (serviceOrganisationRef != null
            ? serviceOrganisationRef.value
            : this.serviceOrganisationRef),
        fareZoneId: (fareZoneId != null ? fareZoneId.value : this.fareZoneId),
        fareZoneName:
            (fareZoneName != null ? fareZoneName.value : this.fareZoneName),
        validityPeriodId: (validityPeriodId != null
            ? validityPeriodId.value
            : this.validityPeriodId),
        validityPeriodName: (validityPeriodName != null
            ? validityPeriodName.value
            : this.validityPeriodName),
        temporalValidityId: (temporalValidityId != null
            ? temporalValidityId.value
            : this.temporalValidityId),
        temporalValidityName: (temporalValidityName != null
            ? temporalValidityName.value
            : this.temporalValidityName),
        customerProfileId: (customerProfileId != null
            ? customerProfileId.value
            : this.customerProfileId),
        customerProfileName: (customerProfileName != null
            ? customerProfileName.value
            : this.customerProfileName),
        geographicalId: (geographicalId != null
            ? geographicalId.value
            : this.geographicalId),
        geographicalName: (geographicalName != null
            ? geographicalName.value
            : this.geographicalName),
        distanceMatrixElementId: (distanceMatrixElementId != null
            ? distanceMatrixElementId.value
            : this.distanceMatrixElementId),
        distanceMatrixElementName: (distanceMatrixElementName != null
            ? distanceMatrixElementName.value
            : this.distanceMatrixElementName),
        mediaType: (mediaType != null ? mediaType.value : this.mediaType),
        mediaDescriptionType: (mediaDescriptionType != null
            ? mediaDescriptionType.value
            : this.mediaDescriptionType),
        distributionTouchpointId: (distributionTouchpointId != null
            ? distributionTouchpointId.value
            : this.distributionTouchpointId),
        distributionTouchpointName: (distributionTouchpointName != null
            ? distributionTouchpointName.value
            : this.distributionTouchpointName),
        distributionTouchpointType: (distributionTouchpointType != null
            ? distributionTouchpointType.value
            : this.distributionTouchpointType));
  }
}

@JsonSerializable(explicitToJson: true)
class InfrastructureElement {
  const InfrastructureElement({
    required this.id,
    required this.type,
    this.code,
    this.publicCode,
    this.codeZone,
    this.location,
  });

  factory InfrastructureElement.fromJson(Map<String, dynamic> json) =>
      _$InfrastructureElementFromJson(json);

  static const toJsonFactory = _$InfrastructureElementToJson;
  Map<String, dynamic> toJson() => _$InfrastructureElementToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(
    name: 'type',
    toJson: infrastructureElementTypeToJson,
    fromJson: infrastructureElementTypeFromJson,
  )
  final enums.InfrastructureElementType type;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'publicCode')
  final String? publicCode;
  @JsonKey(name: 'codeZone')
  final String? codeZone;
  @JsonKey(name: 'location')
  final Location? location;
  static const fromJsonFactory = _$InfrastructureElementFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InfrastructureElement &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.publicCode, publicCode) ||
                const DeepCollectionEquality()
                    .equals(other.publicCode, publicCode)) &&
            (identical(other.codeZone, codeZone) ||
                const DeepCollectionEquality()
                    .equals(other.codeZone, codeZone)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(publicCode) ^
      const DeepCollectionEquality().hash(codeZone) ^
      const DeepCollectionEquality().hash(location) ^
      runtimeType.hashCode;
}

extension $InfrastructureElementExtension on InfrastructureElement {
  InfrastructureElement copyWith(
      {String? id,
      enums.InfrastructureElementType? type,
      String? code,
      String? publicCode,
      String? codeZone,
      Location? location}) {
    return InfrastructureElement(
        id: id ?? this.id,
        type: type ?? this.type,
        code: code ?? this.code,
        publicCode: publicCode ?? this.publicCode,
        codeZone: codeZone ?? this.codeZone,
        location: location ?? this.location);
  }

  InfrastructureElement copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<enums.InfrastructureElementType>? type,
      Wrapped<String?>? code,
      Wrapped<String?>? publicCode,
      Wrapped<String?>? codeZone,
      Wrapped<Location?>? location}) {
    return InfrastructureElement(
        id: (id != null ? id.value : this.id),
        type: (type != null ? type.value : this.type),
        code: (code != null ? code.value : this.code),
        publicCode: (publicCode != null ? publicCode.value : this.publicCode),
        codeZone: (codeZone != null ? codeZone.value : this.codeZone),
        location: (location != null ? location.value : this.location));
  }
}

@JsonSerializable(explicitToJson: true)
class Location {
  const Location({
    required this.latitude,
    required this.longitude,
    this.precision,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  static const toJsonFactory = _$LocationToJson;
  Map<String, dynamic> toJson() => _$LocationToJson(this);

  @JsonKey(name: 'latitude')
  final double latitude;
  @JsonKey(name: 'longitude')
  final double longitude;
  @JsonKey(name: 'precision')
  final double? precision;
  static const fromJsonFactory = _$LocationFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Location &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.precision, precision) ||
                const DeepCollectionEquality()
                    .equals(other.precision, precision)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(precision) ^
      runtimeType.hashCode;
}

extension $LocationExtension on Location {
  Location copyWith({double? latitude, double? longitude, double? precision}) {
    return Location(
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        precision: precision ?? this.precision);
  }

  Location copyWithWrapped(
      {Wrapped<double>? latitude,
      Wrapped<double>? longitude,
      Wrapped<double?>? precision}) {
    return Location(
        latitude: (latitude != null ? latitude.value : this.latitude),
        longitude: (longitude != null ? longitude.value : this.longitude),
        precision: (precision != null ? precision.value : this.precision));
  }
}

@JsonSerializable(explicitToJson: true)
class Product {
  const Product({
    required this.productId,
    this.productVersion,
    this.productName,
    this.productType,
    this.productTypeDesc,
    this.productStartValidity,
    this.productEndValidity,
    this.deadline,
    this.advanceSale,
    this.codeExternal,
    this.notSoldSeparately,
    this.scopingValidityParameters,
    this.temporalValidityParameters,
    this.usageParameters,
    this.scopingGeographicalParameters,
    this.distributionTouchPoints,
    this.mediaSet,
    this.fareTable,
    this.fareFrame,
    this.customerNumber,
    this.sellers,
    this.promotions,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  static const toJsonFactory = _$ProductToJson;
  Map<String, dynamic> toJson() => _$ProductToJson(this);

  @JsonKey(name: 'productId')
  final String productId;
  @JsonKey(name: 'productVersion')
  final int? productVersion;
  @JsonKey(name: 'productName')
  final String? productName;
  @JsonKey(name: 'productType')
  final String? productType;
  @JsonKey(name: 'productTypeDesc')
  final String? productTypeDesc;
  @JsonKey(name: 'productStartValidity', toJson: _dateToJson)
  final DateTime? productStartValidity;
  @JsonKey(name: 'productEndValidity', toJson: _dateToJson)
  final DateTime? productEndValidity;
  @JsonKey(name: 'deadline')
  final int? deadline;
  @JsonKey(name: 'advanceSale')
  final int? advanceSale;
  @JsonKey(name: 'codeExternal')
  final String? codeExternal;
  @JsonKey(name: 'notSoldSeparately')
  final bool? notSoldSeparately;
  @JsonKey(name: 'scopingValidityParameters')
  final ScopingValidityParameter? scopingValidityParameters;
  @JsonKey(
      name: 'temporalValidityParameters',
      defaultValue: <TemporalValidityParameter>[])
  final List<TemporalValidityParameter>? temporalValidityParameters;
  @JsonKey(name: 'usageParameters')
  final UsageParameter? usageParameters;
  @JsonKey(name: 'scopingGeographicalParameters')
  final ScopingGeographicalParameter? scopingGeographicalParameters;
  @JsonKey(
      name: 'distributionTouchPoints', defaultValue: <DistributionTouchPoint>[])
  final List<DistributionTouchPoint>? distributionTouchPoints;
  @JsonKey(name: 'mediaSet', defaultValue: <MediaSet>[])
  final List<MediaSet>? mediaSet;
  @JsonKey(name: 'fareTable')
  final FareTable? fareTable;
  @JsonKey(name: 'fareFrame')
  final FareFrame? fareFrame;
  @JsonKey(name: 'customerNumber')
  final int? customerNumber;
  @JsonKey(name: 'sellers', defaultValue: <OrganisationRef>[])
  final List<OrganisationRef>? sellers;
  @JsonKey(name: 'promotions', defaultValue: <Promotion>[])
  final List<Promotion>? promotions;
  static const fromJsonFactory = _$ProductFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Product &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)) &&
            (identical(other.productVersion, productVersion) ||
                const DeepCollectionEquality()
                    .equals(other.productVersion, productVersion)) &&
            (identical(other.productName, productName) ||
                const DeepCollectionEquality()
                    .equals(other.productName, productName)) &&
            (identical(other.productType, productType) ||
                const DeepCollectionEquality()
                    .equals(other.productType, productType)) &&
            (identical(other.productTypeDesc, productTypeDesc) ||
                const DeepCollectionEquality()
                    .equals(other.productTypeDesc, productTypeDesc)) &&
            (identical(other.productStartValidity, productStartValidity) ||
                const DeepCollectionEquality().equals(
                    other.productStartValidity, productStartValidity)) &&
            (identical(other.productEndValidity, productEndValidity) ||
                const DeepCollectionEquality()
                    .equals(other.productEndValidity, productEndValidity)) &&
            (identical(other.deadline, deadline) ||
                const DeepCollectionEquality()
                    .equals(other.deadline, deadline)) &&
            (identical(other.advanceSale, advanceSale) ||
                const DeepCollectionEquality()
                    .equals(other.advanceSale, advanceSale)) &&
            (identical(other.codeExternal, codeExternal) ||
                const DeepCollectionEquality()
                    .equals(other.codeExternal, codeExternal)) &&
            (identical(other.notSoldSeparately, notSoldSeparately) ||
                const DeepCollectionEquality()
                    .equals(other.notSoldSeparately, notSoldSeparately)) &&
            (identical(other.scopingValidityParameters, scopingValidityParameters) ||
                const DeepCollectionEquality().equals(
                    other.scopingValidityParameters,
                    scopingValidityParameters)) &&
            (identical(other.temporalValidityParameters, temporalValidityParameters) ||
                const DeepCollectionEquality().equals(
                    other.temporalValidityParameters,
                    temporalValidityParameters)) &&
            (identical(other.usageParameters, usageParameters) ||
                const DeepCollectionEquality()
                    .equals(other.usageParameters, usageParameters)) &&
            (identical(other.scopingGeographicalParameters, scopingGeographicalParameters) ||
                const DeepCollectionEquality().equals(
                    other.scopingGeographicalParameters,
                    scopingGeographicalParameters)) &&
            (identical(other.distributionTouchPoints, distributionTouchPoints) ||
                const DeepCollectionEquality().equals(
                    other.distributionTouchPoints, distributionTouchPoints)) &&
            (identical(other.mediaSet, mediaSet) ||
                const DeepCollectionEquality()
                    .equals(other.mediaSet, mediaSet)) &&
            (identical(other.fareTable, fareTable) || const DeepCollectionEquality().equals(other.fareTable, fareTable)) &&
            (identical(other.fareFrame, fareFrame) || const DeepCollectionEquality().equals(other.fareFrame, fareFrame)) &&
            (identical(other.customerNumber, customerNumber) || const DeepCollectionEquality().equals(other.customerNumber, customerNumber)) &&
            (identical(other.sellers, sellers) || const DeepCollectionEquality().equals(other.sellers, sellers)) &&
            (identical(other.promotions, promotions) || const DeepCollectionEquality().equals(other.promotions, promotions)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(productVersion) ^
      const DeepCollectionEquality().hash(productName) ^
      const DeepCollectionEquality().hash(productType) ^
      const DeepCollectionEquality().hash(productTypeDesc) ^
      const DeepCollectionEquality().hash(productStartValidity) ^
      const DeepCollectionEquality().hash(productEndValidity) ^
      const DeepCollectionEquality().hash(deadline) ^
      const DeepCollectionEquality().hash(advanceSale) ^
      const DeepCollectionEquality().hash(codeExternal) ^
      const DeepCollectionEquality().hash(notSoldSeparately) ^
      const DeepCollectionEquality().hash(scopingValidityParameters) ^
      const DeepCollectionEquality().hash(temporalValidityParameters) ^
      const DeepCollectionEquality().hash(usageParameters) ^
      const DeepCollectionEquality().hash(scopingGeographicalParameters) ^
      const DeepCollectionEquality().hash(distributionTouchPoints) ^
      const DeepCollectionEquality().hash(mediaSet) ^
      const DeepCollectionEquality().hash(fareTable) ^
      const DeepCollectionEquality().hash(fareFrame) ^
      const DeepCollectionEquality().hash(customerNumber) ^
      const DeepCollectionEquality().hash(sellers) ^
      const DeepCollectionEquality().hash(promotions) ^
      runtimeType.hashCode;
}

extension $ProductExtension on Product {
  Product copyWith(
      {String? productId,
      int? productVersion,
      String? productName,
      String? productType,
      String? productTypeDesc,
      DateTime? productStartValidity,
      DateTime? productEndValidity,
      int? deadline,
      int? advanceSale,
      String? codeExternal,
      bool? notSoldSeparately,
      ScopingValidityParameter? scopingValidityParameters,
      List<TemporalValidityParameter>? temporalValidityParameters,
      UsageParameter? usageParameters,
      ScopingGeographicalParameter? scopingGeographicalParameters,
      List<DistributionTouchPoint>? distributionTouchPoints,
      List<MediaSet>? mediaSet,
      FareTable? fareTable,
      FareFrame? fareFrame,
      int? customerNumber,
      List<OrganisationRef>? sellers,
      List<Promotion>? promotions}) {
    return Product(
        productId: productId ?? this.productId,
        productVersion: productVersion ?? this.productVersion,
        productName: productName ?? this.productName,
        productType: productType ?? this.productType,
        productTypeDesc: productTypeDesc ?? this.productTypeDesc,
        productStartValidity: productStartValidity ?? this.productStartValidity,
        productEndValidity: productEndValidity ?? this.productEndValidity,
        deadline: deadline ?? this.deadline,
        advanceSale: advanceSale ?? this.advanceSale,
        codeExternal: codeExternal ?? this.codeExternal,
        notSoldSeparately: notSoldSeparately ?? this.notSoldSeparately,
        scopingValidityParameters:
            scopingValidityParameters ?? this.scopingValidityParameters,
        temporalValidityParameters:
            temporalValidityParameters ?? this.temporalValidityParameters,
        usageParameters: usageParameters ?? this.usageParameters,
        scopingGeographicalParameters:
            scopingGeographicalParameters ?? this.scopingGeographicalParameters,
        distributionTouchPoints:
            distributionTouchPoints ?? this.distributionTouchPoints,
        mediaSet: mediaSet ?? this.mediaSet,
        fareTable: fareTable ?? this.fareTable,
        fareFrame: fareFrame ?? this.fareFrame,
        customerNumber: customerNumber ?? this.customerNumber,
        sellers: sellers ?? this.sellers,
        promotions: promotions ?? this.promotions);
  }

  Product copyWithWrapped(
      {Wrapped<String>? productId,
      Wrapped<int?>? productVersion,
      Wrapped<String?>? productName,
      Wrapped<String?>? productType,
      Wrapped<String?>? productTypeDesc,
      Wrapped<DateTime?>? productStartValidity,
      Wrapped<DateTime?>? productEndValidity,
      Wrapped<int?>? deadline,
      Wrapped<int?>? advanceSale,
      Wrapped<String?>? codeExternal,
      Wrapped<bool?>? notSoldSeparately,
      Wrapped<ScopingValidityParameter?>? scopingValidityParameters,
      Wrapped<List<TemporalValidityParameter>?>? temporalValidityParameters,
      Wrapped<UsageParameter?>? usageParameters,
      Wrapped<ScopingGeographicalParameter?>? scopingGeographicalParameters,
      Wrapped<List<DistributionTouchPoint>?>? distributionTouchPoints,
      Wrapped<List<MediaSet>?>? mediaSet,
      Wrapped<FareTable?>? fareTable,
      Wrapped<FareFrame?>? fareFrame,
      Wrapped<int?>? customerNumber,
      Wrapped<List<OrganisationRef>?>? sellers,
      Wrapped<List<Promotion>?>? promotions}) {
    return Product(
        productId: (productId != null ? productId.value : this.productId),
        productVersion: (productVersion != null
            ? productVersion.value
            : this.productVersion),
        productName:
            (productName != null ? productName.value : this.productName),
        productType:
            (productType != null ? productType.value : this.productType),
        productTypeDesc: (productTypeDesc != null
            ? productTypeDesc.value
            : this.productTypeDesc),
        productStartValidity: (productStartValidity != null
            ? productStartValidity.value
            : this.productStartValidity),
        productEndValidity: (productEndValidity != null
            ? productEndValidity.value
            : this.productEndValidity),
        deadline: (deadline != null ? deadline.value : this.deadline),
        advanceSale:
            (advanceSale != null ? advanceSale.value : this.advanceSale),
        codeExternal:
            (codeExternal != null ? codeExternal.value : this.codeExternal),
        notSoldSeparately: (notSoldSeparately != null
            ? notSoldSeparately.value
            : this.notSoldSeparately),
        scopingValidityParameters: (scopingValidityParameters != null
            ? scopingValidityParameters.value
            : this.scopingValidityParameters),
        temporalValidityParameters: (temporalValidityParameters != null
            ? temporalValidityParameters.value
            : this.temporalValidityParameters),
        usageParameters: (usageParameters != null
            ? usageParameters.value
            : this.usageParameters),
        scopingGeographicalParameters: (scopingGeographicalParameters != null
            ? scopingGeographicalParameters.value
            : this.scopingGeographicalParameters),
        distributionTouchPoints: (distributionTouchPoints != null
            ? distributionTouchPoints.value
            : this.distributionTouchPoints),
        mediaSet: (mediaSet != null ? mediaSet.value : this.mediaSet),
        fareTable: (fareTable != null ? fareTable.value : this.fareTable),
        fareFrame: (fareFrame != null ? fareFrame.value : this.fareFrame),
        customerNumber: (customerNumber != null
            ? customerNumber.value
            : this.customerNumber),
        sellers: (sellers != null ? sellers.value : this.sellers),
        promotions: (promotions != null ? promotions.value : this.promotions));
  }
}

@JsonSerializable(explicitToJson: true)
class FareFrame {
  const FareFrame({
    this.fareFrameId,
    this.fareFrameName,
    this.organisations,
  });

  factory FareFrame.fromJson(Map<String, dynamic> json) =>
      _$FareFrameFromJson(json);

  static const toJsonFactory = _$FareFrameToJson;
  Map<String, dynamic> toJson() => _$FareFrameToJson(this);

  @JsonKey(name: 'fareFrameId')
  final String? fareFrameId;
  @JsonKey(name: 'fareFrameName')
  final String? fareFrameName;
  @JsonKey(name: 'organisations', defaultValue: <Organisation>[])
  final List<Organisation>? organisations;
  static const fromJsonFactory = _$FareFrameFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FareFrame &&
            (identical(other.fareFrameId, fareFrameId) ||
                const DeepCollectionEquality()
                    .equals(other.fareFrameId, fareFrameId)) &&
            (identical(other.fareFrameName, fareFrameName) ||
                const DeepCollectionEquality()
                    .equals(other.fareFrameName, fareFrameName)) &&
            (identical(other.organisations, organisations) ||
                const DeepCollectionEquality()
                    .equals(other.organisations, organisations)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(fareFrameId) ^
      const DeepCollectionEquality().hash(fareFrameName) ^
      const DeepCollectionEquality().hash(organisations) ^
      runtimeType.hashCode;
}

extension $FareFrameExtension on FareFrame {
  FareFrame copyWith(
      {String? fareFrameId,
      String? fareFrameName,
      List<Organisation>? organisations}) {
    return FareFrame(
        fareFrameId: fareFrameId ?? this.fareFrameId,
        fareFrameName: fareFrameName ?? this.fareFrameName,
        organisations: organisations ?? this.organisations);
  }

  FareFrame copyWithWrapped(
      {Wrapped<String?>? fareFrameId,
      Wrapped<String?>? fareFrameName,
      Wrapped<List<Organisation>?>? organisations}) {
    return FareFrame(
        fareFrameId:
            (fareFrameId != null ? fareFrameId.value : this.fareFrameId),
        fareFrameName:
            (fareFrameName != null ? fareFrameName.value : this.fareFrameName),
        organisations:
            (organisations != null ? organisations.value : this.organisations));
  }
}

@JsonSerializable(explicitToJson: true)
class Organisation {
  const Organisation({
    this.organisationName,
    this.organisationId,
    this.publicCode,
    this.organisationTypeCode,
    this.agreements,
  });

  factory Organisation.fromJson(Map<String, dynamic> json) =>
      _$OrganisationFromJson(json);

  static const toJsonFactory = _$OrganisationToJson;
  Map<String, dynamic> toJson() => _$OrganisationToJson(this);

  @JsonKey(name: 'organisationName')
  final String? organisationName;
  @JsonKey(name: 'organisationId')
  final String? organisationId;
  @JsonKey(name: 'publicCode')
  final String? publicCode;
  @JsonKey(
    name: 'organisationTypeCode',
    toJson: organisationOrganisationTypeCodeNullableToJson,
    fromJson: organisationOrganisationTypeCodeNullableFromJson,
  )
  final enums.OrganisationOrganisationTypeCode? organisationTypeCode;
  @JsonKey(name: 'agreements', defaultValue: <Agreement>[])
  final List<Agreement>? agreements;
  static const fromJsonFactory = _$OrganisationFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Organisation &&
            (identical(other.organisationName, organisationName) ||
                const DeepCollectionEquality()
                    .equals(other.organisationName, organisationName)) &&
            (identical(other.organisationId, organisationId) ||
                const DeepCollectionEquality()
                    .equals(other.organisationId, organisationId)) &&
            (identical(other.publicCode, publicCode) ||
                const DeepCollectionEquality()
                    .equals(other.publicCode, publicCode)) &&
            (identical(other.organisationTypeCode, organisationTypeCode) ||
                const DeepCollectionEquality().equals(
                    other.organisationTypeCode, organisationTypeCode)) &&
            (identical(other.agreements, agreements) ||
                const DeepCollectionEquality()
                    .equals(other.agreements, agreements)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(organisationName) ^
      const DeepCollectionEquality().hash(organisationId) ^
      const DeepCollectionEquality().hash(publicCode) ^
      const DeepCollectionEquality().hash(organisationTypeCode) ^
      const DeepCollectionEquality().hash(agreements) ^
      runtimeType.hashCode;
}

extension $OrganisationExtension on Organisation {
  Organisation copyWith(
      {String? organisationName,
      String? organisationId,
      String? publicCode,
      enums.OrganisationOrganisationTypeCode? organisationTypeCode,
      List<Agreement>? agreements}) {
    return Organisation(
        organisationName: organisationName ?? this.organisationName,
        organisationId: organisationId ?? this.organisationId,
        publicCode: publicCode ?? this.publicCode,
        organisationTypeCode: organisationTypeCode ?? this.organisationTypeCode,
        agreements: agreements ?? this.agreements);
  }

  Organisation copyWithWrapped(
      {Wrapped<String?>? organisationName,
      Wrapped<String?>? organisationId,
      Wrapped<String?>? publicCode,
      Wrapped<enums.OrganisationOrganisationTypeCode?>? organisationTypeCode,
      Wrapped<List<Agreement>?>? agreements}) {
    return Organisation(
        organisationName: (organisationName != null
            ? organisationName.value
            : this.organisationName),
        organisationId: (organisationId != null
            ? organisationId.value
            : this.organisationId),
        publicCode: (publicCode != null ? publicCode.value : this.publicCode),
        organisationTypeCode: (organisationTypeCode != null
            ? organisationTypeCode.value
            : this.organisationTypeCode),
        agreements: (agreements != null ? agreements.value : this.agreements));
  }
}

@JsonSerializable(explicitToJson: true)
class Agreement {
  const Agreement({
    this.agreementId,
    this.agreementType,
    this.organisationIdMaster,
    this.organisationIdSecondary,
    this.agreementDate,
  });

  factory Agreement.fromJson(Map<String, dynamic> json) =>
      _$AgreementFromJson(json);

  static const toJsonFactory = _$AgreementToJson;
  Map<String, dynamic> toJson() => _$AgreementToJson(this);

  @JsonKey(name: 'agreementId')
  final String? agreementId;
  @JsonKey(
    name: 'agreementType',
    toJson: agreementAgreementTypeNullableToJson,
    fromJson: agreementAgreementTypeNullableFromJson,
  )
  final enums.AgreementAgreementType? agreementType;
  @JsonKey(name: 'organisationIdMaster')
  final String? organisationIdMaster;
  @JsonKey(name: 'organisationIdSecondary')
  final String? organisationIdSecondary;
  @JsonKey(name: 'agreementDate', toJson: _dateToJson)
  final DateTime? agreementDate;
  static const fromJsonFactory = _$AgreementFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Agreement &&
            (identical(other.agreementId, agreementId) ||
                const DeepCollectionEquality()
                    .equals(other.agreementId, agreementId)) &&
            (identical(other.agreementType, agreementType) ||
                const DeepCollectionEquality()
                    .equals(other.agreementType, agreementType)) &&
            (identical(other.organisationIdMaster, organisationIdMaster) ||
                const DeepCollectionEquality().equals(
                    other.organisationIdMaster, organisationIdMaster)) &&
            (identical(
                    other.organisationIdSecondary, organisationIdSecondary) ||
                const DeepCollectionEquality().equals(
                    other.organisationIdSecondary, organisationIdSecondary)) &&
            (identical(other.agreementDate, agreementDate) ||
                const DeepCollectionEquality()
                    .equals(other.agreementDate, agreementDate)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(agreementId) ^
      const DeepCollectionEquality().hash(agreementType) ^
      const DeepCollectionEquality().hash(organisationIdMaster) ^
      const DeepCollectionEquality().hash(organisationIdSecondary) ^
      const DeepCollectionEquality().hash(agreementDate) ^
      runtimeType.hashCode;
}

extension $AgreementExtension on Agreement {
  Agreement copyWith(
      {String? agreementId,
      enums.AgreementAgreementType? agreementType,
      String? organisationIdMaster,
      String? organisationIdSecondary,
      DateTime? agreementDate}) {
    return Agreement(
        agreementId: agreementId ?? this.agreementId,
        agreementType: agreementType ?? this.agreementType,
        organisationIdMaster: organisationIdMaster ?? this.organisationIdMaster,
        organisationIdSecondary:
            organisationIdSecondary ?? this.organisationIdSecondary,
        agreementDate: agreementDate ?? this.agreementDate);
  }

  Agreement copyWithWrapped(
      {Wrapped<String?>? agreementId,
      Wrapped<enums.AgreementAgreementType?>? agreementType,
      Wrapped<String?>? organisationIdMaster,
      Wrapped<String?>? organisationIdSecondary,
      Wrapped<DateTime?>? agreementDate}) {
    return Agreement(
        agreementId:
            (agreementId != null ? agreementId.value : this.agreementId),
        agreementType:
            (agreementType != null ? agreementType.value : this.agreementType),
        organisationIdMaster: (organisationIdMaster != null
            ? organisationIdMaster.value
            : this.organisationIdMaster),
        organisationIdSecondary: (organisationIdSecondary != null
            ? organisationIdSecondary.value
            : this.organisationIdSecondary),
        agreementDate:
            (agreementDate != null ? agreementDate.value : this.agreementDate));
  }
}

@JsonSerializable(explicitToJson: true)
class ScopingValidityParameter {
  const ScopingValidityParameter({
    this.services,
    this.fareZones,
  });

  factory ScopingValidityParameter.fromJson(Map<String, dynamic> json) =>
      _$ScopingValidityParameterFromJson(json);

  static const toJsonFactory = _$ScopingValidityParameterToJson;
  Map<String, dynamic> toJson() => _$ScopingValidityParameterToJson(this);

  @JsonKey(name: 'services', defaultValue: <Service>[])
  final List<Service>? services;
  @JsonKey(name: 'fareZones', defaultValue: <FareZone>[])
  final List<FareZone>? fareZones;
  static const fromJsonFactory = _$ScopingValidityParameterFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScopingValidityParameter &&
            (identical(other.services, services) ||
                const DeepCollectionEquality()
                    .equals(other.services, services)) &&
            (identical(other.fareZones, fareZones) ||
                const DeepCollectionEquality()
                    .equals(other.fareZones, fareZones)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(services) ^
      const DeepCollectionEquality().hash(fareZones) ^
      runtimeType.hashCode;
}

extension $ScopingValidityParameterExtension on ScopingValidityParameter {
  ScopingValidityParameter copyWith(
      {List<Service>? services, List<FareZone>? fareZones}) {
    return ScopingValidityParameter(
        services: services ?? this.services,
        fareZones: fareZones ?? this.fareZones);
  }

  ScopingValidityParameter copyWithWrapped(
      {Wrapped<List<Service>?>? services,
      Wrapped<List<FareZone>?>? fareZones}) {
    return ScopingValidityParameter(
        services: (services != null ? services.value : this.services),
        fareZones: (fareZones != null ? fareZones.value : this.fareZones));
  }
}

@JsonSerializable(explicitToJson: true)
class Service {
  const Service({
    this.scopingValidityParameterId,
    this.scopingValidityParameterName,
    this.scopingValidityClassificationCode,
    this.scopingValidityParameterType,
    this.scopingValidityTransportModeCode,
    this.codeExternal,
    this.serviceOrganisationRef,
    this.lines,
  });

  factory Service.fromJson(Map<String, dynamic> json) =>
      _$ServiceFromJson(json);

  static const toJsonFactory = _$ServiceToJson;
  Map<String, dynamic> toJson() => _$ServiceToJson(this);

  @JsonKey(name: 'scopingValidityParameterId')
  final String? scopingValidityParameterId;
  @JsonKey(name: 'scopingValidityParameterName')
  final String? scopingValidityParameterName;
  @JsonKey(
    name: 'scopingValidityClassificationCode',
    toJson: serviceScopingValidityClassificationCodeNullableToJson,
    fromJson: serviceScopingValidityClassificationCodeNullableFromJson,
  )
  final enums.ServiceScopingValidityClassificationCode?
      scopingValidityClassificationCode;
  @JsonKey(name: 'scopingValidityParameterType')
  final String? scopingValidityParameterType;
  @JsonKey(name: 'scopingValidityTransportModeCode')
  final String? scopingValidityTransportModeCode;
  @JsonKey(name: 'codeExternal')
  final String? codeExternal;
  @JsonKey(name: 'serviceOrganisationRef')
  final String? serviceOrganisationRef;
  @JsonKey(name: 'lines', defaultValue: <Line>[])
  final List<Line>? lines;
  static const fromJsonFactory = _$ServiceFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Service &&
            (identical(other.scopingValidityParameterId, scopingValidityParameterId) ||
                const DeepCollectionEquality().equals(
                    other.scopingValidityParameterId,
                    scopingValidityParameterId)) &&
            (identical(other.scopingValidityParameterName, scopingValidityParameterName) ||
                const DeepCollectionEquality().equals(
                    other.scopingValidityParameterName,
                    scopingValidityParameterName)) &&
            (identical(other.scopingValidityClassificationCode,
                    scopingValidityClassificationCode) ||
                const DeepCollectionEquality().equals(
                    other.scopingValidityClassificationCode,
                    scopingValidityClassificationCode)) &&
            (identical(other.scopingValidityParameterType, scopingValidityParameterType) ||
                const DeepCollectionEquality().equals(
                    other.scopingValidityParameterType,
                    scopingValidityParameterType)) &&
            (identical(other.scopingValidityTransportModeCode,
                    scopingValidityTransportModeCode) ||
                const DeepCollectionEquality().equals(
                    other.scopingValidityTransportModeCode,
                    scopingValidityTransportModeCode)) &&
            (identical(other.codeExternal, codeExternal) ||
                const DeepCollectionEquality()
                    .equals(other.codeExternal, codeExternal)) &&
            (identical(other.serviceOrganisationRef, serviceOrganisationRef) ||
                const DeepCollectionEquality().equals(
                    other.serviceOrganisationRef, serviceOrganisationRef)) &&
            (identical(other.lines, lines) ||
                const DeepCollectionEquality().equals(other.lines, lines)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(scopingValidityParameterId) ^
      const DeepCollectionEquality().hash(scopingValidityParameterName) ^
      const DeepCollectionEquality().hash(scopingValidityClassificationCode) ^
      const DeepCollectionEquality().hash(scopingValidityParameterType) ^
      const DeepCollectionEquality().hash(scopingValidityTransportModeCode) ^
      const DeepCollectionEquality().hash(codeExternal) ^
      const DeepCollectionEquality().hash(serviceOrganisationRef) ^
      const DeepCollectionEquality().hash(lines) ^
      runtimeType.hashCode;
}

extension $ServiceExtension on Service {
  Service copyWith(
      {String? scopingValidityParameterId,
      String? scopingValidityParameterName,
      enums.ServiceScopingValidityClassificationCode?
          scopingValidityClassificationCode,
      String? scopingValidityParameterType,
      String? scopingValidityTransportModeCode,
      String? codeExternal,
      String? serviceOrganisationRef,
      List<Line>? lines}) {
    return Service(
        scopingValidityParameterId:
            scopingValidityParameterId ?? this.scopingValidityParameterId,
        scopingValidityParameterName:
            scopingValidityParameterName ?? this.scopingValidityParameterName,
        scopingValidityClassificationCode: scopingValidityClassificationCode ??
            this.scopingValidityClassificationCode,
        scopingValidityParameterType:
            scopingValidityParameterType ?? this.scopingValidityParameterType,
        scopingValidityTransportModeCode: scopingValidityTransportModeCode ??
            this.scopingValidityTransportModeCode,
        codeExternal: codeExternal ?? this.codeExternal,
        serviceOrganisationRef:
            serviceOrganisationRef ?? this.serviceOrganisationRef,
        lines: lines ?? this.lines);
  }

  Service copyWithWrapped(
      {Wrapped<String?>? scopingValidityParameterId,
      Wrapped<String?>? scopingValidityParameterName,
      Wrapped<enums.ServiceScopingValidityClassificationCode?>?
          scopingValidityClassificationCode,
      Wrapped<String?>? scopingValidityParameterType,
      Wrapped<String?>? scopingValidityTransportModeCode,
      Wrapped<String?>? codeExternal,
      Wrapped<String?>? serviceOrganisationRef,
      Wrapped<List<Line>?>? lines}) {
    return Service(
        scopingValidityParameterId: (scopingValidityParameterId != null
            ? scopingValidityParameterId.value
            : this.scopingValidityParameterId),
        scopingValidityParameterName: (scopingValidityParameterName != null
            ? scopingValidityParameterName.value
            : this.scopingValidityParameterName),
        scopingValidityClassificationCode:
            (scopingValidityClassificationCode != null
                ? scopingValidityClassificationCode.value
                : this.scopingValidityClassificationCode),
        scopingValidityParameterType: (scopingValidityParameterType != null
            ? scopingValidityParameterType.value
            : this.scopingValidityParameterType),
        scopingValidityTransportModeCode:
            (scopingValidityTransportModeCode != null
                ? scopingValidityTransportModeCode.value
                : this.scopingValidityTransportModeCode),
        codeExternal:
            (codeExternal != null ? codeExternal.value : this.codeExternal),
        serviceOrganisationRef: (serviceOrganisationRef != null
            ? serviceOrganisationRef.value
            : this.serviceOrganisationRef),
        lines: (lines != null ? lines.value : this.lines));
  }
}

@JsonSerializable(explicitToJson: true)
class Line {
  const Line({
    this.lineId,
    this.lineDescription,
    this.transportModeCode,
    this.transportModeDescription,
    this.transportSubModeCode,
    this.transportSubModeDescription,
  });

  factory Line.fromJson(Map<String, dynamic> json) => _$LineFromJson(json);

  static const toJsonFactory = _$LineToJson;
  Map<String, dynamic> toJson() => _$LineToJson(this);

  @JsonKey(name: 'lineId')
  final String? lineId;
  @JsonKey(name: 'lineDescription')
  final String? lineDescription;
  @JsonKey(name: 'transportModeCode')
  final String? transportModeCode;
  @JsonKey(name: 'transportModeDescription')
  final String? transportModeDescription;
  @JsonKey(name: 'transportSubModeCode')
  final String? transportSubModeCode;
  @JsonKey(name: 'transportSubModeDescription')
  final String? transportSubModeDescription;
  static const fromJsonFactory = _$LineFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Line &&
            (identical(other.lineId, lineId) ||
                const DeepCollectionEquality().equals(other.lineId, lineId)) &&
            (identical(other.lineDescription, lineDescription) ||
                const DeepCollectionEquality()
                    .equals(other.lineDescription, lineDescription)) &&
            (identical(other.transportModeCode, transportModeCode) ||
                const DeepCollectionEquality()
                    .equals(other.transportModeCode, transportModeCode)) &&
            (identical(
                    other.transportModeDescription, transportModeDescription) ||
                const DeepCollectionEquality().equals(
                    other.transportModeDescription,
                    transportModeDescription)) &&
            (identical(other.transportSubModeCode, transportSubModeCode) ||
                const DeepCollectionEquality().equals(
                    other.transportSubModeCode, transportSubModeCode)) &&
            (identical(other.transportSubModeDescription,
                    transportSubModeDescription) ||
                const DeepCollectionEquality().equals(
                    other.transportSubModeDescription,
                    transportSubModeDescription)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lineId) ^
      const DeepCollectionEquality().hash(lineDescription) ^
      const DeepCollectionEquality().hash(transportModeCode) ^
      const DeepCollectionEquality().hash(transportModeDescription) ^
      const DeepCollectionEquality().hash(transportSubModeCode) ^
      const DeepCollectionEquality().hash(transportSubModeDescription) ^
      runtimeType.hashCode;
}

extension $LineExtension on Line {
  Line copyWith(
      {String? lineId,
      String? lineDescription,
      String? transportModeCode,
      String? transportModeDescription,
      String? transportSubModeCode,
      String? transportSubModeDescription}) {
    return Line(
        lineId: lineId ?? this.lineId,
        lineDescription: lineDescription ?? this.lineDescription,
        transportModeCode: transportModeCode ?? this.transportModeCode,
        transportModeDescription:
            transportModeDescription ?? this.transportModeDescription,
        transportSubModeCode: transportSubModeCode ?? this.transportSubModeCode,
        transportSubModeDescription:
            transportSubModeDescription ?? this.transportSubModeDescription);
  }

  Line copyWithWrapped(
      {Wrapped<String?>? lineId,
      Wrapped<String?>? lineDescription,
      Wrapped<String?>? transportModeCode,
      Wrapped<String?>? transportModeDescription,
      Wrapped<String?>? transportSubModeCode,
      Wrapped<String?>? transportSubModeDescription}) {
    return Line(
        lineId: (lineId != null ? lineId.value : this.lineId),
        lineDescription: (lineDescription != null
            ? lineDescription.value
            : this.lineDescription),
        transportModeCode: (transportModeCode != null
            ? transportModeCode.value
            : this.transportModeCode),
        transportModeDescription: (transportModeDescription != null
            ? transportModeDescription.value
            : this.transportModeDescription),
        transportSubModeCode: (transportSubModeCode != null
            ? transportSubModeCode.value
            : this.transportSubModeCode),
        transportSubModeDescription: (transportSubModeDescription != null
            ? transportSubModeDescription.value
            : this.transportSubModeDescription));
  }
}

@JsonSerializable(explicitToJson: true)
class ServiceRef {
  const ServiceRef({
    this.serviceId,
    this.serviceName,
    this.serviceOrganisationRef,
    this.transportModeCode,
  });

  factory ServiceRef.fromJson(Map<String, dynamic> json) =>
      _$ServiceRefFromJson(json);

  static const toJsonFactory = _$ServiceRefToJson;
  Map<String, dynamic> toJson() => _$ServiceRefToJson(this);

  @JsonKey(name: 'serviceId')
  final String? serviceId;
  @JsonKey(name: 'serviceName')
  final String? serviceName;
  @JsonKey(name: 'serviceOrganisationRef')
  final String? serviceOrganisationRef;
  @JsonKey(name: 'transportModeCode')
  final String? transportModeCode;
  static const fromJsonFactory = _$ServiceRefFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ServiceRef &&
            (identical(other.serviceId, serviceId) ||
                const DeepCollectionEquality()
                    .equals(other.serviceId, serviceId)) &&
            (identical(other.serviceName, serviceName) ||
                const DeepCollectionEquality()
                    .equals(other.serviceName, serviceName)) &&
            (identical(other.serviceOrganisationRef, serviceOrganisationRef) ||
                const DeepCollectionEquality().equals(
                    other.serviceOrganisationRef, serviceOrganisationRef)) &&
            (identical(other.transportModeCode, transportModeCode) ||
                const DeepCollectionEquality()
                    .equals(other.transportModeCode, transportModeCode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(serviceId) ^
      const DeepCollectionEquality().hash(serviceName) ^
      const DeepCollectionEquality().hash(serviceOrganisationRef) ^
      const DeepCollectionEquality().hash(transportModeCode) ^
      runtimeType.hashCode;
}

extension $ServiceRefExtension on ServiceRef {
  ServiceRef copyWith(
      {String? serviceId,
      String? serviceName,
      String? serviceOrganisationRef,
      String? transportModeCode}) {
    return ServiceRef(
        serviceId: serviceId ?? this.serviceId,
        serviceName: serviceName ?? this.serviceName,
        serviceOrganisationRef:
            serviceOrganisationRef ?? this.serviceOrganisationRef,
        transportModeCode: transportModeCode ?? this.transportModeCode);
  }

  ServiceRef copyWithWrapped(
      {Wrapped<String?>? serviceId,
      Wrapped<String?>? serviceName,
      Wrapped<String?>? serviceOrganisationRef,
      Wrapped<String?>? transportModeCode}) {
    return ServiceRef(
        serviceId: (serviceId != null ? serviceId.value : this.serviceId),
        serviceName:
            (serviceName != null ? serviceName.value : this.serviceName),
        serviceOrganisationRef: (serviceOrganisationRef != null
            ? serviceOrganisationRef.value
            : this.serviceOrganisationRef),
        transportModeCode: (transportModeCode != null
            ? transportModeCode.value
            : this.transportModeCode));
  }
}

@JsonSerializable(explicitToJson: true)
class ServiceRestriction {
  const ServiceRestriction({
    this.restrictionOn,
    this.restrictionType,
  });

  factory ServiceRestriction.fromJson(Map<String, dynamic> json) =>
      _$ServiceRestrictionFromJson(json);

  static const toJsonFactory = _$ServiceRestrictionToJson;
  Map<String, dynamic> toJson() => _$ServiceRestrictionToJson(this);

  @JsonKey(
    name: 'restrictionOn',
    toJson: serviceRestrictionRestrictionOnNullableToJson,
    fromJson: serviceRestrictionRestrictionOnNullableFromJson,
  )
  final enums.ServiceRestrictionRestrictionOn? restrictionOn;
  @JsonKey(
    name: 'restrictionType',
    toJson: serviceRestrictionRestrictionTypeNullableToJson,
    fromJson: serviceRestrictionRestrictionTypeNullableFromJson,
  )
  final enums.ServiceRestrictionRestrictionType? restrictionType;
  static const fromJsonFactory = _$ServiceRestrictionFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ServiceRestriction &&
            (identical(other.restrictionOn, restrictionOn) ||
                const DeepCollectionEquality()
                    .equals(other.restrictionOn, restrictionOn)) &&
            (identical(other.restrictionType, restrictionType) ||
                const DeepCollectionEquality()
                    .equals(other.restrictionType, restrictionType)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(restrictionOn) ^
      const DeepCollectionEquality().hash(restrictionType) ^
      runtimeType.hashCode;
}

extension $ServiceRestrictionExtension on ServiceRestriction {
  ServiceRestriction copyWith(
      {enums.ServiceRestrictionRestrictionOn? restrictionOn,
      enums.ServiceRestrictionRestrictionType? restrictionType}) {
    return ServiceRestriction(
        restrictionOn: restrictionOn ?? this.restrictionOn,
        restrictionType: restrictionType ?? this.restrictionType);
  }

  ServiceRestriction copyWithWrapped(
      {Wrapped<enums.ServiceRestrictionRestrictionOn?>? restrictionOn,
      Wrapped<enums.ServiceRestrictionRestrictionType?>? restrictionType}) {
    return ServiceRestriction(
        restrictionOn:
            (restrictionOn != null ? restrictionOn.value : this.restrictionOn),
        restrictionType: (restrictionType != null
            ? restrictionType.value
            : this.restrictionType));
  }
}

@JsonSerializable(explicitToJson: true)
class RestrictedServiceRef {
  const RestrictedServiceRef({
    this.serviceRestriction,
    this.serviceId,
    this.serviceName,
    this.serviceOrganisationRef,
    this.transportModeCode,
  });

  factory RestrictedServiceRef.fromJson(Map<String, dynamic> json) =>
      _$RestrictedServiceRefFromJson(json);

  static const toJsonFactory = _$RestrictedServiceRefToJson;
  Map<String, dynamic> toJson() => _$RestrictedServiceRefToJson(this);

  @JsonKey(name: 'serviceRestriction')
  final ServiceRestriction? serviceRestriction;
  @JsonKey(name: 'serviceId')
  final String? serviceId;
  @JsonKey(name: 'serviceName')
  final String? serviceName;
  @JsonKey(name: 'serviceOrganisationRef')
  final String? serviceOrganisationRef;
  @JsonKey(name: 'transportModeCode')
  final String? transportModeCode;
  static const fromJsonFactory = _$RestrictedServiceRefFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RestrictedServiceRef &&
            (identical(other.serviceRestriction, serviceRestriction) ||
                const DeepCollectionEquality()
                    .equals(other.serviceRestriction, serviceRestriction)) &&
            (identical(other.serviceId, serviceId) ||
                const DeepCollectionEquality()
                    .equals(other.serviceId, serviceId)) &&
            (identical(other.serviceName, serviceName) ||
                const DeepCollectionEquality()
                    .equals(other.serviceName, serviceName)) &&
            (identical(other.serviceOrganisationRef, serviceOrganisationRef) ||
                const DeepCollectionEquality().equals(
                    other.serviceOrganisationRef, serviceOrganisationRef)) &&
            (identical(other.transportModeCode, transportModeCode) ||
                const DeepCollectionEquality()
                    .equals(other.transportModeCode, transportModeCode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(serviceRestriction) ^
      const DeepCollectionEquality().hash(serviceId) ^
      const DeepCollectionEquality().hash(serviceName) ^
      const DeepCollectionEquality().hash(serviceOrganisationRef) ^
      const DeepCollectionEquality().hash(transportModeCode) ^
      runtimeType.hashCode;
}

extension $RestrictedServiceRefExtension on RestrictedServiceRef {
  RestrictedServiceRef copyWith(
      {ServiceRestriction? serviceRestriction,
      String? serviceId,
      String? serviceName,
      String? serviceOrganisationRef,
      String? transportModeCode}) {
    return RestrictedServiceRef(
        serviceRestriction: serviceRestriction ?? this.serviceRestriction,
        serviceId: serviceId ?? this.serviceId,
        serviceName: serviceName ?? this.serviceName,
        serviceOrganisationRef:
            serviceOrganisationRef ?? this.serviceOrganisationRef,
        transportModeCode: transportModeCode ?? this.transportModeCode);
  }

  RestrictedServiceRef copyWithWrapped(
      {Wrapped<ServiceRestriction?>? serviceRestriction,
      Wrapped<String?>? serviceId,
      Wrapped<String?>? serviceName,
      Wrapped<String?>? serviceOrganisationRef,
      Wrapped<String?>? transportModeCode}) {
    return RestrictedServiceRef(
        serviceRestriction: (serviceRestriction != null
            ? serviceRestriction.value
            : this.serviceRestriction),
        serviceId: (serviceId != null ? serviceId.value : this.serviceId),
        serviceName:
            (serviceName != null ? serviceName.value : this.serviceName),
        serviceOrganisationRef: (serviceOrganisationRef != null
            ? serviceOrganisationRef.value
            : this.serviceOrganisationRef),
        transportModeCode: (transportModeCode != null
            ? transportModeCode.value
            : this.transportModeCode));
  }
}

@JsonSerializable(explicitToJson: true)
class FareZone {
  const FareZone({
    this.scopingValidityParameterId,
    this.scopingValidityParameterName,
    this.scopingValidityParameterType,
    this.permutationKNumber,
    this.groupType,
    this.zones,
  });

  factory FareZone.fromJson(Map<String, dynamic> json) =>
      _$FareZoneFromJson(json);

  static const toJsonFactory = _$FareZoneToJson;
  Map<String, dynamic> toJson() => _$FareZoneToJson(this);

  @JsonKey(name: 'scopingValidityParameterId')
  final String? scopingValidityParameterId;
  @JsonKey(name: 'scopingValidityParameterName')
  final String? scopingValidityParameterName;
  @JsonKey(
    name: 'scopingValidityParameterType',
    toJson: fareZoneScopingValidityParameterTypeNullableToJson,
    fromJson: fareZoneScopingValidityParameterTypeNullableFromJson,
  )
  final enums.FareZoneScopingValidityParameterType?
      scopingValidityParameterType;
  @JsonKey(name: 'permutationKNumber')
  final int? permutationKNumber;
  @JsonKey(
    name: 'groupType',
    toJson: fareZoneGroupTypeNullableToJson,
    fromJson: fareZoneGroupTypeNullableFromJson,
  )
  final enums.FareZoneGroupType? groupType;
  @JsonKey(name: 'zones', defaultValue: <Zone>[])
  final List<Zone>? zones;
  static const fromJsonFactory = _$FareZoneFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FareZone &&
            (identical(other.scopingValidityParameterId,
                    scopingValidityParameterId) ||
                const DeepCollectionEquality().equals(
                    other.scopingValidityParameterId,
                    scopingValidityParameterId)) &&
            (identical(other.scopingValidityParameterName,
                    scopingValidityParameterName) ||
                const DeepCollectionEquality().equals(
                    other.scopingValidityParameterName,
                    scopingValidityParameterName)) &&
            (identical(other.scopingValidityParameterType,
                    scopingValidityParameterType) ||
                const DeepCollectionEquality().equals(
                    other.scopingValidityParameterType,
                    scopingValidityParameterType)) &&
            (identical(other.permutationKNumber, permutationKNumber) ||
                const DeepCollectionEquality()
                    .equals(other.permutationKNumber, permutationKNumber)) &&
            (identical(other.groupType, groupType) ||
                const DeepCollectionEquality()
                    .equals(other.groupType, groupType)) &&
            (identical(other.zones, zones) ||
                const DeepCollectionEquality().equals(other.zones, zones)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(scopingValidityParameterId) ^
      const DeepCollectionEquality().hash(scopingValidityParameterName) ^
      const DeepCollectionEquality().hash(scopingValidityParameterType) ^
      const DeepCollectionEquality().hash(permutationKNumber) ^
      const DeepCollectionEquality().hash(groupType) ^
      const DeepCollectionEquality().hash(zones) ^
      runtimeType.hashCode;
}

extension $FareZoneExtension on FareZone {
  FareZone copyWith(
      {String? scopingValidityParameterId,
      String? scopingValidityParameterName,
      enums.FareZoneScopingValidityParameterType? scopingValidityParameterType,
      int? permutationKNumber,
      enums.FareZoneGroupType? groupType,
      List<Zone>? zones}) {
    return FareZone(
        scopingValidityParameterId:
            scopingValidityParameterId ?? this.scopingValidityParameterId,
        scopingValidityParameterName:
            scopingValidityParameterName ?? this.scopingValidityParameterName,
        scopingValidityParameterType:
            scopingValidityParameterType ?? this.scopingValidityParameterType,
        permutationKNumber: permutationKNumber ?? this.permutationKNumber,
        groupType: groupType ?? this.groupType,
        zones: zones ?? this.zones);
  }

  FareZone copyWithWrapped(
      {Wrapped<String?>? scopingValidityParameterId,
      Wrapped<String?>? scopingValidityParameterName,
      Wrapped<enums.FareZoneScopingValidityParameterType?>?
          scopingValidityParameterType,
      Wrapped<int?>? permutationKNumber,
      Wrapped<enums.FareZoneGroupType?>? groupType,
      Wrapped<List<Zone>?>? zones}) {
    return FareZone(
        scopingValidityParameterId: (scopingValidityParameterId != null
            ? scopingValidityParameterId.value
            : this.scopingValidityParameterId),
        scopingValidityParameterName: (scopingValidityParameterName != null
            ? scopingValidityParameterName.value
            : this.scopingValidityParameterName),
        scopingValidityParameterType: (scopingValidityParameterType != null
            ? scopingValidityParameterType.value
            : this.scopingValidityParameterType),
        permutationKNumber: (permutationKNumber != null
            ? permutationKNumber.value
            : this.permutationKNumber),
        groupType: (groupType != null ? groupType.value : this.groupType),
        zones: (zones != null ? zones.value : this.zones));
  }
}

@JsonSerializable(explicitToJson: true)
class Zone {
  const Zone({
    this.zoneWeight,
    this.codeExternal,
    this.networkElementId,
    this.networkElementName,
    this.appliedTariffType,
  });

  factory Zone.fromJson(Map<String, dynamic> json) => _$ZoneFromJson(json);

  static const toJsonFactory = _$ZoneToJson;
  Map<String, dynamic> toJson() => _$ZoneToJson(this);

  @JsonKey(name: 'zoneWeight')
  final int? zoneWeight;
  @JsonKey(name: 'codeExternal')
  final String? codeExternal;
  @JsonKey(name: 'networkElementId')
  final String? networkElementId;
  @JsonKey(name: 'networkElementName')
  final String? networkElementName;
  @JsonKey(
    name: 'appliedTariffType',
    toJson: zoneAppliedTariffTypeNullableToJson,
    fromJson: zoneAppliedTariffTypeNullableFromJson,
  )
  final enums.ZoneAppliedTariffType? appliedTariffType;
  static const fromJsonFactory = _$ZoneFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Zone &&
            (identical(other.zoneWeight, zoneWeight) ||
                const DeepCollectionEquality()
                    .equals(other.zoneWeight, zoneWeight)) &&
            (identical(other.codeExternal, codeExternal) ||
                const DeepCollectionEquality()
                    .equals(other.codeExternal, codeExternal)) &&
            (identical(other.networkElementId, networkElementId) ||
                const DeepCollectionEquality()
                    .equals(other.networkElementId, networkElementId)) &&
            (identical(other.networkElementName, networkElementName) ||
                const DeepCollectionEquality()
                    .equals(other.networkElementName, networkElementName)) &&
            (identical(other.appliedTariffType, appliedTariffType) ||
                const DeepCollectionEquality()
                    .equals(other.appliedTariffType, appliedTariffType)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(zoneWeight) ^
      const DeepCollectionEquality().hash(codeExternal) ^
      const DeepCollectionEquality().hash(networkElementId) ^
      const DeepCollectionEquality().hash(networkElementName) ^
      const DeepCollectionEquality().hash(appliedTariffType) ^
      runtimeType.hashCode;
}

extension $ZoneExtension on Zone {
  Zone copyWith(
      {int? zoneWeight,
      String? codeExternal,
      String? networkElementId,
      String? networkElementName,
      enums.ZoneAppliedTariffType? appliedTariffType}) {
    return Zone(
        zoneWeight: zoneWeight ?? this.zoneWeight,
        codeExternal: codeExternal ?? this.codeExternal,
        networkElementId: networkElementId ?? this.networkElementId,
        networkElementName: networkElementName ?? this.networkElementName,
        appliedTariffType: appliedTariffType ?? this.appliedTariffType);
  }

  Zone copyWithWrapped(
      {Wrapped<int?>? zoneWeight,
      Wrapped<String?>? codeExternal,
      Wrapped<String?>? networkElementId,
      Wrapped<String?>? networkElementName,
      Wrapped<enums.ZoneAppliedTariffType?>? appliedTariffType}) {
    return Zone(
        zoneWeight: (zoneWeight != null ? zoneWeight.value : this.zoneWeight),
        codeExternal:
            (codeExternal != null ? codeExternal.value : this.codeExternal),
        networkElementId: (networkElementId != null
            ? networkElementId.value
            : this.networkElementId),
        networkElementName: (networkElementName != null
            ? networkElementName.value
            : this.networkElementName),
        appliedTariffType: (appliedTariffType != null
            ? appliedTariffType.value
            : this.appliedTariffType));
  }
}

@JsonSerializable(explicitToJson: true)
class TemporalValidityParameter {
  const TemporalValidityParameter({
    this.temporalValidityParameterId,
    this.temporalValidityParameterName,
    this.dayType,
    this.datetimeBands,
  });

  factory TemporalValidityParameter.fromJson(Map<String, dynamic> json) =>
      _$TemporalValidityParameterFromJson(json);

  static const toJsonFactory = _$TemporalValidityParameterToJson;
  Map<String, dynamic> toJson() => _$TemporalValidityParameterToJson(this);

  @JsonKey(name: 'temporalValidityParameterId')
  final String? temporalValidityParameterId;
  @JsonKey(name: 'temporalValidityParameterName')
  final String? temporalValidityParameterName;
  @JsonKey(name: 'dayType')
  final DayType? dayType;
  @JsonKey(name: 'datetimeBands', defaultValue: <DateTimeBand>[])
  final List<DateTimeBand>? datetimeBands;
  static const fromJsonFactory = _$TemporalValidityParameterFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TemporalValidityParameter &&
            (identical(other.temporalValidityParameterId,
                    temporalValidityParameterId) ||
                const DeepCollectionEquality().equals(
                    other.temporalValidityParameterId,
                    temporalValidityParameterId)) &&
            (identical(other.temporalValidityParameterName,
                    temporalValidityParameterName) ||
                const DeepCollectionEquality().equals(
                    other.temporalValidityParameterName,
                    temporalValidityParameterName)) &&
            (identical(other.dayType, dayType) ||
                const DeepCollectionEquality()
                    .equals(other.dayType, dayType)) &&
            (identical(other.datetimeBands, datetimeBands) ||
                const DeepCollectionEquality()
                    .equals(other.datetimeBands, datetimeBands)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(temporalValidityParameterId) ^
      const DeepCollectionEquality().hash(temporalValidityParameterName) ^
      const DeepCollectionEquality().hash(dayType) ^
      const DeepCollectionEquality().hash(datetimeBands) ^
      runtimeType.hashCode;
}

extension $TemporalValidityParameterExtension on TemporalValidityParameter {
  TemporalValidityParameter copyWith(
      {String? temporalValidityParameterId,
      String? temporalValidityParameterName,
      DayType? dayType,
      List<DateTimeBand>? datetimeBands}) {
    return TemporalValidityParameter(
        temporalValidityParameterId:
            temporalValidityParameterId ?? this.temporalValidityParameterId,
        temporalValidityParameterName:
            temporalValidityParameterName ?? this.temporalValidityParameterName,
        dayType: dayType ?? this.dayType,
        datetimeBands: datetimeBands ?? this.datetimeBands);
  }

  TemporalValidityParameter copyWithWrapped(
      {Wrapped<String?>? temporalValidityParameterId,
      Wrapped<String?>? temporalValidityParameterName,
      Wrapped<DayType?>? dayType,
      Wrapped<List<DateTimeBand>?>? datetimeBands}) {
    return TemporalValidityParameter(
        temporalValidityParameterId: (temporalValidityParameterId != null
            ? temporalValidityParameterId.value
            : this.temporalValidityParameterId),
        temporalValidityParameterName: (temporalValidityParameterName != null
            ? temporalValidityParameterName.value
            : this.temporalValidityParameterName),
        dayType: (dayType != null ? dayType.value : this.dayType),
        datetimeBands:
            (datetimeBands != null ? datetimeBands.value : this.datetimeBands));
  }
}

@JsonSerializable(explicitToJson: true)
class DayType {
  const DayType({
    this.name,
    this.dayTypeId,
    this.properties,
  });

  factory DayType.fromJson(Map<String, dynamic> json) =>
      _$DayTypeFromJson(json);

  static const toJsonFactory = _$DayTypeToJson;
  Map<String, dynamic> toJson() => _$DayTypeToJson(this);

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'dayTypeId')
  final String? dayTypeId;
  @JsonKey(name: 'properties')
  final String? properties;
  static const fromJsonFactory = _$DayTypeFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DayType &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.dayTypeId, dayTypeId) ||
                const DeepCollectionEquality()
                    .equals(other.dayTypeId, dayTypeId)) &&
            (identical(other.properties, properties) ||
                const DeepCollectionEquality()
                    .equals(other.properties, properties)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(dayTypeId) ^
      const DeepCollectionEquality().hash(properties) ^
      runtimeType.hashCode;
}

extension $DayTypeExtension on DayType {
  DayType copyWith({String? name, String? dayTypeId, String? properties}) {
    return DayType(
        name: name ?? this.name,
        dayTypeId: dayTypeId ?? this.dayTypeId,
        properties: properties ?? this.properties);
  }

  DayType copyWithWrapped(
      {Wrapped<String?>? name,
      Wrapped<String?>? dayTypeId,
      Wrapped<String?>? properties}) {
    return DayType(
        name: (name != null ? name.value : this.name),
        dayTypeId: (dayTypeId != null ? dayTypeId.value : this.dayTypeId),
        properties: (properties != null ? properties.value : this.properties));
  }
}

@JsonSerializable(explicitToJson: true)
class DateTimeBand {
  const DateTimeBand({
    this.dateEnd,
    this.timeEnd,
    this.typeBand,
    this.dateStart,
    this.timeStart,
    this.blackOutUse,
    this.datetimeBandId,
    this.codeExternal,
  });

  factory DateTimeBand.fromJson(Map<String, dynamic> json) =>
      _$DateTimeBandFromJson(json);

  static const toJsonFactory = _$DateTimeBandToJson;
  Map<String, dynamic> toJson() => _$DateTimeBandToJson(this);

  @JsonKey(name: 'dateEnd', toJson: _dateToJson)
  final DateTime? dateEnd;
  @JsonKey(name: 'timeEnd')
  final String? timeEnd;
  @JsonKey(
    name: 'typeBand',
    toJson: dateTimeBandTypeBandNullableToJson,
    fromJson: dateTimeBandTypeBandNullableFromJson,
  )
  final enums.DateTimeBandTypeBand? typeBand;
  @JsonKey(name: 'dateStart', toJson: _dateToJson)
  final DateTime? dateStart;
  @JsonKey(name: 'timeStart')
  final String? timeStart;
  @JsonKey(
    name: 'blackOutUse',
    toJson: dateTimeBandBlackOutUseNullableToJson,
    fromJson: dateTimeBandBlackOutUseNullableFromJson,
  )
  final enums.DateTimeBandBlackOutUse? blackOutUse;
  @JsonKey(name: 'datetimeBandId')
  final String? datetimeBandId;
  @JsonKey(name: 'codeExternal')
  final String? codeExternal;
  static const fromJsonFactory = _$DateTimeBandFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DateTimeBand &&
            (identical(other.dateEnd, dateEnd) ||
                const DeepCollectionEquality()
                    .equals(other.dateEnd, dateEnd)) &&
            (identical(other.timeEnd, timeEnd) ||
                const DeepCollectionEquality()
                    .equals(other.timeEnd, timeEnd)) &&
            (identical(other.typeBand, typeBand) ||
                const DeepCollectionEquality()
                    .equals(other.typeBand, typeBand)) &&
            (identical(other.dateStart, dateStart) ||
                const DeepCollectionEquality()
                    .equals(other.dateStart, dateStart)) &&
            (identical(other.timeStart, timeStart) ||
                const DeepCollectionEquality()
                    .equals(other.timeStart, timeStart)) &&
            (identical(other.blackOutUse, blackOutUse) ||
                const DeepCollectionEquality()
                    .equals(other.blackOutUse, blackOutUse)) &&
            (identical(other.datetimeBandId, datetimeBandId) ||
                const DeepCollectionEquality()
                    .equals(other.datetimeBandId, datetimeBandId)) &&
            (identical(other.codeExternal, codeExternal) ||
                const DeepCollectionEquality()
                    .equals(other.codeExternal, codeExternal)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(dateEnd) ^
      const DeepCollectionEquality().hash(timeEnd) ^
      const DeepCollectionEquality().hash(typeBand) ^
      const DeepCollectionEquality().hash(dateStart) ^
      const DeepCollectionEquality().hash(timeStart) ^
      const DeepCollectionEquality().hash(blackOutUse) ^
      const DeepCollectionEquality().hash(datetimeBandId) ^
      const DeepCollectionEquality().hash(codeExternal) ^
      runtimeType.hashCode;
}

extension $DateTimeBandExtension on DateTimeBand {
  DateTimeBand copyWith(
      {DateTime? dateEnd,
      String? timeEnd,
      enums.DateTimeBandTypeBand? typeBand,
      DateTime? dateStart,
      String? timeStart,
      enums.DateTimeBandBlackOutUse? blackOutUse,
      String? datetimeBandId,
      String? codeExternal}) {
    return DateTimeBand(
        dateEnd: dateEnd ?? this.dateEnd,
        timeEnd: timeEnd ?? this.timeEnd,
        typeBand: typeBand ?? this.typeBand,
        dateStart: dateStart ?? this.dateStart,
        timeStart: timeStart ?? this.timeStart,
        blackOutUse: blackOutUse ?? this.blackOutUse,
        datetimeBandId: datetimeBandId ?? this.datetimeBandId,
        codeExternal: codeExternal ?? this.codeExternal);
  }

  DateTimeBand copyWithWrapped(
      {Wrapped<DateTime?>? dateEnd,
      Wrapped<String?>? timeEnd,
      Wrapped<enums.DateTimeBandTypeBand?>? typeBand,
      Wrapped<DateTime?>? dateStart,
      Wrapped<String?>? timeStart,
      Wrapped<enums.DateTimeBandBlackOutUse?>? blackOutUse,
      Wrapped<String?>? datetimeBandId,
      Wrapped<String?>? codeExternal}) {
    return DateTimeBand(
        dateEnd: (dateEnd != null ? dateEnd.value : this.dateEnd),
        timeEnd: (timeEnd != null ? timeEnd.value : this.timeEnd),
        typeBand: (typeBand != null ? typeBand.value : this.typeBand),
        dateStart: (dateStart != null ? dateStart.value : this.dateStart),
        timeStart: (timeStart != null ? timeStart.value : this.timeStart),
        blackOutUse:
            (blackOutUse != null ? blackOutUse.value : this.blackOutUse),
        datetimeBandId: (datetimeBandId != null
            ? datetimeBandId.value
            : this.datetimeBandId),
        codeExternal:
            (codeExternal != null ? codeExternal.value : this.codeExternal));
  }
}

@JsonSerializable(explicitToJson: true)
class UsageParameter {
  const UsageParameter({
    this.validityPeriods,
    this.customerProfiles,
    this.frequenciesOfUse,
    this.luggageSetAllowance,
    this.transferability,
  });

  factory UsageParameter.fromJson(Map<String, dynamic> json) =>
      _$UsageParameterFromJson(json);

  static const toJsonFactory = _$UsageParameterToJson;
  Map<String, dynamic> toJson() => _$UsageParameterToJson(this);

  @JsonKey(name: 'validityPeriods', defaultValue: <ValidityPeriod>[])
  final List<ValidityPeriod>? validityPeriods;
  @JsonKey(name: 'customerProfiles', defaultValue: <CustomerProfile>[])
  final List<CustomerProfile>? customerProfiles;
  @JsonKey(name: 'frequenciesOfUse', defaultValue: <FrequenciesOfUse>[])
  final List<FrequenciesOfUse>? frequenciesOfUse;
  @JsonKey(name: 'luggageSetAllowance', defaultValue: <LuggageSetAllowance>[])
  final List<LuggageSetAllowance>? luggageSetAllowance;
  @JsonKey(name: 'transferability')
  final Transferability? transferability;
  static const fromJsonFactory = _$UsageParameterFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UsageParameter &&
            (identical(other.validityPeriods, validityPeriods) ||
                const DeepCollectionEquality()
                    .equals(other.validityPeriods, validityPeriods)) &&
            (identical(other.customerProfiles, customerProfiles) ||
                const DeepCollectionEquality()
                    .equals(other.customerProfiles, customerProfiles)) &&
            (identical(other.frequenciesOfUse, frequenciesOfUse) ||
                const DeepCollectionEquality()
                    .equals(other.frequenciesOfUse, frequenciesOfUse)) &&
            (identical(other.luggageSetAllowance, luggageSetAllowance) ||
                const DeepCollectionEquality()
                    .equals(other.luggageSetAllowance, luggageSetAllowance)) &&
            (identical(other.transferability, transferability) ||
                const DeepCollectionEquality()
                    .equals(other.transferability, transferability)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(validityPeriods) ^
      const DeepCollectionEquality().hash(customerProfiles) ^
      const DeepCollectionEquality().hash(frequenciesOfUse) ^
      const DeepCollectionEquality().hash(luggageSetAllowance) ^
      const DeepCollectionEquality().hash(transferability) ^
      runtimeType.hashCode;
}

extension $UsageParameterExtension on UsageParameter {
  UsageParameter copyWith(
      {List<ValidityPeriod>? validityPeriods,
      List<CustomerProfile>? customerProfiles,
      List<FrequenciesOfUse>? frequenciesOfUse,
      List<LuggageSetAllowance>? luggageSetAllowance,
      Transferability? transferability}) {
    return UsageParameter(
        validityPeriods: validityPeriods ?? this.validityPeriods,
        customerProfiles: customerProfiles ?? this.customerProfiles,
        frequenciesOfUse: frequenciesOfUse ?? this.frequenciesOfUse,
        luggageSetAllowance: luggageSetAllowance ?? this.luggageSetAllowance,
        transferability: transferability ?? this.transferability);
  }

  UsageParameter copyWithWrapped(
      {Wrapped<List<ValidityPeriod>?>? validityPeriods,
      Wrapped<List<CustomerProfile>?>? customerProfiles,
      Wrapped<List<FrequenciesOfUse>?>? frequenciesOfUse,
      Wrapped<List<LuggageSetAllowance>?>? luggageSetAllowance,
      Wrapped<Transferability?>? transferability}) {
    return UsageParameter(
        validityPeriods: (validityPeriods != null
            ? validityPeriods.value
            : this.validityPeriods),
        customerProfiles: (customerProfiles != null
            ? customerProfiles.value
            : this.customerProfiles),
        frequenciesOfUse: (frequenciesOfUse != null
            ? frequenciesOfUse.value
            : this.frequenciesOfUse),
        luggageSetAllowance: (luggageSetAllowance != null
            ? luggageSetAllowance.value
            : this.luggageSetAllowance),
        transferability: (transferability != null
            ? transferability.value
            : this.transferability));
  }
}

@JsonSerializable(explicitToJson: true)
class ValidityPeriod {
  const ValidityPeriod({
    this.usageParameterId,
    this.usageParameterName,
    this.typeUsageParameter,
    this.validityPeriodName,
    this.validityPeriodType,
    this.standardDuration,
    this.trigger,
  });

  factory ValidityPeriod.fromJson(Map<String, dynamic> json) =>
      _$ValidityPeriodFromJson(json);

  static const toJsonFactory = _$ValidityPeriodToJson;
  Map<String, dynamic> toJson() => _$ValidityPeriodToJson(this);

  @JsonKey(name: 'usageParameterId')
  final String? usageParameterId;
  @JsonKey(name: 'usageParameterName')
  final String? usageParameterName;
  @JsonKey(
    name: 'typeUsageParameter',
    toJson: validityPeriodTypeUsageParameterNullableToJson,
    fromJson: validityPeriodTypeUsageParameterNullableFromJson,
  )
  final enums.ValidityPeriodTypeUsageParameter? typeUsageParameter;
  @JsonKey(name: 'validityPeriodName')
  final String? validityPeriodName;
  @JsonKey(
    name: 'validityPeriodType',
    toJson: validityPeriodValidityPeriodTypeNullableToJson,
    fromJson: validityPeriodValidityPeriodTypeNullableFromJson,
  )
  final enums.ValidityPeriodValidityPeriodType? validityPeriodType;
  @JsonKey(name: 'standardDuration')
  final int? standardDuration;
  @JsonKey(name: 'trigger')
  final Trigger? trigger;
  static const fromJsonFactory = _$ValidityPeriodFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ValidityPeriod &&
            (identical(other.usageParameterId, usageParameterId) ||
                const DeepCollectionEquality()
                    .equals(other.usageParameterId, usageParameterId)) &&
            (identical(other.usageParameterName, usageParameterName) ||
                const DeepCollectionEquality()
                    .equals(other.usageParameterName, usageParameterName)) &&
            (identical(other.typeUsageParameter, typeUsageParameter) ||
                const DeepCollectionEquality()
                    .equals(other.typeUsageParameter, typeUsageParameter)) &&
            (identical(other.validityPeriodName, validityPeriodName) ||
                const DeepCollectionEquality()
                    .equals(other.validityPeriodName, validityPeriodName)) &&
            (identical(other.validityPeriodType, validityPeriodType) ||
                const DeepCollectionEquality()
                    .equals(other.validityPeriodType, validityPeriodType)) &&
            (identical(other.standardDuration, standardDuration) ||
                const DeepCollectionEquality()
                    .equals(other.standardDuration, standardDuration)) &&
            (identical(other.trigger, trigger) ||
                const DeepCollectionEquality().equals(other.trigger, trigger)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(usageParameterId) ^
      const DeepCollectionEquality().hash(usageParameterName) ^
      const DeepCollectionEquality().hash(typeUsageParameter) ^
      const DeepCollectionEquality().hash(validityPeriodName) ^
      const DeepCollectionEquality().hash(validityPeriodType) ^
      const DeepCollectionEquality().hash(standardDuration) ^
      const DeepCollectionEquality().hash(trigger) ^
      runtimeType.hashCode;
}

extension $ValidityPeriodExtension on ValidityPeriod {
  ValidityPeriod copyWith(
      {String? usageParameterId,
      String? usageParameterName,
      enums.ValidityPeriodTypeUsageParameter? typeUsageParameter,
      String? validityPeriodName,
      enums.ValidityPeriodValidityPeriodType? validityPeriodType,
      int? standardDuration,
      Trigger? trigger}) {
    return ValidityPeriod(
        usageParameterId: usageParameterId ?? this.usageParameterId,
        usageParameterName: usageParameterName ?? this.usageParameterName,
        typeUsageParameter: typeUsageParameter ?? this.typeUsageParameter,
        validityPeriodName: validityPeriodName ?? this.validityPeriodName,
        validityPeriodType: validityPeriodType ?? this.validityPeriodType,
        standardDuration: standardDuration ?? this.standardDuration,
        trigger: trigger ?? this.trigger);
  }

  ValidityPeriod copyWithWrapped(
      {Wrapped<String?>? usageParameterId,
      Wrapped<String?>? usageParameterName,
      Wrapped<enums.ValidityPeriodTypeUsageParameter?>? typeUsageParameter,
      Wrapped<String?>? validityPeriodName,
      Wrapped<enums.ValidityPeriodValidityPeriodType?>? validityPeriodType,
      Wrapped<int?>? standardDuration,
      Wrapped<Trigger?>? trigger}) {
    return ValidityPeriod(
        usageParameterId: (usageParameterId != null
            ? usageParameterId.value
            : this.usageParameterId),
        usageParameterName: (usageParameterName != null
            ? usageParameterName.value
            : this.usageParameterName),
        typeUsageParameter: (typeUsageParameter != null
            ? typeUsageParameter.value
            : this.typeUsageParameter),
        validityPeriodName: (validityPeriodName != null
            ? validityPeriodName.value
            : this.validityPeriodName),
        validityPeriodType: (validityPeriodType != null
            ? validityPeriodType.value
            : this.validityPeriodType),
        standardDuration: (standardDuration != null
            ? standardDuration.value
            : this.standardDuration),
        trigger: (trigger != null ? trigger.value : this.trigger));
  }
}

@JsonSerializable(explicitToJson: true)
class Trigger {
  const Trigger({
    this.usageTriggerType,
    this.startValidation,
    this.usageTriggerPeriod,
  });

  factory Trigger.fromJson(Map<String, dynamic> json) =>
      _$TriggerFromJson(json);

  static const toJsonFactory = _$TriggerToJson;
  Map<String, dynamic> toJson() => _$TriggerToJson(this);

  @JsonKey(
    name: 'usageTriggerType',
    toJson: triggerUsageTriggerTypeNullableToJson,
    fromJson: triggerUsageTriggerTypeNullableFromJson,
  )
  final enums.TriggerUsageTriggerType? usageTriggerType;
  @JsonKey(name: 'startValidation')
  final String? startValidation;
  @JsonKey(name: 'usageTriggerPeriod')
  final String? usageTriggerPeriod;
  static const fromJsonFactory = _$TriggerFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Trigger &&
            (identical(other.usageTriggerType, usageTriggerType) ||
                const DeepCollectionEquality()
                    .equals(other.usageTriggerType, usageTriggerType)) &&
            (identical(other.startValidation, startValidation) ||
                const DeepCollectionEquality()
                    .equals(other.startValidation, startValidation)) &&
            (identical(other.usageTriggerPeriod, usageTriggerPeriod) ||
                const DeepCollectionEquality()
                    .equals(other.usageTriggerPeriod, usageTriggerPeriod)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(usageTriggerType) ^
      const DeepCollectionEquality().hash(startValidation) ^
      const DeepCollectionEquality().hash(usageTriggerPeriod) ^
      runtimeType.hashCode;
}

extension $TriggerExtension on Trigger {
  Trigger copyWith(
      {enums.TriggerUsageTriggerType? usageTriggerType,
      String? startValidation,
      String? usageTriggerPeriod}) {
    return Trigger(
        usageTriggerType: usageTriggerType ?? this.usageTriggerType,
        startValidation: startValidation ?? this.startValidation,
        usageTriggerPeriod: usageTriggerPeriod ?? this.usageTriggerPeriod);
  }

  Trigger copyWithWrapped(
      {Wrapped<enums.TriggerUsageTriggerType?>? usageTriggerType,
      Wrapped<String?>? startValidation,
      Wrapped<String?>? usageTriggerPeriod}) {
    return Trigger(
        usageTriggerType: (usageTriggerType != null
            ? usageTriggerType.value
            : this.usageTriggerType),
        startValidation: (startValidation != null
            ? startValidation.value
            : this.startValidation),
        usageTriggerPeriod: (usageTriggerPeriod != null
            ? usageTriggerPeriod.value
            : this.usageTriggerPeriod));
  }
}

@JsonSerializable(explicitToJson: true)
class TravelSummary {
  const TravelSummary({
    this.distance,
    this.distanceUnit,
    this.duration,
    this.durationUnit,
  });

  factory TravelSummary.fromJson(Map<String, dynamic> json) =>
      _$TravelSummaryFromJson(json);

  static const toJsonFactory = _$TravelSummaryToJson;
  Map<String, dynamic> toJson() => _$TravelSummaryToJson(this);

  @JsonKey(name: 'distance')
  final int? distance;
  @JsonKey(
    name: 'distanceUnit',
    toJson: travelSummaryDistanceUnitNullableToJson,
    fromJson: travelSummaryDistanceUnitNullableFromJson,
  )
  final enums.TravelSummaryDistanceUnit? distanceUnit;
  @JsonKey(name: 'duration')
  final int? duration;
  @JsonKey(
    name: 'durationUnit',
    toJson: travelSummaryDurationUnitNullableToJson,
    fromJson: travelSummaryDurationUnitNullableFromJson,
  )
  final enums.TravelSummaryDurationUnit? durationUnit;
  static const fromJsonFactory = _$TravelSummaryFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TravelSummary &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)) &&
            (identical(other.distanceUnit, distanceUnit) ||
                const DeepCollectionEquality()
                    .equals(other.distanceUnit, distanceUnit)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.durationUnit, durationUnit) ||
                const DeepCollectionEquality()
                    .equals(other.durationUnit, durationUnit)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(distance) ^
      const DeepCollectionEquality().hash(distanceUnit) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(durationUnit) ^
      runtimeType.hashCode;
}

extension $TravelSummaryExtension on TravelSummary {
  TravelSummary copyWith(
      {int? distance,
      enums.TravelSummaryDistanceUnit? distanceUnit,
      int? duration,
      enums.TravelSummaryDurationUnit? durationUnit}) {
    return TravelSummary(
        distance: distance ?? this.distance,
        distanceUnit: distanceUnit ?? this.distanceUnit,
        duration: duration ?? this.duration,
        durationUnit: durationUnit ?? this.durationUnit);
  }

  TravelSummary copyWithWrapped(
      {Wrapped<int?>? distance,
      Wrapped<enums.TravelSummaryDistanceUnit?>? distanceUnit,
      Wrapped<int?>? duration,
      Wrapped<enums.TravelSummaryDurationUnit?>? durationUnit}) {
    return TravelSummary(
        distance: (distance != null ? distance.value : this.distance),
        distanceUnit:
            (distanceUnit != null ? distanceUnit.value : this.distanceUnit),
        duration: (duration != null ? duration.value : this.duration),
        durationUnit:
            (durationUnit != null ? durationUnit.value : this.durationUnit));
  }
}

@JsonSerializable(explicitToJson: true)
class CustomerProfile {
  const CustomerProfile({
    this.usageParameterId,
    this.usageParameterName,
    this.typeUsageParameter,
    this.minimumAge,
    this.maximumAge,
    this.minimumHeight,
    this.maximumHeight,
    this.minimumIncome,
    this.maximumIncome,
    this.localResident,
  });

  factory CustomerProfile.fromJson(Map<String, dynamic> json) =>
      _$CustomerProfileFromJson(json);

  static const toJsonFactory = _$CustomerProfileToJson;
  Map<String, dynamic> toJson() => _$CustomerProfileToJson(this);

  @JsonKey(name: 'usageParameterId')
  final String? usageParameterId;
  @JsonKey(name: 'usageParameterName')
  final String? usageParameterName;
  @JsonKey(
    name: 'typeUsageParameter',
    toJson: customerProfileTypeUsageParameterNullableToJson,
    fromJson: customerProfileTypeUsageParameterNullableFromJson,
  )
  final enums.CustomerProfileTypeUsageParameter? typeUsageParameter;
  @JsonKey(name: 'minimumAge')
  final int? minimumAge;
  @JsonKey(name: 'maximumAge')
  final int? maximumAge;
  @JsonKey(name: 'minimumHeight')
  final int? minimumHeight;
  @JsonKey(name: 'maximumHeight')
  final int? maximumHeight;
  @JsonKey(name: 'minimumIncome')
  final double? minimumIncome;
  @JsonKey(name: 'maximumIncome')
  final double? maximumIncome;
  @JsonKey(name: 'localResident')
  final int? localResident;
  static const fromJsonFactory = _$CustomerProfileFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CustomerProfile &&
            (identical(other.usageParameterId, usageParameterId) ||
                const DeepCollectionEquality()
                    .equals(other.usageParameterId, usageParameterId)) &&
            (identical(other.usageParameterName, usageParameterName) ||
                const DeepCollectionEquality()
                    .equals(other.usageParameterName, usageParameterName)) &&
            (identical(other.typeUsageParameter, typeUsageParameter) ||
                const DeepCollectionEquality()
                    .equals(other.typeUsageParameter, typeUsageParameter)) &&
            (identical(other.minimumAge, minimumAge) ||
                const DeepCollectionEquality()
                    .equals(other.minimumAge, minimumAge)) &&
            (identical(other.maximumAge, maximumAge) ||
                const DeepCollectionEquality()
                    .equals(other.maximumAge, maximumAge)) &&
            (identical(other.minimumHeight, minimumHeight) ||
                const DeepCollectionEquality()
                    .equals(other.minimumHeight, minimumHeight)) &&
            (identical(other.maximumHeight, maximumHeight) ||
                const DeepCollectionEquality()
                    .equals(other.maximumHeight, maximumHeight)) &&
            (identical(other.minimumIncome, minimumIncome) ||
                const DeepCollectionEquality()
                    .equals(other.minimumIncome, minimumIncome)) &&
            (identical(other.maximumIncome, maximumIncome) ||
                const DeepCollectionEquality()
                    .equals(other.maximumIncome, maximumIncome)) &&
            (identical(other.localResident, localResident) ||
                const DeepCollectionEquality()
                    .equals(other.localResident, localResident)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(usageParameterId) ^
      const DeepCollectionEquality().hash(usageParameterName) ^
      const DeepCollectionEquality().hash(typeUsageParameter) ^
      const DeepCollectionEquality().hash(minimumAge) ^
      const DeepCollectionEquality().hash(maximumAge) ^
      const DeepCollectionEquality().hash(minimumHeight) ^
      const DeepCollectionEquality().hash(maximumHeight) ^
      const DeepCollectionEquality().hash(minimumIncome) ^
      const DeepCollectionEquality().hash(maximumIncome) ^
      const DeepCollectionEquality().hash(localResident) ^
      runtimeType.hashCode;
}

extension $CustomerProfileExtension on CustomerProfile {
  CustomerProfile copyWith(
      {String? usageParameterId,
      String? usageParameterName,
      enums.CustomerProfileTypeUsageParameter? typeUsageParameter,
      int? minimumAge,
      int? maximumAge,
      int? minimumHeight,
      int? maximumHeight,
      double? minimumIncome,
      double? maximumIncome,
      int? localResident}) {
    return CustomerProfile(
        usageParameterId: usageParameterId ?? this.usageParameterId,
        usageParameterName: usageParameterName ?? this.usageParameterName,
        typeUsageParameter: typeUsageParameter ?? this.typeUsageParameter,
        minimumAge: minimumAge ?? this.minimumAge,
        maximumAge: maximumAge ?? this.maximumAge,
        minimumHeight: minimumHeight ?? this.minimumHeight,
        maximumHeight: maximumHeight ?? this.maximumHeight,
        minimumIncome: minimumIncome ?? this.minimumIncome,
        maximumIncome: maximumIncome ?? this.maximumIncome,
        localResident: localResident ?? this.localResident);
  }

  CustomerProfile copyWithWrapped(
      {Wrapped<String?>? usageParameterId,
      Wrapped<String?>? usageParameterName,
      Wrapped<enums.CustomerProfileTypeUsageParameter?>? typeUsageParameter,
      Wrapped<int?>? minimumAge,
      Wrapped<int?>? maximumAge,
      Wrapped<int?>? minimumHeight,
      Wrapped<int?>? maximumHeight,
      Wrapped<double?>? minimumIncome,
      Wrapped<double?>? maximumIncome,
      Wrapped<int?>? localResident}) {
    return CustomerProfile(
        usageParameterId: (usageParameterId != null
            ? usageParameterId.value
            : this.usageParameterId),
        usageParameterName: (usageParameterName != null
            ? usageParameterName.value
            : this.usageParameterName),
        typeUsageParameter: (typeUsageParameter != null
            ? typeUsageParameter.value
            : this.typeUsageParameter),
        minimumAge: (minimumAge != null ? minimumAge.value : this.minimumAge),
        maximumAge: (maximumAge != null ? maximumAge.value : this.maximumAge),
        minimumHeight:
            (minimumHeight != null ? minimumHeight.value : this.minimumHeight),
        maximumHeight:
            (maximumHeight != null ? maximumHeight.value : this.maximumHeight),
        minimumIncome:
            (minimumIncome != null ? minimumIncome.value : this.minimumIncome),
        maximumIncome:
            (maximumIncome != null ? maximumIncome.value : this.maximumIncome),
        localResident:
            (localResident != null ? localResident.value : this.localResident));
  }
}

@JsonSerializable(explicitToJson: true)
class FrequenciesOfUse {
  const FrequenciesOfUse({
    this.usageParameterId,
    this.usageParameterName,
    this.typeUsageParameter,
    this.maximalFrequency,
    this.minimalFrequency,
    this.service,
  });

  factory FrequenciesOfUse.fromJson(Map<String, dynamic> json) =>
      _$FrequenciesOfUseFromJson(json);

  static const toJsonFactory = _$FrequenciesOfUseToJson;
  Map<String, dynamic> toJson() => _$FrequenciesOfUseToJson(this);

  @JsonKey(name: 'usageParameterId')
  final String? usageParameterId;
  @JsonKey(name: 'usageParameterName')
  final String? usageParameterName;
  @JsonKey(
    name: 'typeUsageParameter',
    toJson: frequenciesOfUseTypeUsageParameterNullableToJson,
    fromJson: frequenciesOfUseTypeUsageParameterNullableFromJson,
  )
  final enums.FrequenciesOfUseTypeUsageParameter? typeUsageParameter;
  @JsonKey(name: 'maximalFrequency')
  final int? maximalFrequency;
  @JsonKey(name: 'minimalFrequency')
  final int? minimalFrequency;
  @JsonKey(name: 'service')
  final RestrictedServiceRef? service;
  static const fromJsonFactory = _$FrequenciesOfUseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FrequenciesOfUse &&
            (identical(other.usageParameterId, usageParameterId) ||
                const DeepCollectionEquality()
                    .equals(other.usageParameterId, usageParameterId)) &&
            (identical(other.usageParameterName, usageParameterName) ||
                const DeepCollectionEquality()
                    .equals(other.usageParameterName, usageParameterName)) &&
            (identical(other.typeUsageParameter, typeUsageParameter) ||
                const DeepCollectionEquality()
                    .equals(other.typeUsageParameter, typeUsageParameter)) &&
            (identical(other.maximalFrequency, maximalFrequency) ||
                const DeepCollectionEquality()
                    .equals(other.maximalFrequency, maximalFrequency)) &&
            (identical(other.minimalFrequency, minimalFrequency) ||
                const DeepCollectionEquality()
                    .equals(other.minimalFrequency, minimalFrequency)) &&
            (identical(other.service, service) ||
                const DeepCollectionEquality().equals(other.service, service)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(usageParameterId) ^
      const DeepCollectionEquality().hash(usageParameterName) ^
      const DeepCollectionEquality().hash(typeUsageParameter) ^
      const DeepCollectionEquality().hash(maximalFrequency) ^
      const DeepCollectionEquality().hash(minimalFrequency) ^
      const DeepCollectionEquality().hash(service) ^
      runtimeType.hashCode;
}

extension $FrequenciesOfUseExtension on FrequenciesOfUse {
  FrequenciesOfUse copyWith(
      {String? usageParameterId,
      String? usageParameterName,
      enums.FrequenciesOfUseTypeUsageParameter? typeUsageParameter,
      int? maximalFrequency,
      int? minimalFrequency,
      RestrictedServiceRef? service}) {
    return FrequenciesOfUse(
        usageParameterId: usageParameterId ?? this.usageParameterId,
        usageParameterName: usageParameterName ?? this.usageParameterName,
        typeUsageParameter: typeUsageParameter ?? this.typeUsageParameter,
        maximalFrequency: maximalFrequency ?? this.maximalFrequency,
        minimalFrequency: minimalFrequency ?? this.minimalFrequency,
        service: service ?? this.service);
  }

  FrequenciesOfUse copyWithWrapped(
      {Wrapped<String?>? usageParameterId,
      Wrapped<String?>? usageParameterName,
      Wrapped<enums.FrequenciesOfUseTypeUsageParameter?>? typeUsageParameter,
      Wrapped<int?>? maximalFrequency,
      Wrapped<int?>? minimalFrequency,
      Wrapped<RestrictedServiceRef?>? service}) {
    return FrequenciesOfUse(
        usageParameterId: (usageParameterId != null
            ? usageParameterId.value
            : this.usageParameterId),
        usageParameterName: (usageParameterName != null
            ? usageParameterName.value
            : this.usageParameterName),
        typeUsageParameter: (typeUsageParameter != null
            ? typeUsageParameter.value
            : this.typeUsageParameter),
        maximalFrequency: (maximalFrequency != null
            ? maximalFrequency.value
            : this.maximalFrequency),
        minimalFrequency: (minimalFrequency != null
            ? minimalFrequency.value
            : this.minimalFrequency),
        service: (service != null ? service.value : this.service));
  }
}

@JsonSerializable(explicitToJson: true)
class LuggageSetAllowance {
  const LuggageSetAllowance({
    this.usageParameterId,
    this.usageParameterName,
    this.typeUsageParameter,
    this.numberItems,
    this.totalWeight,
    this.baggageType,
    this.service,
  });

  factory LuggageSetAllowance.fromJson(Map<String, dynamic> json) =>
      _$LuggageSetAllowanceFromJson(json);

  static const toJsonFactory = _$LuggageSetAllowanceToJson;
  Map<String, dynamic> toJson() => _$LuggageSetAllowanceToJson(this);

  @JsonKey(name: 'usageParameterId')
  final String? usageParameterId;
  @JsonKey(name: 'usageParameterName')
  final String? usageParameterName;
  @JsonKey(
    name: 'typeUsageParameter',
    toJson: luggageSetAllowanceTypeUsageParameterNullableToJson,
    fromJson: luggageSetAllowanceTypeUsageParameterNullableFromJson,
  )
  final enums.LuggageSetAllowanceTypeUsageParameter? typeUsageParameter;
  @JsonKey(name: 'numberItems')
  final int? numberItems;
  @JsonKey(name: 'totalWeight')
  final int? totalWeight;
  @JsonKey(
    name: 'baggageType',
    toJson: luggageSetAllowanceBaggageTypeNullableToJson,
    fromJson: luggageSetAllowanceBaggageTypeNullableFromJson,
  )
  final enums.LuggageSetAllowanceBaggageType? baggageType;
  @JsonKey(name: 'service')
  final ServiceRef? service;
  static const fromJsonFactory = _$LuggageSetAllowanceFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LuggageSetAllowance &&
            (identical(other.usageParameterId, usageParameterId) ||
                const DeepCollectionEquality()
                    .equals(other.usageParameterId, usageParameterId)) &&
            (identical(other.usageParameterName, usageParameterName) ||
                const DeepCollectionEquality()
                    .equals(other.usageParameterName, usageParameterName)) &&
            (identical(other.typeUsageParameter, typeUsageParameter) ||
                const DeepCollectionEquality()
                    .equals(other.typeUsageParameter, typeUsageParameter)) &&
            (identical(other.numberItems, numberItems) ||
                const DeepCollectionEquality()
                    .equals(other.numberItems, numberItems)) &&
            (identical(other.totalWeight, totalWeight) ||
                const DeepCollectionEquality()
                    .equals(other.totalWeight, totalWeight)) &&
            (identical(other.baggageType, baggageType) ||
                const DeepCollectionEquality()
                    .equals(other.baggageType, baggageType)) &&
            (identical(other.service, service) ||
                const DeepCollectionEquality().equals(other.service, service)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(usageParameterId) ^
      const DeepCollectionEquality().hash(usageParameterName) ^
      const DeepCollectionEquality().hash(typeUsageParameter) ^
      const DeepCollectionEquality().hash(numberItems) ^
      const DeepCollectionEquality().hash(totalWeight) ^
      const DeepCollectionEquality().hash(baggageType) ^
      const DeepCollectionEquality().hash(service) ^
      runtimeType.hashCode;
}

extension $LuggageSetAllowanceExtension on LuggageSetAllowance {
  LuggageSetAllowance copyWith(
      {String? usageParameterId,
      String? usageParameterName,
      enums.LuggageSetAllowanceTypeUsageParameter? typeUsageParameter,
      int? numberItems,
      int? totalWeight,
      enums.LuggageSetAllowanceBaggageType? baggageType,
      ServiceRef? service}) {
    return LuggageSetAllowance(
        usageParameterId: usageParameterId ?? this.usageParameterId,
        usageParameterName: usageParameterName ?? this.usageParameterName,
        typeUsageParameter: typeUsageParameter ?? this.typeUsageParameter,
        numberItems: numberItems ?? this.numberItems,
        totalWeight: totalWeight ?? this.totalWeight,
        baggageType: baggageType ?? this.baggageType,
        service: service ?? this.service);
  }

  LuggageSetAllowance copyWithWrapped(
      {Wrapped<String?>? usageParameterId,
      Wrapped<String?>? usageParameterName,
      Wrapped<enums.LuggageSetAllowanceTypeUsageParameter?>? typeUsageParameter,
      Wrapped<int?>? numberItems,
      Wrapped<int?>? totalWeight,
      Wrapped<enums.LuggageSetAllowanceBaggageType?>? baggageType,
      Wrapped<ServiceRef?>? service}) {
    return LuggageSetAllowance(
        usageParameterId: (usageParameterId != null
            ? usageParameterId.value
            : this.usageParameterId),
        usageParameterName: (usageParameterName != null
            ? usageParameterName.value
            : this.usageParameterName),
        typeUsageParameter: (typeUsageParameter != null
            ? typeUsageParameter.value
            : this.typeUsageParameter),
        numberItems:
            (numberItems != null ? numberItems.value : this.numberItems),
        totalWeight:
            (totalWeight != null ? totalWeight.value : this.totalWeight),
        baggageType:
            (baggageType != null ? baggageType.value : this.baggageType),
        service: (service != null ? service.value : this.service));
  }
}

@JsonSerializable(explicitToJson: true)
class Transferability {
  const Transferability({
    this.usageParameterId,
    this.usageParameterName,
    this.typeUsageParameter,
    this.canTransfer,
    this.maximumNumberOfNamedTransferees,
  });

  factory Transferability.fromJson(Map<String, dynamic> json) =>
      _$TransferabilityFromJson(json);

  static const toJsonFactory = _$TransferabilityToJson;
  Map<String, dynamic> toJson() => _$TransferabilityToJson(this);

  @JsonKey(name: 'usageParameterId')
  final String? usageParameterId;
  @JsonKey(name: 'usageParameterName')
  final String? usageParameterName;
  @JsonKey(name: 'typeUsageParameter')
  final String? typeUsageParameter;
  @JsonKey(name: 'canTransfer')
  final bool? canTransfer;
  @JsonKey(name: 'maximumNumberOfNamedTransferees')
  final int? maximumNumberOfNamedTransferees;
  static const fromJsonFactory = _$TransferabilityFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Transferability &&
            (identical(other.usageParameterId, usageParameterId) ||
                const DeepCollectionEquality()
                    .equals(other.usageParameterId, usageParameterId)) &&
            (identical(other.usageParameterName, usageParameterName) ||
                const DeepCollectionEquality()
                    .equals(other.usageParameterName, usageParameterName)) &&
            (identical(other.typeUsageParameter, typeUsageParameter) ||
                const DeepCollectionEquality()
                    .equals(other.typeUsageParameter, typeUsageParameter)) &&
            (identical(other.canTransfer, canTransfer) ||
                const DeepCollectionEquality()
                    .equals(other.canTransfer, canTransfer)) &&
            (identical(other.maximumNumberOfNamedTransferees,
                    maximumNumberOfNamedTransferees) ||
                const DeepCollectionEquality().equals(
                    other.maximumNumberOfNamedTransferees,
                    maximumNumberOfNamedTransferees)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(usageParameterId) ^
      const DeepCollectionEquality().hash(usageParameterName) ^
      const DeepCollectionEquality().hash(typeUsageParameter) ^
      const DeepCollectionEquality().hash(canTransfer) ^
      const DeepCollectionEquality().hash(maximumNumberOfNamedTransferees) ^
      runtimeType.hashCode;
}

extension $TransferabilityExtension on Transferability {
  Transferability copyWith(
      {String? usageParameterId,
      String? usageParameterName,
      String? typeUsageParameter,
      bool? canTransfer,
      int? maximumNumberOfNamedTransferees}) {
    return Transferability(
        usageParameterId: usageParameterId ?? this.usageParameterId,
        usageParameterName: usageParameterName ?? this.usageParameterName,
        typeUsageParameter: typeUsageParameter ?? this.typeUsageParameter,
        canTransfer: canTransfer ?? this.canTransfer,
        maximumNumberOfNamedTransferees: maximumNumberOfNamedTransferees ??
            this.maximumNumberOfNamedTransferees);
  }

  Transferability copyWithWrapped(
      {Wrapped<String?>? usageParameterId,
      Wrapped<String?>? usageParameterName,
      Wrapped<String?>? typeUsageParameter,
      Wrapped<bool?>? canTransfer,
      Wrapped<int?>? maximumNumberOfNamedTransferees}) {
    return Transferability(
        usageParameterId: (usageParameterId != null
            ? usageParameterId.value
            : this.usageParameterId),
        usageParameterName: (usageParameterName != null
            ? usageParameterName.value
            : this.usageParameterName),
        typeUsageParameter: (typeUsageParameter != null
            ? typeUsageParameter.value
            : this.typeUsageParameter),
        canTransfer:
            (canTransfer != null ? canTransfer.value : this.canTransfer),
        maximumNumberOfNamedTransferees:
            (maximumNumberOfNamedTransferees != null
                ? maximumNumberOfNamedTransferees.value
                : this.maximumNumberOfNamedTransferees));
  }
}

@JsonSerializable(explicitToJson: true)
class ScopingGeographicalParameter {
  const ScopingGeographicalParameter({
    this.geographicalIntervals,
    this.distanceMatrixElements,
  });

  factory ScopingGeographicalParameter.fromJson(Map<String, dynamic> json) =>
      _$ScopingGeographicalParameterFromJson(json);

  static const toJsonFactory = _$ScopingGeographicalParameterToJson;
  Map<String, dynamic> toJson() => _$ScopingGeographicalParameterToJson(this);

  @JsonKey(
      name: 'geographicalIntervals', defaultValue: <GeographicalInterval>[])
  final List<GeographicalInterval>? geographicalIntervals;
  @JsonKey(
      name: 'distanceMatrixElements', defaultValue: <DistanceMatrixElement>[])
  final List<DistanceMatrixElement>? distanceMatrixElements;
  static const fromJsonFactory = _$ScopingGeographicalParameterFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScopingGeographicalParameter &&
            (identical(other.geographicalIntervals, geographicalIntervals) ||
                const DeepCollectionEquality().equals(
                    other.geographicalIntervals, geographicalIntervals)) &&
            (identical(other.distanceMatrixElements, distanceMatrixElements) ||
                const DeepCollectionEquality().equals(
                    other.distanceMatrixElements, distanceMatrixElements)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(geographicalIntervals) ^
      const DeepCollectionEquality().hash(distanceMatrixElements) ^
      runtimeType.hashCode;
}

extension $ScopingGeographicalParameterExtension
    on ScopingGeographicalParameter {
  ScopingGeographicalParameter copyWith(
      {List<GeographicalInterval>? geographicalIntervals,
      List<DistanceMatrixElement>? distanceMatrixElements}) {
    return ScopingGeographicalParameter(
        geographicalIntervals:
            geographicalIntervals ?? this.geographicalIntervals,
        distanceMatrixElements:
            distanceMatrixElements ?? this.distanceMatrixElements);
  }

  ScopingGeographicalParameter copyWithWrapped(
      {Wrapped<List<GeographicalInterval>?>? geographicalIntervals,
      Wrapped<List<DistanceMatrixElement>?>? distanceMatrixElements}) {
    return ScopingGeographicalParameter(
        geographicalIntervals: (geographicalIntervals != null
            ? geographicalIntervals.value
            : this.geographicalIntervals),
        distanceMatrixElements: (distanceMatrixElements != null
            ? distanceMatrixElements.value
            : this.distanceMatrixElements));
  }
}

@JsonSerializable(explicitToJson: true)
class GeographicalInterval {
  const GeographicalInterval({
    this.scopingGeographicalId,
    this.scopingGeographicalName,
    this.scopingGeographicalType,
    this.unitNumber,
    this.intervalType,
    this.endGeographicalInterval,
    this.startGeographicalInterval,
  });

  factory GeographicalInterval.fromJson(Map<String, dynamic> json) =>
      _$GeographicalIntervalFromJson(json);

  static const toJsonFactory = _$GeographicalIntervalToJson;
  Map<String, dynamic> toJson() => _$GeographicalIntervalToJson(this);

  @JsonKey(name: 'scopingGeographicalId')
  final String? scopingGeographicalId;
  @JsonKey(name: 'scopingGeographicalName')
  final String? scopingGeographicalName;
  @JsonKey(
    name: 'scopingGeographicalType',
    toJson: geographicalIntervalScopingGeographicalTypeNullableToJson,
    fromJson: geographicalIntervalScopingGeographicalTypeNullableFromJson,
  )
  final enums.GeographicalIntervalScopingGeographicalType?
      scopingGeographicalType;
  @JsonKey(name: 'unitNumber')
  final int? unitNumber;
  @JsonKey(
    name: 'intervalType',
    toJson: geographicalIntervalIntervalTypeNullableToJson,
    fromJson: geographicalIntervalIntervalTypeNullableFromJson,
  )
  final enums.GeographicalIntervalIntervalType? intervalType;
  @JsonKey(name: 'endGeographicalInterval')
  final double? endGeographicalInterval;
  @JsonKey(name: 'startGeographicalInterval')
  final double? startGeographicalInterval;
  static const fromJsonFactory = _$GeographicalIntervalFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GeographicalInterval &&
            (identical(other.scopingGeographicalId, scopingGeographicalId) ||
                const DeepCollectionEquality().equals(
                    other.scopingGeographicalId, scopingGeographicalId)) &&
            (identical(
                    other.scopingGeographicalName, scopingGeographicalName) ||
                const DeepCollectionEquality().equals(
                    other.scopingGeographicalName, scopingGeographicalName)) &&
            (identical(
                    other.scopingGeographicalType, scopingGeographicalType) ||
                const DeepCollectionEquality().equals(
                    other.scopingGeographicalType, scopingGeographicalType)) &&
            (identical(other.unitNumber, unitNumber) ||
                const DeepCollectionEquality()
                    .equals(other.unitNumber, unitNumber)) &&
            (identical(other.intervalType, intervalType) ||
                const DeepCollectionEquality()
                    .equals(other.intervalType, intervalType)) &&
            (identical(
                    other.endGeographicalInterval, endGeographicalInterval) ||
                const DeepCollectionEquality().equals(
                    other.endGeographicalInterval, endGeographicalInterval)) &&
            (identical(other.startGeographicalInterval,
                    startGeographicalInterval) ||
                const DeepCollectionEquality().equals(
                    other.startGeographicalInterval,
                    startGeographicalInterval)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(scopingGeographicalId) ^
      const DeepCollectionEquality().hash(scopingGeographicalName) ^
      const DeepCollectionEquality().hash(scopingGeographicalType) ^
      const DeepCollectionEquality().hash(unitNumber) ^
      const DeepCollectionEquality().hash(intervalType) ^
      const DeepCollectionEquality().hash(endGeographicalInterval) ^
      const DeepCollectionEquality().hash(startGeographicalInterval) ^
      runtimeType.hashCode;
}

extension $GeographicalIntervalExtension on GeographicalInterval {
  GeographicalInterval copyWith(
      {String? scopingGeographicalId,
      String? scopingGeographicalName,
      enums.GeographicalIntervalScopingGeographicalType?
          scopingGeographicalType,
      int? unitNumber,
      enums.GeographicalIntervalIntervalType? intervalType,
      double? endGeographicalInterval,
      double? startGeographicalInterval}) {
    return GeographicalInterval(
        scopingGeographicalId:
            scopingGeographicalId ?? this.scopingGeographicalId,
        scopingGeographicalName:
            scopingGeographicalName ?? this.scopingGeographicalName,
        scopingGeographicalType:
            scopingGeographicalType ?? this.scopingGeographicalType,
        unitNumber: unitNumber ?? this.unitNumber,
        intervalType: intervalType ?? this.intervalType,
        endGeographicalInterval:
            endGeographicalInterval ?? this.endGeographicalInterval,
        startGeographicalInterval:
            startGeographicalInterval ?? this.startGeographicalInterval);
  }

  GeographicalInterval copyWithWrapped(
      {Wrapped<String?>? scopingGeographicalId,
      Wrapped<String?>? scopingGeographicalName,
      Wrapped<enums.GeographicalIntervalScopingGeographicalType?>?
          scopingGeographicalType,
      Wrapped<int?>? unitNumber,
      Wrapped<enums.GeographicalIntervalIntervalType?>? intervalType,
      Wrapped<double?>? endGeographicalInterval,
      Wrapped<double?>? startGeographicalInterval}) {
    return GeographicalInterval(
        scopingGeographicalId: (scopingGeographicalId != null
            ? scopingGeographicalId.value
            : this.scopingGeographicalId),
        scopingGeographicalName: (scopingGeographicalName != null
            ? scopingGeographicalName.value
            : this.scopingGeographicalName),
        scopingGeographicalType: (scopingGeographicalType != null
            ? scopingGeographicalType.value
            : this.scopingGeographicalType),
        unitNumber: (unitNumber != null ? unitNumber.value : this.unitNumber),
        intervalType:
            (intervalType != null ? intervalType.value : this.intervalType),
        endGeographicalInterval: (endGeographicalInterval != null
            ? endGeographicalInterval.value
            : this.endGeographicalInterval),
        startGeographicalInterval: (startGeographicalInterval != null
            ? startGeographicalInterval.value
            : this.startGeographicalInterval));
  }
}

@JsonSerializable(explicitToJson: true)
class DistanceMatrixElement {
  const DistanceMatrixElement({
    this.scopingdistanceMatrixElementId,
    this.scopingdistanceMatrixElementName,
    this.originScheduledStoppoint,
    this.destinationScheduledStoppoint,
    this.distance,
    this.startScheduledStoppoint,
    this.endScheduledStoppoint,
    this.startTariffZone,
    this.endTariffZone,
  });

  factory DistanceMatrixElement.fromJson(Map<String, dynamic> json) =>
      _$DistanceMatrixElementFromJson(json);

  static const toJsonFactory = _$DistanceMatrixElementToJson;
  Map<String, dynamic> toJson() => _$DistanceMatrixElementToJson(this);

  @JsonKey(name: 'scopingdistanceMatrixElementId')
  final String? scopingdistanceMatrixElementId;
  @JsonKey(name: 'scopingdistanceMatrixElementName')
  final String? scopingdistanceMatrixElementName;
  @JsonKey(name: 'originScheduledStoppoint')
  final String? originScheduledStoppoint;
  @JsonKey(name: 'destinationScheduledStoppoint')
  final String? destinationScheduledStoppoint;
  @JsonKey(name: 'distance')
  final int? distance;
  @JsonKey(name: 'startScheduledStoppoint')
  final String? startScheduledStoppoint;
  @JsonKey(name: 'endScheduledStoppoint')
  final String? endScheduledStoppoint;
  @JsonKey(name: 'startTariffZone')
  final String? startTariffZone;
  @JsonKey(name: 'endTariffZone')
  final String? endTariffZone;
  static const fromJsonFactory = _$DistanceMatrixElementFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DistanceMatrixElement &&
            (identical(other.scopingdistanceMatrixElementId, scopingdistanceMatrixElementId) ||
                const DeepCollectionEquality().equals(
                    other.scopingdistanceMatrixElementId,
                    scopingdistanceMatrixElementId)) &&
            (identical(other.scopingdistanceMatrixElementName, scopingdistanceMatrixElementName) ||
                const DeepCollectionEquality().equals(
                    other.scopingdistanceMatrixElementName,
                    scopingdistanceMatrixElementName)) &&
            (identical(other.originScheduledStoppoint, originScheduledStoppoint) ||
                const DeepCollectionEquality().equals(
                    other.originScheduledStoppoint,
                    originScheduledStoppoint)) &&
            (identical(other.destinationScheduledStoppoint, destinationScheduledStoppoint) ||
                const DeepCollectionEquality().equals(
                    other.destinationScheduledStoppoint,
                    destinationScheduledStoppoint)) &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)) &&
            (identical(other.startScheduledStoppoint, startScheduledStoppoint) ||
                const DeepCollectionEquality().equals(
                    other.startScheduledStoppoint, startScheduledStoppoint)) &&
            (identical(other.endScheduledStoppoint, endScheduledStoppoint) ||
                const DeepCollectionEquality().equals(
                    other.endScheduledStoppoint, endScheduledStoppoint)) &&
            (identical(other.startTariffZone, startTariffZone) ||
                const DeepCollectionEquality()
                    .equals(other.startTariffZone, startTariffZone)) &&
            (identical(other.endTariffZone, endTariffZone) ||
                const DeepCollectionEquality()
                    .equals(other.endTariffZone, endTariffZone)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(scopingdistanceMatrixElementId) ^
      const DeepCollectionEquality().hash(scopingdistanceMatrixElementName) ^
      const DeepCollectionEquality().hash(originScheduledStoppoint) ^
      const DeepCollectionEquality().hash(destinationScheduledStoppoint) ^
      const DeepCollectionEquality().hash(distance) ^
      const DeepCollectionEquality().hash(startScheduledStoppoint) ^
      const DeepCollectionEquality().hash(endScheduledStoppoint) ^
      const DeepCollectionEquality().hash(startTariffZone) ^
      const DeepCollectionEquality().hash(endTariffZone) ^
      runtimeType.hashCode;
}

extension $DistanceMatrixElementExtension on DistanceMatrixElement {
  DistanceMatrixElement copyWith(
      {String? scopingdistanceMatrixElementId,
      String? scopingdistanceMatrixElementName,
      String? originScheduledStoppoint,
      String? destinationScheduledStoppoint,
      int? distance,
      String? startScheduledStoppoint,
      String? endScheduledStoppoint,
      String? startTariffZone,
      String? endTariffZone}) {
    return DistanceMatrixElement(
        scopingdistanceMatrixElementId: scopingdistanceMatrixElementId ??
            this.scopingdistanceMatrixElementId,
        scopingdistanceMatrixElementName: scopingdistanceMatrixElementName ??
            this.scopingdistanceMatrixElementName,
        originScheduledStoppoint:
            originScheduledStoppoint ?? this.originScheduledStoppoint,
        destinationScheduledStoppoint:
            destinationScheduledStoppoint ?? this.destinationScheduledStoppoint,
        distance: distance ?? this.distance,
        startScheduledStoppoint:
            startScheduledStoppoint ?? this.startScheduledStoppoint,
        endScheduledStoppoint:
            endScheduledStoppoint ?? this.endScheduledStoppoint,
        startTariffZone: startTariffZone ?? this.startTariffZone,
        endTariffZone: endTariffZone ?? this.endTariffZone);
  }

  DistanceMatrixElement copyWithWrapped(
      {Wrapped<String?>? scopingdistanceMatrixElementId,
      Wrapped<String?>? scopingdistanceMatrixElementName,
      Wrapped<String?>? originScheduledStoppoint,
      Wrapped<String?>? destinationScheduledStoppoint,
      Wrapped<int?>? distance,
      Wrapped<String?>? startScheduledStoppoint,
      Wrapped<String?>? endScheduledStoppoint,
      Wrapped<String?>? startTariffZone,
      Wrapped<String?>? endTariffZone}) {
    return DistanceMatrixElement(
        scopingdistanceMatrixElementId: (scopingdistanceMatrixElementId != null
            ? scopingdistanceMatrixElementId.value
            : this.scopingdistanceMatrixElementId),
        scopingdistanceMatrixElementName:
            (scopingdistanceMatrixElementName != null
                ? scopingdistanceMatrixElementName.value
                : this.scopingdistanceMatrixElementName),
        originScheduledStoppoint: (originScheduledStoppoint != null
            ? originScheduledStoppoint.value
            : this.originScheduledStoppoint),
        destinationScheduledStoppoint: (destinationScheduledStoppoint != null
            ? destinationScheduledStoppoint.value
            : this.destinationScheduledStoppoint),
        distance: (distance != null ? distance.value : this.distance),
        startScheduledStoppoint: (startScheduledStoppoint != null
            ? startScheduledStoppoint.value
            : this.startScheduledStoppoint),
        endScheduledStoppoint: (endScheduledStoppoint != null
            ? endScheduledStoppoint.value
            : this.endScheduledStoppoint),
        startTariffZone: (startTariffZone != null
            ? startTariffZone.value
            : this.startTariffZone),
        endTariffZone:
            (endTariffZone != null ? endTariffZone.value : this.endTariffZone));
  }
}

@JsonSerializable(explicitToJson: true)
class DistributionTouchPoint {
  const DistributionTouchPoint({
    this.touchPoints,
    this.endValidity,
    this.startValidity,
    this.distributionAssignmentId,
    this.distributionTouchpointType,
  });

  factory DistributionTouchPoint.fromJson(Map<String, dynamic> json) =>
      _$DistributionTouchPointFromJson(json);

  static const toJsonFactory = _$DistributionTouchPointToJson;
  Map<String, dynamic> toJson() => _$DistributionTouchPointToJson(this);

  @JsonKey(name: 'touchPoints', defaultValue: <TouchPoint>[])
  final List<TouchPoint>? touchPoints;
  @JsonKey(name: 'endValidity', toJson: _dateToJson)
  final DateTime? endValidity;
  @JsonKey(name: 'startValidity', toJson: _dateToJson)
  final DateTime? startValidity;
  @JsonKey(name: 'distributionAssignmentId')
  final String? distributionAssignmentId;
  @JsonKey(
    name: 'distributionTouchpointType',
    toJson: distributionTouchPointDistributionTouchpointTypeNullableToJson,
    fromJson: distributionTouchPointDistributionTouchpointTypeNullableFromJson,
  )
  final enums.DistributionTouchPointDistributionTouchpointType?
      distributionTouchpointType;
  static const fromJsonFactory = _$DistributionTouchPointFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DistributionTouchPoint &&
            (identical(other.touchPoints, touchPoints) ||
                const DeepCollectionEquality()
                    .equals(other.touchPoints, touchPoints)) &&
            (identical(other.endValidity, endValidity) ||
                const DeepCollectionEquality()
                    .equals(other.endValidity, endValidity)) &&
            (identical(other.startValidity, startValidity) ||
                const DeepCollectionEquality()
                    .equals(other.startValidity, startValidity)) &&
            (identical(
                    other.distributionAssignmentId, distributionAssignmentId) ||
                const DeepCollectionEquality().equals(
                    other.distributionAssignmentId,
                    distributionAssignmentId)) &&
            (identical(other.distributionTouchpointType,
                    distributionTouchpointType) ||
                const DeepCollectionEquality().equals(
                    other.distributionTouchpointType,
                    distributionTouchpointType)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(touchPoints) ^
      const DeepCollectionEquality().hash(endValidity) ^
      const DeepCollectionEquality().hash(startValidity) ^
      const DeepCollectionEquality().hash(distributionAssignmentId) ^
      const DeepCollectionEquality().hash(distributionTouchpointType) ^
      runtimeType.hashCode;
}

extension $DistributionTouchPointExtension on DistributionTouchPoint {
  DistributionTouchPoint copyWith(
      {List<TouchPoint>? touchPoints,
      DateTime? endValidity,
      DateTime? startValidity,
      String? distributionAssignmentId,
      enums.DistributionTouchPointDistributionTouchpointType?
          distributionTouchpointType}) {
    return DistributionTouchPoint(
        touchPoints: touchPoints ?? this.touchPoints,
        endValidity: endValidity ?? this.endValidity,
        startValidity: startValidity ?? this.startValidity,
        distributionAssignmentId:
            distributionAssignmentId ?? this.distributionAssignmentId,
        distributionTouchpointType:
            distributionTouchpointType ?? this.distributionTouchpointType);
  }

  DistributionTouchPoint copyWithWrapped(
      {Wrapped<List<TouchPoint>?>? touchPoints,
      Wrapped<DateTime?>? endValidity,
      Wrapped<DateTime?>? startValidity,
      Wrapped<String?>? distributionAssignmentId,
      Wrapped<enums.DistributionTouchPointDistributionTouchpointType?>?
          distributionTouchpointType}) {
    return DistributionTouchPoint(
        touchPoints:
            (touchPoints != null ? touchPoints.value : this.touchPoints),
        endValidity:
            (endValidity != null ? endValidity.value : this.endValidity),
        startValidity:
            (startValidity != null ? startValidity.value : this.startValidity),
        distributionAssignmentId: (distributionAssignmentId != null
            ? distributionAssignmentId.value
            : this.distributionAssignmentId),
        distributionTouchpointType: (distributionTouchpointType != null
            ? distributionTouchpointType.value
            : this.distributionTouchpointType));
  }
}

@JsonSerializable(explicitToJson: true)
class Promotion {
  const Promotion({
    this.promotionAssignmentId,
    this.promotionId,
    this.promotionName,
    this.promotionType,
    this.promotionValue,
    this.isCombinable,
    this.customerProfile,
    this.endValidity,
    this.startValidity,
  });

  factory Promotion.fromJson(Map<String, dynamic> json) =>
      _$PromotionFromJson(json);

  static const toJsonFactory = _$PromotionToJson;
  Map<String, dynamic> toJson() => _$PromotionToJson(this);

  @JsonKey(name: 'promotionAssignmentId')
  final String? promotionAssignmentId;
  @JsonKey(name: 'promotionId')
  final String? promotionId;
  @JsonKey(name: 'promotionName')
  final String? promotionName;
  @JsonKey(name: 'promotionType')
  final PromotionType? promotionType;
  @JsonKey(name: 'promotionValue')
  final double? promotionValue;
  @JsonKey(name: 'isCombinable')
  final bool? isCombinable;
  @JsonKey(name: 'customerProfile')
  final CustomerProfile? customerProfile;
  @JsonKey(name: 'endValidity', toJson: _dateToJson)
  final DateTime? endValidity;
  @JsonKey(name: 'startValidity', toJson: _dateToJson)
  final DateTime? startValidity;
  static const fromJsonFactory = _$PromotionFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Promotion &&
            (identical(other.promotionAssignmentId, promotionAssignmentId) ||
                const DeepCollectionEquality().equals(
                    other.promotionAssignmentId, promotionAssignmentId)) &&
            (identical(other.promotionId, promotionId) ||
                const DeepCollectionEquality()
                    .equals(other.promotionId, promotionId)) &&
            (identical(other.promotionName, promotionName) ||
                const DeepCollectionEquality()
                    .equals(other.promotionName, promotionName)) &&
            (identical(other.promotionType, promotionType) ||
                const DeepCollectionEquality()
                    .equals(other.promotionType, promotionType)) &&
            (identical(other.promotionValue, promotionValue) ||
                const DeepCollectionEquality()
                    .equals(other.promotionValue, promotionValue)) &&
            (identical(other.isCombinable, isCombinable) ||
                const DeepCollectionEquality()
                    .equals(other.isCombinable, isCombinable)) &&
            (identical(other.customerProfile, customerProfile) ||
                const DeepCollectionEquality()
                    .equals(other.customerProfile, customerProfile)) &&
            (identical(other.endValidity, endValidity) ||
                const DeepCollectionEquality()
                    .equals(other.endValidity, endValidity)) &&
            (identical(other.startValidity, startValidity) ||
                const DeepCollectionEquality()
                    .equals(other.startValidity, startValidity)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(promotionAssignmentId) ^
      const DeepCollectionEquality().hash(promotionId) ^
      const DeepCollectionEquality().hash(promotionName) ^
      const DeepCollectionEquality().hash(promotionType) ^
      const DeepCollectionEquality().hash(promotionValue) ^
      const DeepCollectionEquality().hash(isCombinable) ^
      const DeepCollectionEquality().hash(customerProfile) ^
      const DeepCollectionEquality().hash(endValidity) ^
      const DeepCollectionEquality().hash(startValidity) ^
      runtimeType.hashCode;
}

extension $PromotionExtension on Promotion {
  Promotion copyWith(
      {String? promotionAssignmentId,
      String? promotionId,
      String? promotionName,
      PromotionType? promotionType,
      double? promotionValue,
      bool? isCombinable,
      CustomerProfile? customerProfile,
      DateTime? endValidity,
      DateTime? startValidity}) {
    return Promotion(
        promotionAssignmentId:
            promotionAssignmentId ?? this.promotionAssignmentId,
        promotionId: promotionId ?? this.promotionId,
        promotionName: promotionName ?? this.promotionName,
        promotionType: promotionType ?? this.promotionType,
        promotionValue: promotionValue ?? this.promotionValue,
        isCombinable: isCombinable ?? this.isCombinable,
        customerProfile: customerProfile ?? this.customerProfile,
        endValidity: endValidity ?? this.endValidity,
        startValidity: startValidity ?? this.startValidity);
  }

  Promotion copyWithWrapped(
      {Wrapped<String?>? promotionAssignmentId,
      Wrapped<String?>? promotionId,
      Wrapped<String?>? promotionName,
      Wrapped<PromotionType?>? promotionType,
      Wrapped<double?>? promotionValue,
      Wrapped<bool?>? isCombinable,
      Wrapped<CustomerProfile?>? customerProfile,
      Wrapped<DateTime?>? endValidity,
      Wrapped<DateTime?>? startValidity}) {
    return Promotion(
        promotionAssignmentId: (promotionAssignmentId != null
            ? promotionAssignmentId.value
            : this.promotionAssignmentId),
        promotionId:
            (promotionId != null ? promotionId.value : this.promotionId),
        promotionName:
            (promotionName != null ? promotionName.value : this.promotionName),
        promotionType:
            (promotionType != null ? promotionType.value : this.promotionType),
        promotionValue: (promotionValue != null
            ? promotionValue.value
            : this.promotionValue),
        isCombinable:
            (isCombinable != null ? isCombinable.value : this.isCombinable),
        customerProfile: (customerProfile != null
            ? customerProfile.value
            : this.customerProfile),
        endValidity:
            (endValidity != null ? endValidity.value : this.endValidity),
        startValidity:
            (startValidity != null ? startValidity.value : this.startValidity));
  }
}

@JsonSerializable(explicitToJson: true)
class PromotionType {
  const PromotionType({
    this.promotionType,
    this.promotionTypeDesc,
  });

  factory PromotionType.fromJson(Map<String, dynamic> json) =>
      _$PromotionTypeFromJson(json);

  static const toJsonFactory = _$PromotionTypeToJson;
  Map<String, dynamic> toJson() => _$PromotionTypeToJson(this);

  @JsonKey(
    name: 'promotionType',
    toJson: promotionTypePromotionTypeNullableToJson,
    fromJson: promotionTypePromotionTypeNullableFromJson,
  )
  final enums.PromotionTypePromotionType? promotionType;
  @JsonKey(name: 'promotionTypeDesc')
  final String? promotionTypeDesc;
  static const fromJsonFactory = _$PromotionTypeFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PromotionType &&
            (identical(other.promotionType, promotionType) ||
                const DeepCollectionEquality()
                    .equals(other.promotionType, promotionType)) &&
            (identical(other.promotionTypeDesc, promotionTypeDesc) ||
                const DeepCollectionEquality()
                    .equals(other.promotionTypeDesc, promotionTypeDesc)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(promotionType) ^
      const DeepCollectionEquality().hash(promotionTypeDesc) ^
      runtimeType.hashCode;
}

extension $PromotionTypeExtension on PromotionType {
  PromotionType copyWith(
      {enums.PromotionTypePromotionType? promotionType,
      String? promotionTypeDesc}) {
    return PromotionType(
        promotionType: promotionType ?? this.promotionType,
        promotionTypeDesc: promotionTypeDesc ?? this.promotionTypeDesc);
  }

  PromotionType copyWithWrapped(
      {Wrapped<enums.PromotionTypePromotionType?>? promotionType,
      Wrapped<String?>? promotionTypeDesc}) {
    return PromotionType(
        promotionType:
            (promotionType != null ? promotionType.value : this.promotionType),
        promotionTypeDesc: (promotionTypeDesc != null
            ? promotionTypeDesc.value
            : this.promotionTypeDesc));
  }
}

@JsonSerializable(explicitToJson: true)
class PromotionRef {
  const PromotionRef({
    this.promotionId,
    this.promotionDescription,
  });

  factory PromotionRef.fromJson(Map<String, dynamic> json) =>
      _$PromotionRefFromJson(json);

  static const toJsonFactory = _$PromotionRefToJson;
  Map<String, dynamic> toJson() => _$PromotionRefToJson(this);

  @JsonKey(name: 'promotionId')
  final String? promotionId;
  @JsonKey(name: 'promotionDescription')
  final String? promotionDescription;
  static const fromJsonFactory = _$PromotionRefFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PromotionRef &&
            (identical(other.promotionId, promotionId) ||
                const DeepCollectionEquality()
                    .equals(other.promotionId, promotionId)) &&
            (identical(other.promotionDescription, promotionDescription) ||
                const DeepCollectionEquality()
                    .equals(other.promotionDescription, promotionDescription)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(promotionId) ^
      const DeepCollectionEquality().hash(promotionDescription) ^
      runtimeType.hashCode;
}

extension $PromotionRefExtension on PromotionRef {
  PromotionRef copyWith({String? promotionId, String? promotionDescription}) {
    return PromotionRef(
        promotionId: promotionId ?? this.promotionId,
        promotionDescription:
            promotionDescription ?? this.promotionDescription);
  }

  PromotionRef copyWithWrapped(
      {Wrapped<String?>? promotionId, Wrapped<String?>? promotionDescription}) {
    return PromotionRef(
        promotionId:
            (promotionId != null ? promotionId.value : this.promotionId),
        promotionDescription: (promotionDescription != null
            ? promotionDescription.value
            : this.promotionDescription));
  }
}

@JsonSerializable(explicitToJson: true)
class TouchPoint {
  const TouchPoint({
    this.distributionTouchpointId,
    this.distributionTouchpointName,
    this.codeExternal,
    this.distributionTouchpointType,
  });

  factory TouchPoint.fromJson(Map<String, dynamic> json) =>
      _$TouchPointFromJson(json);

  static const toJsonFactory = _$TouchPointToJson;
  Map<String, dynamic> toJson() => _$TouchPointToJson(this);

  @JsonKey(name: 'distributionTouchpointId')
  final String? distributionTouchpointId;
  @JsonKey(name: 'distributionTouchpointName')
  final String? distributionTouchpointName;
  @JsonKey(name: 'codeExternal')
  final String? codeExternal;
  @JsonKey(
    name: 'distributionTouchpointType',
    toJson: touchPointDistributionTouchpointTypeNullableToJson,
    fromJson: touchPointDistributionTouchpointTypeNullableFromJson,
  )
  final enums.TouchPointDistributionTouchpointType? distributionTouchpointType;
  static const fromJsonFactory = _$TouchPointFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TouchPoint &&
            (identical(
                    other.distributionTouchpointId, distributionTouchpointId) ||
                const DeepCollectionEquality().equals(
                    other.distributionTouchpointId,
                    distributionTouchpointId)) &&
            (identical(other.distributionTouchpointName,
                    distributionTouchpointName) ||
                const DeepCollectionEquality().equals(
                    other.distributionTouchpointName,
                    distributionTouchpointName)) &&
            (identical(other.codeExternal, codeExternal) ||
                const DeepCollectionEquality()
                    .equals(other.codeExternal, codeExternal)) &&
            (identical(other.distributionTouchpointType,
                    distributionTouchpointType) ||
                const DeepCollectionEquality().equals(
                    other.distributionTouchpointType,
                    distributionTouchpointType)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(distributionTouchpointId) ^
      const DeepCollectionEquality().hash(distributionTouchpointName) ^
      const DeepCollectionEquality().hash(codeExternal) ^
      const DeepCollectionEquality().hash(distributionTouchpointType) ^
      runtimeType.hashCode;
}

extension $TouchPointExtension on TouchPoint {
  TouchPoint copyWith(
      {String? distributionTouchpointId,
      String? distributionTouchpointName,
      String? codeExternal,
      enums.TouchPointDistributionTouchpointType? distributionTouchpointType}) {
    return TouchPoint(
        distributionTouchpointId:
            distributionTouchpointId ?? this.distributionTouchpointId,
        distributionTouchpointName:
            distributionTouchpointName ?? this.distributionTouchpointName,
        codeExternal: codeExternal ?? this.codeExternal,
        distributionTouchpointType:
            distributionTouchpointType ?? this.distributionTouchpointType);
  }

  TouchPoint copyWithWrapped(
      {Wrapped<String?>? distributionTouchpointId,
      Wrapped<String?>? distributionTouchpointName,
      Wrapped<String?>? codeExternal,
      Wrapped<enums.TouchPointDistributionTouchpointType?>?
          distributionTouchpointType}) {
    return TouchPoint(
        distributionTouchpointId: (distributionTouchpointId != null
            ? distributionTouchpointId.value
            : this.distributionTouchpointId),
        distributionTouchpointName: (distributionTouchpointName != null
            ? distributionTouchpointName.value
            : this.distributionTouchpointName),
        codeExternal:
            (codeExternal != null ? codeExternal.value : this.codeExternal),
        distributionTouchpointType: (distributionTouchpointType != null
            ? distributionTouchpointType.value
            : this.distributionTouchpointType));
  }
}

@JsonSerializable(explicitToJson: true)
class MediaSet {
  const MediaSet({
    this.mediaTypeRef,
    this.mediaAssignmentId,
    this.endValidity,
    this.startValidity,
  });

  factory MediaSet.fromJson(Map<String, dynamic> json) =>
      _$MediaSetFromJson(json);

  static const toJsonFactory = _$MediaSetToJson;
  Map<String, dynamic> toJson() => _$MediaSetToJson(this);

  @JsonKey(name: 'mediaTypeRef')
  final MediaTypeRef? mediaTypeRef;
  @JsonKey(name: 'mediaAssignmentId')
  final String? mediaAssignmentId;
  @JsonKey(name: 'endValidity', toJson: _dateToJson)
  final DateTime? endValidity;
  @JsonKey(name: 'startValidity', toJson: _dateToJson)
  final DateTime? startValidity;
  static const fromJsonFactory = _$MediaSetFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MediaSet &&
            (identical(other.mediaTypeRef, mediaTypeRef) ||
                const DeepCollectionEquality()
                    .equals(other.mediaTypeRef, mediaTypeRef)) &&
            (identical(other.mediaAssignmentId, mediaAssignmentId) ||
                const DeepCollectionEquality()
                    .equals(other.mediaAssignmentId, mediaAssignmentId)) &&
            (identical(other.endValidity, endValidity) ||
                const DeepCollectionEquality()
                    .equals(other.endValidity, endValidity)) &&
            (identical(other.startValidity, startValidity) ||
                const DeepCollectionEquality()
                    .equals(other.startValidity, startValidity)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(mediaTypeRef) ^
      const DeepCollectionEquality().hash(mediaAssignmentId) ^
      const DeepCollectionEquality().hash(endValidity) ^
      const DeepCollectionEquality().hash(startValidity) ^
      runtimeType.hashCode;
}

extension $MediaSetExtension on MediaSet {
  MediaSet copyWith(
      {MediaTypeRef? mediaTypeRef,
      String? mediaAssignmentId,
      DateTime? endValidity,
      DateTime? startValidity}) {
    return MediaSet(
        mediaTypeRef: mediaTypeRef ?? this.mediaTypeRef,
        mediaAssignmentId: mediaAssignmentId ?? this.mediaAssignmentId,
        endValidity: endValidity ?? this.endValidity,
        startValidity: startValidity ?? this.startValidity);
  }

  MediaSet copyWithWrapped(
      {Wrapped<MediaTypeRef?>? mediaTypeRef,
      Wrapped<String?>? mediaAssignmentId,
      Wrapped<DateTime?>? endValidity,
      Wrapped<DateTime?>? startValidity}) {
    return MediaSet(
        mediaTypeRef:
            (mediaTypeRef != null ? mediaTypeRef.value : this.mediaTypeRef),
        mediaAssignmentId: (mediaAssignmentId != null
            ? mediaAssignmentId.value
            : this.mediaAssignmentId),
        endValidity:
            (endValidity != null ? endValidity.value : this.endValidity),
        startValidity:
            (startValidity != null ? startValidity.value : this.startValidity));
  }
}

@JsonSerializable(explicitToJson: true)
class MediaTypeRef {
  const MediaTypeRef({
    this.mediaType,
    this.descriptionType,
  });

  factory MediaTypeRef.fromJson(Map<String, dynamic> json) =>
      _$MediaTypeRefFromJson(json);

  static const toJsonFactory = _$MediaTypeRefToJson;
  Map<String, dynamic> toJson() => _$MediaTypeRefToJson(this);

  @JsonKey(
    name: 'mediaType',
    toJson: mediaTypeRefMediaTypeNullableToJson,
    fromJson: mediaTypeRefMediaTypeNullableFromJson,
  )
  final enums.MediaTypeRefMediaType? mediaType;
  @JsonKey(name: 'descriptionType')
  final String? descriptionType;
  static const fromJsonFactory = _$MediaTypeRefFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MediaTypeRef &&
            (identical(other.mediaType, mediaType) ||
                const DeepCollectionEquality()
                    .equals(other.mediaType, mediaType)) &&
            (identical(other.descriptionType, descriptionType) ||
                const DeepCollectionEquality()
                    .equals(other.descriptionType, descriptionType)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(mediaType) ^
      const DeepCollectionEquality().hash(descriptionType) ^
      runtimeType.hashCode;
}

extension $MediaTypeRefExtension on MediaTypeRef {
  MediaTypeRef copyWith(
      {enums.MediaTypeRefMediaType? mediaType, String? descriptionType}) {
    return MediaTypeRef(
        mediaType: mediaType ?? this.mediaType,
        descriptionType: descriptionType ?? this.descriptionType);
  }

  MediaTypeRef copyWithWrapped(
      {Wrapped<enums.MediaTypeRefMediaType?>? mediaType,
      Wrapped<String?>? descriptionType}) {
    return MediaTypeRef(
        mediaType: (mediaType != null ? mediaType.value : this.mediaType),
        descriptionType: (descriptionType != null
            ? descriptionType.value
            : this.descriptionType));
  }
}

@JsonSerializable(explicitToJson: true)
class FareTable {
  const FareTable({
    this.cells,
  });

  factory FareTable.fromJson(Map<String, dynamic> json) =>
      _$FareTableFromJson(json);

  static const toJsonFactory = _$FareTableToJson;
  Map<String, dynamic> toJson() => _$FareTableToJson(this);

  @JsonKey(name: 'cells', defaultValue: <Cell>[])
  final List<Cell>? cells;
  static const fromJsonFactory = _$FareTableFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FareTable &&
            (identical(other.cells, cells) ||
                const DeepCollectionEquality().equals(other.cells, cells)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(cells) ^ runtimeType.hashCode;
}

extension $FareTableExtension on FareTable {
  FareTable copyWith({List<Cell>? cells}) {
    return FareTable(cells: cells ?? this.cells);
  }

  FareTable copyWithWrapped({Wrapped<List<Cell>?>? cells}) {
    return FareTable(cells: (cells != null ? cells.value : this.cells));
  }
}

@JsonSerializable(explicitToJson: true)
class Cell {
  const Cell({
    this.cellId,
    this.cellName,
    this.ccyPrice,
    this.farePrice,
    this.points,
    this.priceFor,
  });

  factory Cell.fromJson(Map<String, dynamic> json) => _$CellFromJson(json);

  static const toJsonFactory = _$CellToJson;
  Map<String, dynamic> toJson() => _$CellToJson(this);

  @JsonKey(name: 'cellId')
  final String? cellId;
  @JsonKey(name: 'cellName')
  final String? cellName;
  @JsonKey(name: 'ccyPrice')
  final String? ccyPrice;
  @JsonKey(name: 'farePrice')
  final double? farePrice;
  @JsonKey(name: 'points')
  final int? points;
  @JsonKey(name: 'priceFor')
  final PriceFor? priceFor;
  static const fromJsonFactory = _$CellFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Cell &&
            (identical(other.cellId, cellId) ||
                const DeepCollectionEquality().equals(other.cellId, cellId)) &&
            (identical(other.cellName, cellName) ||
                const DeepCollectionEquality()
                    .equals(other.cellName, cellName)) &&
            (identical(other.ccyPrice, ccyPrice) ||
                const DeepCollectionEquality()
                    .equals(other.ccyPrice, ccyPrice)) &&
            (identical(other.farePrice, farePrice) ||
                const DeepCollectionEquality()
                    .equals(other.farePrice, farePrice)) &&
            (identical(other.points, points) ||
                const DeepCollectionEquality().equals(other.points, points)) &&
            (identical(other.priceFor, priceFor) ||
                const DeepCollectionEquality()
                    .equals(other.priceFor, priceFor)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(cellId) ^
      const DeepCollectionEquality().hash(cellName) ^
      const DeepCollectionEquality().hash(ccyPrice) ^
      const DeepCollectionEquality().hash(farePrice) ^
      const DeepCollectionEquality().hash(points) ^
      const DeepCollectionEquality().hash(priceFor) ^
      runtimeType.hashCode;
}

extension $CellExtension on Cell {
  Cell copyWith(
      {String? cellId,
      String? cellName,
      String? ccyPrice,
      double? farePrice,
      int? points,
      PriceFor? priceFor}) {
    return Cell(
        cellId: cellId ?? this.cellId,
        cellName: cellName ?? this.cellName,
        ccyPrice: ccyPrice ?? this.ccyPrice,
        farePrice: farePrice ?? this.farePrice,
        points: points ?? this.points,
        priceFor: priceFor ?? this.priceFor);
  }

  Cell copyWithWrapped(
      {Wrapped<String?>? cellId,
      Wrapped<String?>? cellName,
      Wrapped<String?>? ccyPrice,
      Wrapped<double?>? farePrice,
      Wrapped<int?>? points,
      Wrapped<PriceFor?>? priceFor}) {
    return Cell(
        cellId: (cellId != null ? cellId.value : this.cellId),
        cellName: (cellName != null ? cellName.value : this.cellName),
        ccyPrice: (ccyPrice != null ? ccyPrice.value : this.ccyPrice),
        farePrice: (farePrice != null ? farePrice.value : this.farePrice),
        points: (points != null ? points.value : this.points),
        priceFor: (priceFor != null ? priceFor.value : this.priceFor));
  }
}

@JsonSerializable(explicitToJson: true)
class PriceFor {
  const PriceFor({
    this.serviceRef,
    this.fareZoneRef,
    this.validityPeriodRef,
    this.customerProfileRef,
    this.distributionTouchPointRef,
    this.geographicalIntervalRef,
    this.distanceMatrixRef,
    this.mediaTypeRef,
    this.temporalValidityRef,
  });

  factory PriceFor.fromJson(Map<String, dynamic> json) =>
      _$PriceForFromJson(json);

  static const toJsonFactory = _$PriceForToJson;
  Map<String, dynamic> toJson() => _$PriceForToJson(this);

  @JsonKey(name: 'serviceRef')
  final ServiceRef? serviceRef;
  @JsonKey(name: 'fareZoneRef')
  final FareZoneRef? fareZoneRef;
  @JsonKey(name: 'validityPeriodRef')
  final ValidityPeriodRef? validityPeriodRef;
  @JsonKey(name: 'customerProfileRef')
  final CustomerProfileRef? customerProfileRef;
  @JsonKey(name: 'distributionTouchPointRef')
  final DistributionTouchPointRef? distributionTouchPointRef;
  @JsonKey(name: 'geographicalIntervalRef')
  final GeographicalIntervalRef? geographicalIntervalRef;
  @JsonKey(name: 'distanceMatrixRef')
  final DistanceMatrixElementRef? distanceMatrixRef;
  @JsonKey(name: 'mediaTypeRef')
  final MediaTypeRef? mediaTypeRef;
  @JsonKey(name: 'temporalValidityRef')
  final TemporalValidityRef? temporalValidityRef;
  static const fromJsonFactory = _$PriceForFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PriceFor &&
            (identical(other.serviceRef, serviceRef) ||
                const DeepCollectionEquality()
                    .equals(other.serviceRef, serviceRef)) &&
            (identical(other.fareZoneRef, fareZoneRef) ||
                const DeepCollectionEquality()
                    .equals(other.fareZoneRef, fareZoneRef)) &&
            (identical(other.validityPeriodRef, validityPeriodRef) ||
                const DeepCollectionEquality()
                    .equals(other.validityPeriodRef, validityPeriodRef)) &&
            (identical(other.customerProfileRef, customerProfileRef) ||
                const DeepCollectionEquality()
                    .equals(other.customerProfileRef, customerProfileRef)) &&
            (identical(other.distributionTouchPointRef,
                    distributionTouchPointRef) ||
                const DeepCollectionEquality().equals(
                    other.distributionTouchPointRef,
                    distributionTouchPointRef)) &&
            (identical(
                    other.geographicalIntervalRef, geographicalIntervalRef) ||
                const DeepCollectionEquality().equals(
                    other.geographicalIntervalRef, geographicalIntervalRef)) &&
            (identical(other.distanceMatrixRef, distanceMatrixRef) ||
                const DeepCollectionEquality()
                    .equals(other.distanceMatrixRef, distanceMatrixRef)) &&
            (identical(other.mediaTypeRef, mediaTypeRef) ||
                const DeepCollectionEquality()
                    .equals(other.mediaTypeRef, mediaTypeRef)) &&
            (identical(other.temporalValidityRef, temporalValidityRef) ||
                const DeepCollectionEquality()
                    .equals(other.temporalValidityRef, temporalValidityRef)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(serviceRef) ^
      const DeepCollectionEquality().hash(fareZoneRef) ^
      const DeepCollectionEquality().hash(validityPeriodRef) ^
      const DeepCollectionEquality().hash(customerProfileRef) ^
      const DeepCollectionEquality().hash(distributionTouchPointRef) ^
      const DeepCollectionEquality().hash(geographicalIntervalRef) ^
      const DeepCollectionEquality().hash(distanceMatrixRef) ^
      const DeepCollectionEquality().hash(mediaTypeRef) ^
      const DeepCollectionEquality().hash(temporalValidityRef) ^
      runtimeType.hashCode;
}

extension $PriceForExtension on PriceFor {
  PriceFor copyWith(
      {ServiceRef? serviceRef,
      FareZoneRef? fareZoneRef,
      ValidityPeriodRef? validityPeriodRef,
      CustomerProfileRef? customerProfileRef,
      DistributionTouchPointRef? distributionTouchPointRef,
      GeographicalIntervalRef? geographicalIntervalRef,
      DistanceMatrixElementRef? distanceMatrixRef,
      MediaTypeRef? mediaTypeRef,
      TemporalValidityRef? temporalValidityRef}) {
    return PriceFor(
        serviceRef: serviceRef ?? this.serviceRef,
        fareZoneRef: fareZoneRef ?? this.fareZoneRef,
        validityPeriodRef: validityPeriodRef ?? this.validityPeriodRef,
        customerProfileRef: customerProfileRef ?? this.customerProfileRef,
        distributionTouchPointRef:
            distributionTouchPointRef ?? this.distributionTouchPointRef,
        geographicalIntervalRef:
            geographicalIntervalRef ?? this.geographicalIntervalRef,
        distanceMatrixRef: distanceMatrixRef ?? this.distanceMatrixRef,
        mediaTypeRef: mediaTypeRef ?? this.mediaTypeRef,
        temporalValidityRef: temporalValidityRef ?? this.temporalValidityRef);
  }

  PriceFor copyWithWrapped(
      {Wrapped<ServiceRef?>? serviceRef,
      Wrapped<FareZoneRef?>? fareZoneRef,
      Wrapped<ValidityPeriodRef?>? validityPeriodRef,
      Wrapped<CustomerProfileRef?>? customerProfileRef,
      Wrapped<DistributionTouchPointRef?>? distributionTouchPointRef,
      Wrapped<GeographicalIntervalRef?>? geographicalIntervalRef,
      Wrapped<DistanceMatrixElementRef?>? distanceMatrixRef,
      Wrapped<MediaTypeRef?>? mediaTypeRef,
      Wrapped<TemporalValidityRef?>? temporalValidityRef}) {
    return PriceFor(
        serviceRef: (serviceRef != null ? serviceRef.value : this.serviceRef),
        fareZoneRef:
            (fareZoneRef != null ? fareZoneRef.value : this.fareZoneRef),
        validityPeriodRef: (validityPeriodRef != null
            ? validityPeriodRef.value
            : this.validityPeriodRef),
        customerProfileRef: (customerProfileRef != null
            ? customerProfileRef.value
            : this.customerProfileRef),
        distributionTouchPointRef: (distributionTouchPointRef != null
            ? distributionTouchPointRef.value
            : this.distributionTouchPointRef),
        geographicalIntervalRef: (geographicalIntervalRef != null
            ? geographicalIntervalRef.value
            : this.geographicalIntervalRef),
        distanceMatrixRef: (distanceMatrixRef != null
            ? distanceMatrixRef.value
            : this.distanceMatrixRef),
        mediaTypeRef:
            (mediaTypeRef != null ? mediaTypeRef.value : this.mediaTypeRef),
        temporalValidityRef: (temporalValidityRef != null
            ? temporalValidityRef.value
            : this.temporalValidityRef));
  }
}

@JsonSerializable(explicitToJson: true)
class FareZoneRef {
  const FareZoneRef({
    this.fareZoneId,
    this.fareZoneName,
  });

  factory FareZoneRef.fromJson(Map<String, dynamic> json) =>
      _$FareZoneRefFromJson(json);

  static const toJsonFactory = _$FareZoneRefToJson;
  Map<String, dynamic> toJson() => _$FareZoneRefToJson(this);

  @JsonKey(name: 'fareZoneId')
  final String? fareZoneId;
  @JsonKey(name: 'fareZoneName')
  final String? fareZoneName;
  static const fromJsonFactory = _$FareZoneRefFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FareZoneRef &&
            (identical(other.fareZoneId, fareZoneId) ||
                const DeepCollectionEquality()
                    .equals(other.fareZoneId, fareZoneId)) &&
            (identical(other.fareZoneName, fareZoneName) ||
                const DeepCollectionEquality()
                    .equals(other.fareZoneName, fareZoneName)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(fareZoneId) ^
      const DeepCollectionEquality().hash(fareZoneName) ^
      runtimeType.hashCode;
}

extension $FareZoneRefExtension on FareZoneRef {
  FareZoneRef copyWith({String? fareZoneId, String? fareZoneName}) {
    return FareZoneRef(
        fareZoneId: fareZoneId ?? this.fareZoneId,
        fareZoneName: fareZoneName ?? this.fareZoneName);
  }

  FareZoneRef copyWithWrapped(
      {Wrapped<String?>? fareZoneId, Wrapped<String?>? fareZoneName}) {
    return FareZoneRef(
        fareZoneId: (fareZoneId != null ? fareZoneId.value : this.fareZoneId),
        fareZoneName:
            (fareZoneName != null ? fareZoneName.value : this.fareZoneName));
  }
}

@JsonSerializable(explicitToJson: true)
class ValidityPeriodRef {
  const ValidityPeriodRef({
    this.validityPeriodId,
    this.validityPeriodName,
  });

  factory ValidityPeriodRef.fromJson(Map<String, dynamic> json) =>
      _$ValidityPeriodRefFromJson(json);

  static const toJsonFactory = _$ValidityPeriodRefToJson;
  Map<String, dynamic> toJson() => _$ValidityPeriodRefToJson(this);

  @JsonKey(name: 'validityPeriodId')
  final String? validityPeriodId;
  @JsonKey(name: 'validityPeriodName')
  final String? validityPeriodName;
  static const fromJsonFactory = _$ValidityPeriodRefFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ValidityPeriodRef &&
            (identical(other.validityPeriodId, validityPeriodId) ||
                const DeepCollectionEquality()
                    .equals(other.validityPeriodId, validityPeriodId)) &&
            (identical(other.validityPeriodName, validityPeriodName) ||
                const DeepCollectionEquality()
                    .equals(other.validityPeriodName, validityPeriodName)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(validityPeriodId) ^
      const DeepCollectionEquality().hash(validityPeriodName) ^
      runtimeType.hashCode;
}

extension $ValidityPeriodRefExtension on ValidityPeriodRef {
  ValidityPeriodRef copyWith(
      {String? validityPeriodId, String? validityPeriodName}) {
    return ValidityPeriodRef(
        validityPeriodId: validityPeriodId ?? this.validityPeriodId,
        validityPeriodName: validityPeriodName ?? this.validityPeriodName);
  }

  ValidityPeriodRef copyWithWrapped(
      {Wrapped<String?>? validityPeriodId,
      Wrapped<String?>? validityPeriodName}) {
    return ValidityPeriodRef(
        validityPeriodId: (validityPeriodId != null
            ? validityPeriodId.value
            : this.validityPeriodId),
        validityPeriodName: (validityPeriodName != null
            ? validityPeriodName.value
            : this.validityPeriodName));
  }
}

@JsonSerializable(explicitToJson: true)
class CustomerProfileRef {
  const CustomerProfileRef({
    this.customerProfileId,
    this.customerProfileName,
  });

  factory CustomerProfileRef.fromJson(Map<String, dynamic> json) =>
      _$CustomerProfileRefFromJson(json);

  static const toJsonFactory = _$CustomerProfileRefToJson;
  Map<String, dynamic> toJson() => _$CustomerProfileRefToJson(this);

  @JsonKey(name: 'customerProfileId')
  final String? customerProfileId;
  @JsonKey(name: 'customerProfileName')
  final String? customerProfileName;
  static const fromJsonFactory = _$CustomerProfileRefFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CustomerProfileRef &&
            (identical(other.customerProfileId, customerProfileId) ||
                const DeepCollectionEquality()
                    .equals(other.customerProfileId, customerProfileId)) &&
            (identical(other.customerProfileName, customerProfileName) ||
                const DeepCollectionEquality()
                    .equals(other.customerProfileName, customerProfileName)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(customerProfileId) ^
      const DeepCollectionEquality().hash(customerProfileName) ^
      runtimeType.hashCode;
}

extension $CustomerProfileRefExtension on CustomerProfileRef {
  CustomerProfileRef copyWith(
      {String? customerProfileId, String? customerProfileName}) {
    return CustomerProfileRef(
        customerProfileId: customerProfileId ?? this.customerProfileId,
        customerProfileName: customerProfileName ?? this.customerProfileName);
  }

  CustomerProfileRef copyWithWrapped(
      {Wrapped<String?>? customerProfileId,
      Wrapped<String?>? customerProfileName}) {
    return CustomerProfileRef(
        customerProfileId: (customerProfileId != null
            ? customerProfileId.value
            : this.customerProfileId),
        customerProfileName: (customerProfileName != null
            ? customerProfileName.value
            : this.customerProfileName));
  }
}

@JsonSerializable(explicitToJson: true)
class DistributionTouchPointRef {
  const DistributionTouchPointRef({
    this.distributionTouchpointId,
    this.distributionTouchpointName,
    this.distributionTouchpointType,
  });

  factory DistributionTouchPointRef.fromJson(Map<String, dynamic> json) =>
      _$DistributionTouchPointRefFromJson(json);

  static const toJsonFactory = _$DistributionTouchPointRefToJson;
  Map<String, dynamic> toJson() => _$DistributionTouchPointRefToJson(this);

  @JsonKey(name: 'distributionTouchpointId')
  final String? distributionTouchpointId;
  @JsonKey(name: 'distributionTouchpointName')
  final String? distributionTouchpointName;
  @JsonKey(name: 'distributionTouchpointType')
  final String? distributionTouchpointType;
  static const fromJsonFactory = _$DistributionTouchPointRefFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DistributionTouchPointRef &&
            (identical(
                    other.distributionTouchpointId, distributionTouchpointId) ||
                const DeepCollectionEquality().equals(
                    other.distributionTouchpointId,
                    distributionTouchpointId)) &&
            (identical(other.distributionTouchpointName,
                    distributionTouchpointName) ||
                const DeepCollectionEquality().equals(
                    other.distributionTouchpointName,
                    distributionTouchpointName)) &&
            (identical(other.distributionTouchpointType,
                    distributionTouchpointType) ||
                const DeepCollectionEquality().equals(
                    other.distributionTouchpointType,
                    distributionTouchpointType)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(distributionTouchpointId) ^
      const DeepCollectionEquality().hash(distributionTouchpointName) ^
      const DeepCollectionEquality().hash(distributionTouchpointType) ^
      runtimeType.hashCode;
}

extension $DistributionTouchPointRefExtension on DistributionTouchPointRef {
  DistributionTouchPointRef copyWith(
      {String? distributionTouchpointId,
      String? distributionTouchpointName,
      String? distributionTouchpointType}) {
    return DistributionTouchPointRef(
        distributionTouchpointId:
            distributionTouchpointId ?? this.distributionTouchpointId,
        distributionTouchpointName:
            distributionTouchpointName ?? this.distributionTouchpointName,
        distributionTouchpointType:
            distributionTouchpointType ?? this.distributionTouchpointType);
  }

  DistributionTouchPointRef copyWithWrapped(
      {Wrapped<String?>? distributionTouchpointId,
      Wrapped<String?>? distributionTouchpointName,
      Wrapped<String?>? distributionTouchpointType}) {
    return DistributionTouchPointRef(
        distributionTouchpointId: (distributionTouchpointId != null
            ? distributionTouchpointId.value
            : this.distributionTouchpointId),
        distributionTouchpointName: (distributionTouchpointName != null
            ? distributionTouchpointName.value
            : this.distributionTouchpointName),
        distributionTouchpointType: (distributionTouchpointType != null
            ? distributionTouchpointType.value
            : this.distributionTouchpointType));
  }
}

@JsonSerializable(explicitToJson: true)
class GeographicalIntervalRef {
  const GeographicalIntervalRef({
    this.geographicalId,
    this.geographicalName,
  });

  factory GeographicalIntervalRef.fromJson(Map<String, dynamic> json) =>
      _$GeographicalIntervalRefFromJson(json);

  static const toJsonFactory = _$GeographicalIntervalRefToJson;
  Map<String, dynamic> toJson() => _$GeographicalIntervalRefToJson(this);

  @JsonKey(name: 'geographicalId')
  final String? geographicalId;
  @JsonKey(name: 'geographicalName')
  final String? geographicalName;
  static const fromJsonFactory = _$GeographicalIntervalRefFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GeographicalIntervalRef &&
            (identical(other.geographicalId, geographicalId) ||
                const DeepCollectionEquality()
                    .equals(other.geographicalId, geographicalId)) &&
            (identical(other.geographicalName, geographicalName) ||
                const DeepCollectionEquality()
                    .equals(other.geographicalName, geographicalName)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(geographicalId) ^
      const DeepCollectionEquality().hash(geographicalName) ^
      runtimeType.hashCode;
}

extension $GeographicalIntervalRefExtension on GeographicalIntervalRef {
  GeographicalIntervalRef copyWith(
      {String? geographicalId, String? geographicalName}) {
    return GeographicalIntervalRef(
        geographicalId: geographicalId ?? this.geographicalId,
        geographicalName: geographicalName ?? this.geographicalName);
  }

  GeographicalIntervalRef copyWithWrapped(
      {Wrapped<String?>? geographicalId, Wrapped<String?>? geographicalName}) {
    return GeographicalIntervalRef(
        geographicalId: (geographicalId != null
            ? geographicalId.value
            : this.geographicalId),
        geographicalName: (geographicalName != null
            ? geographicalName.value
            : this.geographicalName));
  }
}

@JsonSerializable(explicitToJson: true)
class OrganisationRef {
  const OrganisationRef({
    this.id,
    this.name,
  });

  factory OrganisationRef.fromJson(Map<String, dynamic> json) =>
      _$OrganisationRefFromJson(json);

  static const toJsonFactory = _$OrganisationRefToJson;
  Map<String, dynamic> toJson() => _$OrganisationRefToJson(this);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$OrganisationRefFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrganisationRef &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $OrganisationRefExtension on OrganisationRef {
  OrganisationRef copyWith({String? id, String? name}) {
    return OrganisationRef(id: id ?? this.id, name: name ?? this.name);
  }

  OrganisationRef copyWithWrapped(
      {Wrapped<String?>? id, Wrapped<String?>? name}) {
    return OrganisationRef(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class DistanceMatrixElementRef {
  const DistanceMatrixElementRef({
    this.distanceMatrixElementId,
    this.distanceMatrixElementName,
  });

  factory DistanceMatrixElementRef.fromJson(Map<String, dynamic> json) =>
      _$DistanceMatrixElementRefFromJson(json);

  static const toJsonFactory = _$DistanceMatrixElementRefToJson;
  Map<String, dynamic> toJson() => _$DistanceMatrixElementRefToJson(this);

  @JsonKey(name: 'distanceMatrixElementId')
  final String? distanceMatrixElementId;
  @JsonKey(name: 'distanceMatrixElementName')
  final String? distanceMatrixElementName;
  static const fromJsonFactory = _$DistanceMatrixElementRefFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DistanceMatrixElementRef &&
            (identical(
                    other.distanceMatrixElementId, distanceMatrixElementId) ||
                const DeepCollectionEquality().equals(
                    other.distanceMatrixElementId, distanceMatrixElementId)) &&
            (identical(other.distanceMatrixElementName,
                    distanceMatrixElementName) ||
                const DeepCollectionEquality().equals(
                    other.distanceMatrixElementName,
                    distanceMatrixElementName)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(distanceMatrixElementId) ^
      const DeepCollectionEquality().hash(distanceMatrixElementName) ^
      runtimeType.hashCode;
}

extension $DistanceMatrixElementRefExtension on DistanceMatrixElementRef {
  DistanceMatrixElementRef copyWith(
      {String? distanceMatrixElementId, String? distanceMatrixElementName}) {
    return DistanceMatrixElementRef(
        distanceMatrixElementId:
            distanceMatrixElementId ?? this.distanceMatrixElementId,
        distanceMatrixElementName:
            distanceMatrixElementName ?? this.distanceMatrixElementName);
  }

  DistanceMatrixElementRef copyWithWrapped(
      {Wrapped<String?>? distanceMatrixElementId,
      Wrapped<String?>? distanceMatrixElementName}) {
    return DistanceMatrixElementRef(
        distanceMatrixElementId: (distanceMatrixElementId != null
            ? distanceMatrixElementId.value
            : this.distanceMatrixElementId),
        distanceMatrixElementName: (distanceMatrixElementName != null
            ? distanceMatrixElementName.value
            : this.distanceMatrixElementName));
  }
}

@JsonSerializable(explicitToJson: true)
class TemporalValidityRef {
  const TemporalValidityRef({
    this.temporalValidityId,
    this.temporalValidityName,
  });

  factory TemporalValidityRef.fromJson(Map<String, dynamic> json) =>
      _$TemporalValidityRefFromJson(json);

  static const toJsonFactory = _$TemporalValidityRefToJson;
  Map<String, dynamic> toJson() => _$TemporalValidityRefToJson(this);

  @JsonKey(name: 'temporalValidityId')
  final String? temporalValidityId;
  @JsonKey(name: 'temporalValidityName')
  final String? temporalValidityName;
  static const fromJsonFactory = _$TemporalValidityRefFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TemporalValidityRef &&
            (identical(other.temporalValidityId, temporalValidityId) ||
                const DeepCollectionEquality()
                    .equals(other.temporalValidityId, temporalValidityId)) &&
            (identical(other.temporalValidityName, temporalValidityName) ||
                const DeepCollectionEquality()
                    .equals(other.temporalValidityName, temporalValidityName)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(temporalValidityId) ^
      const DeepCollectionEquality().hash(temporalValidityName) ^
      runtimeType.hashCode;
}

extension $TemporalValidityRefExtension on TemporalValidityRef {
  TemporalValidityRef copyWith(
      {String? temporalValidityId, String? temporalValidityName}) {
    return TemporalValidityRef(
        temporalValidityId: temporalValidityId ?? this.temporalValidityId,
        temporalValidityName:
            temporalValidityName ?? this.temporalValidityName);
  }

  TemporalValidityRef copyWithWrapped(
      {Wrapped<String?>? temporalValidityId,
      Wrapped<String?>? temporalValidityName}) {
    return TemporalValidityRef(
        temporalValidityId: (temporalValidityId != null
            ? temporalValidityId.value
            : this.temporalValidityId),
        temporalValidityName: (temporalValidityName != null
            ? temporalValidityName.value
            : this.temporalValidityName));
  }
}

@JsonSerializable(explicitToJson: true)
class SalesPackage {
  const SalesPackage({
    this.salesPackageId,
    this.salesPackageVersion,
    this.salesPackageName,
    this.salesPackageType,
    this.salesPackageTypeDesc,
    this.salesPackageStartValidity,
    this.salesPackageEndValidity,
    this.customerNumber,
    this.deadline,
    this.advanceSale,
    this.sellers,
    this.codeExternal,
    this.points,
    this.salesPackagePrice,
    this.ccyPrice,
    this.usageParameter,
    this.distributionTouchPoints,
    this.promotions,
    this.mediaSet,
    this.fareProducts,
    this.genericProducts,
    this.fareFrame,
  });

  factory SalesPackage.fromJson(Map<String, dynamic> json) =>
      _$SalesPackageFromJson(json);

  static const toJsonFactory = _$SalesPackageToJson;
  Map<String, dynamic> toJson() => _$SalesPackageToJson(this);

  @JsonKey(name: 'salesPackageId')
  final String? salesPackageId;
  @JsonKey(name: 'salesPackageVersion')
  final int? salesPackageVersion;
  @JsonKey(name: 'salesPackageName')
  final String? salesPackageName;
  @JsonKey(name: 'salesPackageType')
  final String? salesPackageType;
  @JsonKey(name: 'salesPackageTypeDesc')
  final String? salesPackageTypeDesc;
  @JsonKey(name: 'salesPackageStartValidity', toJson: _dateToJson)
  final DateTime? salesPackageStartValidity;
  @JsonKey(name: 'salesPackageEndValidity', toJson: _dateToJson)
  final DateTime? salesPackageEndValidity;
  @JsonKey(name: 'customerNumber')
  final int? customerNumber;
  @JsonKey(name: 'deadline')
  final int? deadline;
  @JsonKey(name: 'advanceSale')
  final int? advanceSale;
  @JsonKey(name: 'sellers', defaultValue: <OrganisationRef>[])
  final List<OrganisationRef>? sellers;
  @JsonKey(name: 'codeExternal')
  final String? codeExternal;
  @JsonKey(name: 'points')
  final int? points;
  @JsonKey(name: 'salesPackagePrice')
  final double? salesPackagePrice;
  @JsonKey(name: 'ccyPrice')
  final String? ccyPrice;
  @JsonKey(name: 'usageParameter')
  final SalesPackage$UsageParameter? usageParameter;
  @JsonKey(
      name: 'distributionTouchPoints', defaultValue: <DistributionTouchPoint>[])
  final List<DistributionTouchPoint>? distributionTouchPoints;
  @JsonKey(name: 'promotions', defaultValue: <Promotion>[])
  final List<Promotion>? promotions;
  @JsonKey(name: 'mediaSet', defaultValue: <MediaSet>[])
  final List<MediaSet>? mediaSet;
  @JsonKey(name: 'fareProducts', defaultValue: <LinkedFareProduct>[])
  final List<LinkedFareProduct>? fareProducts;
  @JsonKey(name: 'genericProducts', defaultValue: <LinkedGenericProduct>[])
  final List<LinkedGenericProduct>? genericProducts;
  @JsonKey(name: 'fareFrame')
  final FareFrame? fareFrame;
  static const fromJsonFactory = _$SalesPackageFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SalesPackage &&
            (identical(other.salesPackageId, salesPackageId) ||
                const DeepCollectionEquality()
                    .equals(other.salesPackageId, salesPackageId)) &&
            (identical(other.salesPackageVersion, salesPackageVersion) ||
                const DeepCollectionEquality()
                    .equals(other.salesPackageVersion, salesPackageVersion)) &&
            (identical(other.salesPackageName, salesPackageName) ||
                const DeepCollectionEquality()
                    .equals(other.salesPackageName, salesPackageName)) &&
            (identical(other.salesPackageType, salesPackageType) ||
                const DeepCollectionEquality()
                    .equals(other.salesPackageType, salesPackageType)) &&
            (identical(other.salesPackageTypeDesc, salesPackageTypeDesc) ||
                const DeepCollectionEquality().equals(
                    other.salesPackageTypeDesc, salesPackageTypeDesc)) &&
            (identical(other.salesPackageStartValidity, salesPackageStartValidity) ||
                const DeepCollectionEquality().equals(
                    other.salesPackageStartValidity,
                    salesPackageStartValidity)) &&
            (identical(other.salesPackageEndValidity, salesPackageEndValidity) ||
                const DeepCollectionEquality().equals(
                    other.salesPackageEndValidity, salesPackageEndValidity)) &&
            (identical(other.customerNumber, customerNumber) ||
                const DeepCollectionEquality()
                    .equals(other.customerNumber, customerNumber)) &&
            (identical(other.deadline, deadline) ||
                const DeepCollectionEquality()
                    .equals(other.deadline, deadline)) &&
            (identical(other.advanceSale, advanceSale) ||
                const DeepCollectionEquality()
                    .equals(other.advanceSale, advanceSale)) &&
            (identical(other.sellers, sellers) ||
                const DeepCollectionEquality()
                    .equals(other.sellers, sellers)) &&
            (identical(other.codeExternal, codeExternal) ||
                const DeepCollectionEquality()
                    .equals(other.codeExternal, codeExternal)) &&
            (identical(other.points, points) ||
                const DeepCollectionEquality().equals(other.points, points)) &&
            (identical(other.salesPackagePrice, salesPackagePrice) ||
                const DeepCollectionEquality()
                    .equals(other.salesPackagePrice, salesPackagePrice)) &&
            (identical(other.ccyPrice, ccyPrice) ||
                const DeepCollectionEquality()
                    .equals(other.ccyPrice, ccyPrice)) &&
            (identical(other.usageParameter, usageParameter) ||
                const DeepCollectionEquality().equals(other.usageParameter, usageParameter)) &&
            (identical(other.distributionTouchPoints, distributionTouchPoints) || const DeepCollectionEquality().equals(other.distributionTouchPoints, distributionTouchPoints)) &&
            (identical(other.promotions, promotions) || const DeepCollectionEquality().equals(other.promotions, promotions)) &&
            (identical(other.mediaSet, mediaSet) || const DeepCollectionEquality().equals(other.mediaSet, mediaSet)) &&
            (identical(other.fareProducts, fareProducts) || const DeepCollectionEquality().equals(other.fareProducts, fareProducts)) &&
            (identical(other.genericProducts, genericProducts) || const DeepCollectionEquality().equals(other.genericProducts, genericProducts)) &&
            (identical(other.fareFrame, fareFrame) || const DeepCollectionEquality().equals(other.fareFrame, fareFrame)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(salesPackageId) ^
      const DeepCollectionEquality().hash(salesPackageVersion) ^
      const DeepCollectionEquality().hash(salesPackageName) ^
      const DeepCollectionEquality().hash(salesPackageType) ^
      const DeepCollectionEquality().hash(salesPackageTypeDesc) ^
      const DeepCollectionEquality().hash(salesPackageStartValidity) ^
      const DeepCollectionEquality().hash(salesPackageEndValidity) ^
      const DeepCollectionEquality().hash(customerNumber) ^
      const DeepCollectionEquality().hash(deadline) ^
      const DeepCollectionEquality().hash(advanceSale) ^
      const DeepCollectionEquality().hash(sellers) ^
      const DeepCollectionEquality().hash(codeExternal) ^
      const DeepCollectionEquality().hash(points) ^
      const DeepCollectionEquality().hash(salesPackagePrice) ^
      const DeepCollectionEquality().hash(ccyPrice) ^
      const DeepCollectionEquality().hash(usageParameter) ^
      const DeepCollectionEquality().hash(distributionTouchPoints) ^
      const DeepCollectionEquality().hash(promotions) ^
      const DeepCollectionEquality().hash(mediaSet) ^
      const DeepCollectionEquality().hash(fareProducts) ^
      const DeepCollectionEquality().hash(genericProducts) ^
      const DeepCollectionEquality().hash(fareFrame) ^
      runtimeType.hashCode;
}

extension $SalesPackageExtension on SalesPackage {
  SalesPackage copyWith(
      {String? salesPackageId,
      int? salesPackageVersion,
      String? salesPackageName,
      String? salesPackageType,
      String? salesPackageTypeDesc,
      DateTime? salesPackageStartValidity,
      DateTime? salesPackageEndValidity,
      int? customerNumber,
      int? deadline,
      int? advanceSale,
      List<OrganisationRef>? sellers,
      String? codeExternal,
      int? points,
      double? salesPackagePrice,
      String? ccyPrice,
      SalesPackage$UsageParameter? usageParameter,
      List<DistributionTouchPoint>? distributionTouchPoints,
      List<Promotion>? promotions,
      List<MediaSet>? mediaSet,
      List<LinkedFareProduct>? fareProducts,
      List<LinkedGenericProduct>? genericProducts,
      FareFrame? fareFrame}) {
    return SalesPackage(
        salesPackageId: salesPackageId ?? this.salesPackageId,
        salesPackageVersion: salesPackageVersion ?? this.salesPackageVersion,
        salesPackageName: salesPackageName ?? this.salesPackageName,
        salesPackageType: salesPackageType ?? this.salesPackageType,
        salesPackageTypeDesc: salesPackageTypeDesc ?? this.salesPackageTypeDesc,
        salesPackageStartValidity:
            salesPackageStartValidity ?? this.salesPackageStartValidity,
        salesPackageEndValidity:
            salesPackageEndValidity ?? this.salesPackageEndValidity,
        customerNumber: customerNumber ?? this.customerNumber,
        deadline: deadline ?? this.deadline,
        advanceSale: advanceSale ?? this.advanceSale,
        sellers: sellers ?? this.sellers,
        codeExternal: codeExternal ?? this.codeExternal,
        points: points ?? this.points,
        salesPackagePrice: salesPackagePrice ?? this.salesPackagePrice,
        ccyPrice: ccyPrice ?? this.ccyPrice,
        usageParameter: usageParameter ?? this.usageParameter,
        distributionTouchPoints:
            distributionTouchPoints ?? this.distributionTouchPoints,
        promotions: promotions ?? this.promotions,
        mediaSet: mediaSet ?? this.mediaSet,
        fareProducts: fareProducts ?? this.fareProducts,
        genericProducts: genericProducts ?? this.genericProducts,
        fareFrame: fareFrame ?? this.fareFrame);
  }

  SalesPackage copyWithWrapped(
      {Wrapped<String?>? salesPackageId,
      Wrapped<int?>? salesPackageVersion,
      Wrapped<String?>? salesPackageName,
      Wrapped<String?>? salesPackageType,
      Wrapped<String?>? salesPackageTypeDesc,
      Wrapped<DateTime?>? salesPackageStartValidity,
      Wrapped<DateTime?>? salesPackageEndValidity,
      Wrapped<int?>? customerNumber,
      Wrapped<int?>? deadline,
      Wrapped<int?>? advanceSale,
      Wrapped<List<OrganisationRef>?>? sellers,
      Wrapped<String?>? codeExternal,
      Wrapped<int?>? points,
      Wrapped<double?>? salesPackagePrice,
      Wrapped<String?>? ccyPrice,
      Wrapped<SalesPackage$UsageParameter?>? usageParameter,
      Wrapped<List<DistributionTouchPoint>?>? distributionTouchPoints,
      Wrapped<List<Promotion>?>? promotions,
      Wrapped<List<MediaSet>?>? mediaSet,
      Wrapped<List<LinkedFareProduct>?>? fareProducts,
      Wrapped<List<LinkedGenericProduct>?>? genericProducts,
      Wrapped<FareFrame?>? fareFrame}) {
    return SalesPackage(
        salesPackageId: (salesPackageId != null
            ? salesPackageId.value
            : this.salesPackageId),
        salesPackageVersion: (salesPackageVersion != null
            ? salesPackageVersion.value
            : this.salesPackageVersion),
        salesPackageName: (salesPackageName != null
            ? salesPackageName.value
            : this.salesPackageName),
        salesPackageType: (salesPackageType != null
            ? salesPackageType.value
            : this.salesPackageType),
        salesPackageTypeDesc: (salesPackageTypeDesc != null
            ? salesPackageTypeDesc.value
            : this.salesPackageTypeDesc),
        salesPackageStartValidity: (salesPackageStartValidity != null
            ? salesPackageStartValidity.value
            : this.salesPackageStartValidity),
        salesPackageEndValidity: (salesPackageEndValidity != null
            ? salesPackageEndValidity.value
            : this.salesPackageEndValidity),
        customerNumber: (customerNumber != null
            ? customerNumber.value
            : this.customerNumber),
        deadline: (deadline != null ? deadline.value : this.deadline),
        advanceSale:
            (advanceSale != null ? advanceSale.value : this.advanceSale),
        sellers: (sellers != null ? sellers.value : this.sellers),
        codeExternal:
            (codeExternal != null ? codeExternal.value : this.codeExternal),
        points: (points != null ? points.value : this.points),
        salesPackagePrice: (salesPackagePrice != null
            ? salesPackagePrice.value
            : this.salesPackagePrice),
        ccyPrice: (ccyPrice != null ? ccyPrice.value : this.ccyPrice),
        usageParameter: (usageParameter != null
            ? usageParameter.value
            : this.usageParameter),
        distributionTouchPoints: (distributionTouchPoints != null
            ? distributionTouchPoints.value
            : this.distributionTouchPoints),
        promotions: (promotions != null ? promotions.value : this.promotions),
        mediaSet: (mediaSet != null ? mediaSet.value : this.mediaSet),
        fareProducts:
            (fareProducts != null ? fareProducts.value : this.fareProducts),
        genericProducts: (genericProducts != null
            ? genericProducts.value
            : this.genericProducts),
        fareFrame: (fareFrame != null ? fareFrame.value : this.fareFrame));
  }
}

@JsonSerializable(explicitToJson: true)
class LinkedGenericProduct {
  const LinkedGenericProduct({
    this.genericProduct,
    this.quantity,
  });

  factory LinkedGenericProduct.fromJson(Map<String, dynamic> json) =>
      _$LinkedGenericProductFromJson(json);

  static const toJsonFactory = _$LinkedGenericProductToJson;
  Map<String, dynamic> toJson() => _$LinkedGenericProductToJson(this);

  @JsonKey(name: 'genericProduct')
  final GenericProduct? genericProduct;
  @JsonKey(name: 'quantity')
  final int? quantity;
  static const fromJsonFactory = _$LinkedGenericProductFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LinkedGenericProduct &&
            (identical(other.genericProduct, genericProduct) ||
                const DeepCollectionEquality()
                    .equals(other.genericProduct, genericProduct)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(genericProduct) ^
      const DeepCollectionEquality().hash(quantity) ^
      runtimeType.hashCode;
}

extension $LinkedGenericProductExtension on LinkedGenericProduct {
  LinkedGenericProduct copyWith(
      {GenericProduct? genericProduct, int? quantity}) {
    return LinkedGenericProduct(
        genericProduct: genericProduct ?? this.genericProduct,
        quantity: quantity ?? this.quantity);
  }

  LinkedGenericProduct copyWithWrapped(
      {Wrapped<GenericProduct?>? genericProduct, Wrapped<int?>? quantity}) {
    return LinkedGenericProduct(
        genericProduct: (genericProduct != null
            ? genericProduct.value
            : this.genericProduct),
        quantity: (quantity != null ? quantity.value : this.quantity));
  }
}

@JsonSerializable(explicitToJson: true)
class LinkedFareProduct {
  const LinkedFareProduct({
    this.fareProduct,
    this.quantity,
  });

  factory LinkedFareProduct.fromJson(Map<String, dynamic> json) =>
      _$LinkedFareProductFromJson(json);

  static const toJsonFactory = _$LinkedFareProductToJson;
  Map<String, dynamic> toJson() => _$LinkedFareProductToJson(this);

  @JsonKey(name: 'fareProduct')
  final Product? fareProduct;
  @JsonKey(name: 'quantity')
  final int? quantity;
  static const fromJsonFactory = _$LinkedFareProductFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LinkedFareProduct &&
            (identical(other.fareProduct, fareProduct) ||
                const DeepCollectionEquality()
                    .equals(other.fareProduct, fareProduct)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(fareProduct) ^
      const DeepCollectionEquality().hash(quantity) ^
      runtimeType.hashCode;
}

extension $LinkedFareProductExtension on LinkedFareProduct {
  LinkedFareProduct copyWith({Product? fareProduct, int? quantity}) {
    return LinkedFareProduct(
        fareProduct: fareProduct ?? this.fareProduct,
        quantity: quantity ?? this.quantity);
  }

  LinkedFareProduct copyWithWrapped(
      {Wrapped<Product?>? fareProduct, Wrapped<int?>? quantity}) {
    return LinkedFareProduct(
        fareProduct:
            (fareProduct != null ? fareProduct.value : this.fareProduct),
        quantity: (quantity != null ? quantity.value : this.quantity));
  }
}

@JsonSerializable(explicitToJson: true)
class GenericProduct {
  const GenericProduct({
    this.id,
    this.name,
    this.shortName,
    this.type,
    this.typeDesc,
    this.startValidity,
    this.endValidity,
    this.codeExternal,
    this.ccyPrice,
    this.price,
  });

  factory GenericProduct.fromJson(Map<String, dynamic> json) =>
      _$GenericProductFromJson(json);

  static const toJsonFactory = _$GenericProductToJson;
  Map<String, dynamic> toJson() => _$GenericProductToJson(this);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'shortName')
  final String? shortName;
  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'typeDesc')
  final String? typeDesc;
  @JsonKey(name: 'startValidity', toJson: _dateToJson)
  final DateTime? startValidity;
  @JsonKey(name: 'endValidity', toJson: _dateToJson)
  final DateTime? endValidity;
  @JsonKey(name: 'codeExternal')
  final String? codeExternal;
  @JsonKey(name: 'ccyPrice')
  final String? ccyPrice;
  @JsonKey(name: 'price')
  final double? price;
  static const fromJsonFactory = _$GenericProductFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GenericProduct &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.shortName, shortName) ||
                const DeepCollectionEquality()
                    .equals(other.shortName, shortName)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.typeDesc, typeDesc) ||
                const DeepCollectionEquality()
                    .equals(other.typeDesc, typeDesc)) &&
            (identical(other.startValidity, startValidity) ||
                const DeepCollectionEquality()
                    .equals(other.startValidity, startValidity)) &&
            (identical(other.endValidity, endValidity) ||
                const DeepCollectionEquality()
                    .equals(other.endValidity, endValidity)) &&
            (identical(other.codeExternal, codeExternal) ||
                const DeepCollectionEquality()
                    .equals(other.codeExternal, codeExternal)) &&
            (identical(other.ccyPrice, ccyPrice) ||
                const DeepCollectionEquality()
                    .equals(other.ccyPrice, ccyPrice)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(shortName) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(typeDesc) ^
      const DeepCollectionEquality().hash(startValidity) ^
      const DeepCollectionEquality().hash(endValidity) ^
      const DeepCollectionEquality().hash(codeExternal) ^
      const DeepCollectionEquality().hash(ccyPrice) ^
      const DeepCollectionEquality().hash(price) ^
      runtimeType.hashCode;
}

extension $GenericProductExtension on GenericProduct {
  GenericProduct copyWith(
      {String? id,
      String? name,
      String? shortName,
      String? type,
      String? typeDesc,
      DateTime? startValidity,
      DateTime? endValidity,
      String? codeExternal,
      String? ccyPrice,
      double? price}) {
    return GenericProduct(
        id: id ?? this.id,
        name: name ?? this.name,
        shortName: shortName ?? this.shortName,
        type: type ?? this.type,
        typeDesc: typeDesc ?? this.typeDesc,
        startValidity: startValidity ?? this.startValidity,
        endValidity: endValidity ?? this.endValidity,
        codeExternal: codeExternal ?? this.codeExternal,
        ccyPrice: ccyPrice ?? this.ccyPrice,
        price: price ?? this.price);
  }

  GenericProduct copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? name,
      Wrapped<String?>? shortName,
      Wrapped<String?>? type,
      Wrapped<String?>? typeDesc,
      Wrapped<DateTime?>? startValidity,
      Wrapped<DateTime?>? endValidity,
      Wrapped<String?>? codeExternal,
      Wrapped<String?>? ccyPrice,
      Wrapped<double?>? price}) {
    return GenericProduct(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        shortName: (shortName != null ? shortName.value : this.shortName),
        type: (type != null ? type.value : this.type),
        typeDesc: (typeDesc != null ? typeDesc.value : this.typeDesc),
        startValidity:
            (startValidity != null ? startValidity.value : this.startValidity),
        endValidity:
            (endValidity != null ? endValidity.value : this.endValidity),
        codeExternal:
            (codeExternal != null ? codeExternal.value : this.codeExternal),
        ccyPrice: (ccyPrice != null ? ccyPrice.value : this.ccyPrice),
        price: (price != null ? price.value : this.price));
  }
}

@JsonSerializable(explicitToJson: true)
class JourneyGroup {
  const JourneyGroup({
    this.id,
    this.closingDate,
    this.status,
    this.partyAccountId,
    this.purchaseTransactionId,
    this.purchaseTransactionDateTime,
    this.productId,
    this.productName,
    this.productPrice,
    this.journeys,
  });

  factory JourneyGroup.fromJson(Map<String, dynamic> json) =>
      _$JourneyGroupFromJson(json);

  static const toJsonFactory = _$JourneyGroupToJson;
  Map<String, dynamic> toJson() => _$JourneyGroupToJson(this);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'closingDate', toJson: _dateToJson)
  final DateTime? closingDate;
  @JsonKey(
    name: 'status',
    toJson: journeyGroupStatusNullableToJson,
    fromJson: journeyGroupStatusNullableFromJson,
  )
  final enums.JourneyGroupStatus? status;
  @JsonKey(name: 'partyAccountId')
  final String? partyAccountId;
  @JsonKey(name: 'purchaseTransactionId')
  final String? purchaseTransactionId;
  @JsonKey(name: 'purchaseTransactionDateTime', toJson: _dateToJson)
  final DateTime? purchaseTransactionDateTime;
  @JsonKey(name: 'productId')
  final String? productId;
  @JsonKey(name: 'productName')
  final String? productName;
  @JsonKey(name: 'productPrice')
  final double? productPrice;
  @JsonKey(name: 'journeys', defaultValue: <Journey>[])
  final List<Journey>? journeys;
  static const fromJsonFactory = _$JourneyGroupFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is JourneyGroup &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.closingDate, closingDate) ||
                const DeepCollectionEquality()
                    .equals(other.closingDate, closingDate)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.partyAccountId, partyAccountId) ||
                const DeepCollectionEquality()
                    .equals(other.partyAccountId, partyAccountId)) &&
            (identical(other.purchaseTransactionId, purchaseTransactionId) ||
                const DeepCollectionEquality().equals(
                    other.purchaseTransactionId, purchaseTransactionId)) &&
            (identical(other.purchaseTransactionDateTime,
                    purchaseTransactionDateTime) ||
                const DeepCollectionEquality().equals(
                    other.purchaseTransactionDateTime,
                    purchaseTransactionDateTime)) &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)) &&
            (identical(other.productName, productName) ||
                const DeepCollectionEquality()
                    .equals(other.productName, productName)) &&
            (identical(other.productPrice, productPrice) ||
                const DeepCollectionEquality()
                    .equals(other.productPrice, productPrice)) &&
            (identical(other.journeys, journeys) ||
                const DeepCollectionEquality()
                    .equals(other.journeys, journeys)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(closingDate) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(partyAccountId) ^
      const DeepCollectionEquality().hash(purchaseTransactionId) ^
      const DeepCollectionEquality().hash(purchaseTransactionDateTime) ^
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(productName) ^
      const DeepCollectionEquality().hash(productPrice) ^
      const DeepCollectionEquality().hash(journeys) ^
      runtimeType.hashCode;
}

extension $JourneyGroupExtension on JourneyGroup {
  JourneyGroup copyWith(
      {String? id,
      DateTime? closingDate,
      enums.JourneyGroupStatus? status,
      String? partyAccountId,
      String? purchaseTransactionId,
      DateTime? purchaseTransactionDateTime,
      String? productId,
      String? productName,
      double? productPrice,
      List<Journey>? journeys}) {
    return JourneyGroup(
        id: id ?? this.id,
        closingDate: closingDate ?? this.closingDate,
        status: status ?? this.status,
        partyAccountId: partyAccountId ?? this.partyAccountId,
        purchaseTransactionId:
            purchaseTransactionId ?? this.purchaseTransactionId,
        purchaseTransactionDateTime:
            purchaseTransactionDateTime ?? this.purchaseTransactionDateTime,
        productId: productId ?? this.productId,
        productName: productName ?? this.productName,
        productPrice: productPrice ?? this.productPrice,
        journeys: journeys ?? this.journeys);
  }

  JourneyGroup copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<DateTime?>? closingDate,
      Wrapped<enums.JourneyGroupStatus?>? status,
      Wrapped<String?>? partyAccountId,
      Wrapped<String?>? purchaseTransactionId,
      Wrapped<DateTime?>? purchaseTransactionDateTime,
      Wrapped<String?>? productId,
      Wrapped<String?>? productName,
      Wrapped<double?>? productPrice,
      Wrapped<List<Journey>?>? journeys}) {
    return JourneyGroup(
        id: (id != null ? id.value : this.id),
        closingDate:
            (closingDate != null ? closingDate.value : this.closingDate),
        status: (status != null ? status.value : this.status),
        partyAccountId: (partyAccountId != null
            ? partyAccountId.value
            : this.partyAccountId),
        purchaseTransactionId: (purchaseTransactionId != null
            ? purchaseTransactionId.value
            : this.purchaseTransactionId),
        purchaseTransactionDateTime: (purchaseTransactionDateTime != null
            ? purchaseTransactionDateTime.value
            : this.purchaseTransactionDateTime),
        productId: (productId != null ? productId.value : this.productId),
        productName:
            (productName != null ? productName.value : this.productName),
        productPrice:
            (productPrice != null ? productPrice.value : this.productPrice),
        journeys: (journeys != null ? journeys.value : this.journeys));
  }
}

@JsonSerializable(explicitToJson: true)
class Journey {
  const Journey({
    this.journeyId,
    this.journeyGroupId,
    this.checkin,
    this.checkout,
  });

  factory Journey.fromJson(Map<String, dynamic> json) =>
      _$JourneyFromJson(json);

  static const toJsonFactory = _$JourneyToJson;
  Map<String, dynamic> toJson() => _$JourneyToJson(this);

  @JsonKey(name: 'journeyId')
  final String? journeyId;
  @JsonKey(name: 'journeyGroupId')
  final String? journeyGroupId;
  @JsonKey(name: 'checkin')
  final Validation? checkin;
  @JsonKey(name: 'checkout')
  final Validation? checkout;
  static const fromJsonFactory = _$JourneyFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Journey &&
            (identical(other.journeyId, journeyId) ||
                const DeepCollectionEquality()
                    .equals(other.journeyId, journeyId)) &&
            (identical(other.journeyGroupId, journeyGroupId) ||
                const DeepCollectionEquality()
                    .equals(other.journeyGroupId, journeyGroupId)) &&
            (identical(other.checkin, checkin) ||
                const DeepCollectionEquality()
                    .equals(other.checkin, checkin)) &&
            (identical(other.checkout, checkout) ||
                const DeepCollectionEquality()
                    .equals(other.checkout, checkout)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(journeyId) ^
      const DeepCollectionEquality().hash(journeyGroupId) ^
      const DeepCollectionEquality().hash(checkin) ^
      const DeepCollectionEquality().hash(checkout) ^
      runtimeType.hashCode;
}

extension $JourneyExtension on Journey {
  Journey copyWith(
      {String? journeyId,
      String? journeyGroupId,
      Validation? checkin,
      Validation? checkout}) {
    return Journey(
        journeyId: journeyId ?? this.journeyId,
        journeyGroupId: journeyGroupId ?? this.journeyGroupId,
        checkin: checkin ?? this.checkin,
        checkout: checkout ?? this.checkout);
  }

  Journey copyWithWrapped(
      {Wrapped<String?>? journeyId,
      Wrapped<String?>? journeyGroupId,
      Wrapped<Validation?>? checkin,
      Wrapped<Validation?>? checkout}) {
    return Journey(
        journeyId: (journeyId != null ? journeyId.value : this.journeyId),
        journeyGroupId: (journeyGroupId != null
            ? journeyGroupId.value
            : this.journeyGroupId),
        checkin: (checkin != null ? checkin.value : this.checkin),
        checkout: (checkout != null ? checkout.value : this.checkout));
  }
}

@JsonSerializable(explicitToJson: true)
class Validation {
  const Validation({
    this.transactionId,
    this.time,
    this.siteCode,
    this.siteDesc,
    this.siteDetail,
    this.validationDeviceId,
    this.service,
    this.$operator,
  });

  factory Validation.fromJson(Map<String, dynamic> json) =>
      _$ValidationFromJson(json);

  static const toJsonFactory = _$ValidationToJson;
  Map<String, dynamic> toJson() => _$ValidationToJson(this);

  @JsonKey(name: 'transactionId')
  final String? transactionId;
  @JsonKey(name: 'time', toJson: _dateToJson)
  final DateTime? time;
  @JsonKey(name: 'siteCode')
  final String? siteCode;
  @JsonKey(name: 'siteDesc')
  final String? siteDesc;
  @JsonKey(name: 'siteDetail')
  final String? siteDetail;
  @JsonKey(name: 'validationDeviceId')
  final String? validationDeviceId;
  @JsonKey(name: 'service')
  final String? service;
  @JsonKey(name: 'operator')
  final String? $operator;
  static const fromJsonFactory = _$ValidationFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Validation &&
            (identical(other.transactionId, transactionId) ||
                const DeepCollectionEquality()
                    .equals(other.transactionId, transactionId)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.siteCode, siteCode) ||
                const DeepCollectionEquality()
                    .equals(other.siteCode, siteCode)) &&
            (identical(other.siteDesc, siteDesc) ||
                const DeepCollectionEquality()
                    .equals(other.siteDesc, siteDesc)) &&
            (identical(other.siteDetail, siteDetail) ||
                const DeepCollectionEquality()
                    .equals(other.siteDetail, siteDetail)) &&
            (identical(other.validationDeviceId, validationDeviceId) ||
                const DeepCollectionEquality()
                    .equals(other.validationDeviceId, validationDeviceId)) &&
            (identical(other.service, service) ||
                const DeepCollectionEquality()
                    .equals(other.service, service)) &&
            (identical(other.$operator, $operator) ||
                const DeepCollectionEquality()
                    .equals(other.$operator, $operator)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transactionId) ^
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(siteCode) ^
      const DeepCollectionEquality().hash(siteDesc) ^
      const DeepCollectionEquality().hash(siteDetail) ^
      const DeepCollectionEquality().hash(validationDeviceId) ^
      const DeepCollectionEquality().hash(service) ^
      const DeepCollectionEquality().hash($operator) ^
      runtimeType.hashCode;
}

extension $ValidationExtension on Validation {
  Validation copyWith(
      {String? transactionId,
      DateTime? time,
      String? siteCode,
      String? siteDesc,
      String? siteDetail,
      String? validationDeviceId,
      String? service,
      String? $operator}) {
    return Validation(
        transactionId: transactionId ?? this.transactionId,
        time: time ?? this.time,
        siteCode: siteCode ?? this.siteCode,
        siteDesc: siteDesc ?? this.siteDesc,
        siteDetail: siteDetail ?? this.siteDetail,
        validationDeviceId: validationDeviceId ?? this.validationDeviceId,
        service: service ?? this.service,
        $operator: $operator ?? this.$operator);
  }

  Validation copyWithWrapped(
      {Wrapped<String?>? transactionId,
      Wrapped<DateTime?>? time,
      Wrapped<String?>? siteCode,
      Wrapped<String?>? siteDesc,
      Wrapped<String?>? siteDetail,
      Wrapped<String?>? validationDeviceId,
      Wrapped<String?>? service,
      Wrapped<String?>? $operator}) {
    return Validation(
        transactionId:
            (transactionId != null ? transactionId.value : this.transactionId),
        time: (time != null ? time.value : this.time),
        siteCode: (siteCode != null ? siteCode.value : this.siteCode),
        siteDesc: (siteDesc != null ? siteDesc.value : this.siteDesc),
        siteDetail: (siteDetail != null ? siteDetail.value : this.siteDetail),
        validationDeviceId: (validationDeviceId != null
            ? validationDeviceId.value
            : this.validationDeviceId),
        service: (service != null ? service.value : this.service),
        $operator: ($operator != null ? $operator.value : this.$operator));
  }
}

@JsonSerializable(explicitToJson: true)
class AccountBasedValidationSummary {
  const AccountBasedValidationSummary({
    required this.partyAccountId,
    required this.numberOfValidations,
    required this.closingDate,
    this.status,
  });

  factory AccountBasedValidationSummary.fromJson(Map<String, dynamic> json) =>
      _$AccountBasedValidationSummaryFromJson(json);

  static const toJsonFactory = _$AccountBasedValidationSummaryToJson;
  Map<String, dynamic> toJson() => _$AccountBasedValidationSummaryToJson(this);

  @JsonKey(name: 'partyAccountId')
  final String partyAccountId;
  @JsonKey(name: 'numberOfValidations')
  final int numberOfValidations;
  @JsonKey(name: 'closingDate', toJson: _dateToJson)
  final DateTime closingDate;
  @JsonKey(
    name: 'status',
    toJson: accountBasedValidationSummaryStatusNullableToJson,
    fromJson: accountBasedValidationSummaryStatusStatusNullableFromJson,
  )
  final enums.AccountBasedValidationSummaryStatus? status;
  static enums.AccountBasedValidationSummaryStatus?
      accountBasedValidationSummaryStatusStatusNullableFromJson(
              Object? value) =>
          accountBasedValidationSummaryStatusNullableFromJson(
              value, enums.AccountBasedValidationSummaryStatus.toElaborate);

  static const fromJsonFactory = _$AccountBasedValidationSummaryFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AccountBasedValidationSummary &&
            (identical(other.partyAccountId, partyAccountId) ||
                const DeepCollectionEquality()
                    .equals(other.partyAccountId, partyAccountId)) &&
            (identical(other.numberOfValidations, numberOfValidations) ||
                const DeepCollectionEquality()
                    .equals(other.numberOfValidations, numberOfValidations)) &&
            (identical(other.closingDate, closingDate) ||
                const DeepCollectionEquality()
                    .equals(other.closingDate, closingDate)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(partyAccountId) ^
      const DeepCollectionEquality().hash(numberOfValidations) ^
      const DeepCollectionEquality().hash(closingDate) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $AccountBasedValidationSummaryExtension
    on AccountBasedValidationSummary {
  AccountBasedValidationSummary copyWith(
      {String? partyAccountId,
      int? numberOfValidations,
      DateTime? closingDate,
      enums.AccountBasedValidationSummaryStatus? status}) {
    return AccountBasedValidationSummary(
        partyAccountId: partyAccountId ?? this.partyAccountId,
        numberOfValidations: numberOfValidations ?? this.numberOfValidations,
        closingDate: closingDate ?? this.closingDate,
        status: status ?? this.status);
  }

  AccountBasedValidationSummary copyWithWrapped(
      {Wrapped<String>? partyAccountId,
      Wrapped<int>? numberOfValidations,
      Wrapped<DateTime>? closingDate,
      Wrapped<enums.AccountBasedValidationSummaryStatus?>? status}) {
    return AccountBasedValidationSummary(
        partyAccountId: (partyAccountId != null
            ? partyAccountId.value
            : this.partyAccountId),
        numberOfValidations: (numberOfValidations != null
            ? numberOfValidations.value
            : this.numberOfValidations),
        closingDate:
            (closingDate != null ? closingDate.value : this.closingDate),
        status: (status != null ? status.value : this.status));
  }
}

@JsonSerializable(explicitToJson: true)
class AccountBasedSummarySession {
  const AccountBasedSummarySession({
    required this.sessionId,
    required this.sessionDateTime,
    required this.summaries,
  });

  factory AccountBasedSummarySession.fromJson(Map<String, dynamic> json) =>
      _$AccountBasedSummarySessionFromJson(json);

  static const toJsonFactory = _$AccountBasedSummarySessionToJson;
  Map<String, dynamic> toJson() => _$AccountBasedSummarySessionToJson(this);

  @JsonKey(name: 'sessionId')
  final String sessionId;
  @JsonKey(name: 'sessionDateTime', toJson: _dateToJson)
  final DateTime sessionDateTime;
  @JsonKey(name: 'summaries', defaultValue: <AccountBasedValidationSummary>[])
  final List<AccountBasedValidationSummary> summaries;
  static const fromJsonFactory = _$AccountBasedSummarySessionFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AccountBasedSummarySession &&
            (identical(other.sessionId, sessionId) ||
                const DeepCollectionEquality()
                    .equals(other.sessionId, sessionId)) &&
            (identical(other.sessionDateTime, sessionDateTime) ||
                const DeepCollectionEquality()
                    .equals(other.sessionDateTime, sessionDateTime)) &&
            (identical(other.summaries, summaries) ||
                const DeepCollectionEquality()
                    .equals(other.summaries, summaries)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(sessionId) ^
      const DeepCollectionEquality().hash(sessionDateTime) ^
      const DeepCollectionEquality().hash(summaries) ^
      runtimeType.hashCode;
}

extension $AccountBasedSummarySessionExtension on AccountBasedSummarySession {
  AccountBasedSummarySession copyWith(
      {String? sessionId,
      DateTime? sessionDateTime,
      List<AccountBasedValidationSummary>? summaries}) {
    return AccountBasedSummarySession(
        sessionId: sessionId ?? this.sessionId,
        sessionDateTime: sessionDateTime ?? this.sessionDateTime,
        summaries: summaries ?? this.summaries);
  }

  AccountBasedSummarySession copyWithWrapped(
      {Wrapped<String>? sessionId,
      Wrapped<DateTime>? sessionDateTime,
      Wrapped<List<AccountBasedValidationSummary>>? summaries}) {
    return AccountBasedSummarySession(
        sessionId: (sessionId != null ? sessionId.value : this.sessionId),
        sessionDateTime: (sessionDateTime != null
            ? sessionDateTime.value
            : this.sessionDateTime),
        summaries: (summaries != null ? summaries.value : this.summaries));
  }
}

@JsonSerializable(explicitToJson: true)
class AccountBasedSummaryResponse {
  const AccountBasedSummaryResponse({
    this.success,
    this.errors,
  });

  factory AccountBasedSummaryResponse.fromJson(Map<String, dynamic> json) =>
      _$AccountBasedSummaryResponseFromJson(json);

  static const toJsonFactory = _$AccountBasedSummaryResponseToJson;
  Map<String, dynamic> toJson() => _$AccountBasedSummaryResponseToJson(this);

  @JsonKey(name: 'success', defaultValue: <AccountBasedSummarySession>[])
  final List<AccountBasedSummarySession>? success;
  @JsonKey(name: 'errors', defaultValue: <AccountBasedSummarySession>[])
  final List<AccountBasedSummarySession>? errors;
  static const fromJsonFactory = _$AccountBasedSummaryResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AccountBasedSummaryResponse &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(errors) ^
      runtimeType.hashCode;
}

extension $AccountBasedSummaryResponseExtension on AccountBasedSummaryResponse {
  AccountBasedSummaryResponse copyWith(
      {List<AccountBasedSummarySession>? success,
      List<AccountBasedSummarySession>? errors}) {
    return AccountBasedSummaryResponse(
        success: success ?? this.success, errors: errors ?? this.errors);
  }

  AccountBasedSummaryResponse copyWithWrapped(
      {Wrapped<List<AccountBasedSummarySession>?>? success,
      Wrapped<List<AccountBasedSummarySession>?>? errors}) {
    return AccountBasedSummaryResponse(
        success: (success != null ? success.value : this.success),
        errors: (errors != null ? errors.value : this.errors));
  }
}

@JsonSerializable(explicitToJson: true)
class ExtendedDistanceMatrix {
  const ExtendedDistanceMatrix({
    this.lineId,
    this.lineName,
    this.serviceProvider,
    this.originElementRef,
    this.originElementName,
    this.destinationElementRef,
    this.destinationElementName,
    this.geographicalIntervalId,
    this.fareZoneId,
    this.distance,
    this.duration,
    this.serviceMode,
  });

  factory ExtendedDistanceMatrix.fromJson(Map<String, dynamic> json) =>
      _$ExtendedDistanceMatrixFromJson(json);

  static const toJsonFactory = _$ExtendedDistanceMatrixToJson;
  Map<String, dynamic> toJson() => _$ExtendedDistanceMatrixToJson(this);

  @JsonKey(name: 'lineId')
  final String? lineId;
  @JsonKey(name: 'lineName')
  final String? lineName;
  @JsonKey(name: 'serviceProvider')
  final String? serviceProvider;
  @JsonKey(name: 'originElementRef')
  final String? originElementRef;
  @JsonKey(name: 'originElementName')
  final String? originElementName;
  @JsonKey(name: 'destinationElementRef')
  final String? destinationElementRef;
  @JsonKey(name: 'destinationElementName')
  final String? destinationElementName;
  @JsonKey(name: 'geographicalIntervalId')
  final String? geographicalIntervalId;
  @JsonKey(name: 'fareZoneId')
  final String? fareZoneId;
  @JsonKey(name: 'distance')
  final int? distance;
  @JsonKey(name: 'duration')
  final int? duration;
  @JsonKey(
    name: 'serviceMode',
    toJson: extendedDistanceMatrixServiceModeNullableToJson,
    fromJson: extendedDistanceMatrixServiceModeNullableFromJson,
  )
  final enums.ExtendedDistanceMatrixServiceMode? serviceMode;
  static const fromJsonFactory = _$ExtendedDistanceMatrixFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtendedDistanceMatrix &&
            (identical(other.lineId, lineId) ||
                const DeepCollectionEquality().equals(other.lineId, lineId)) &&
            (identical(other.lineName, lineName) ||
                const DeepCollectionEquality()
                    .equals(other.lineName, lineName)) &&
            (identical(other.serviceProvider, serviceProvider) ||
                const DeepCollectionEquality()
                    .equals(other.serviceProvider, serviceProvider)) &&
            (identical(other.originElementRef, originElementRef) ||
                const DeepCollectionEquality()
                    .equals(other.originElementRef, originElementRef)) &&
            (identical(other.originElementName, originElementName) ||
                const DeepCollectionEquality()
                    .equals(other.originElementName, originElementName)) &&
            (identical(other.destinationElementRef, destinationElementRef) ||
                const DeepCollectionEquality().equals(
                    other.destinationElementRef, destinationElementRef)) &&
            (identical(other.destinationElementName, destinationElementName) ||
                const DeepCollectionEquality().equals(
                    other.destinationElementName, destinationElementName)) &&
            (identical(other.geographicalIntervalId, geographicalIntervalId) ||
                const DeepCollectionEquality().equals(
                    other.geographicalIntervalId, geographicalIntervalId)) &&
            (identical(other.fareZoneId, fareZoneId) ||
                const DeepCollectionEquality()
                    .equals(other.fareZoneId, fareZoneId)) &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.serviceMode, serviceMode) ||
                const DeepCollectionEquality()
                    .equals(other.serviceMode, serviceMode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lineId) ^
      const DeepCollectionEquality().hash(lineName) ^
      const DeepCollectionEquality().hash(serviceProvider) ^
      const DeepCollectionEquality().hash(originElementRef) ^
      const DeepCollectionEquality().hash(originElementName) ^
      const DeepCollectionEquality().hash(destinationElementRef) ^
      const DeepCollectionEquality().hash(destinationElementName) ^
      const DeepCollectionEquality().hash(geographicalIntervalId) ^
      const DeepCollectionEquality().hash(fareZoneId) ^
      const DeepCollectionEquality().hash(distance) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(serviceMode) ^
      runtimeType.hashCode;
}

extension $ExtendedDistanceMatrixExtension on ExtendedDistanceMatrix {
  ExtendedDistanceMatrix copyWith(
      {String? lineId,
      String? lineName,
      String? serviceProvider,
      String? originElementRef,
      String? originElementName,
      String? destinationElementRef,
      String? destinationElementName,
      String? geographicalIntervalId,
      String? fareZoneId,
      int? distance,
      int? duration,
      enums.ExtendedDistanceMatrixServiceMode? serviceMode}) {
    return ExtendedDistanceMatrix(
        lineId: lineId ?? this.lineId,
        lineName: lineName ?? this.lineName,
        serviceProvider: serviceProvider ?? this.serviceProvider,
        originElementRef: originElementRef ?? this.originElementRef,
        originElementName: originElementName ?? this.originElementName,
        destinationElementRef:
            destinationElementRef ?? this.destinationElementRef,
        destinationElementName:
            destinationElementName ?? this.destinationElementName,
        geographicalIntervalId:
            geographicalIntervalId ?? this.geographicalIntervalId,
        fareZoneId: fareZoneId ?? this.fareZoneId,
        distance: distance ?? this.distance,
        duration: duration ?? this.duration,
        serviceMode: serviceMode ?? this.serviceMode);
  }

  ExtendedDistanceMatrix copyWithWrapped(
      {Wrapped<String?>? lineId,
      Wrapped<String?>? lineName,
      Wrapped<String?>? serviceProvider,
      Wrapped<String?>? originElementRef,
      Wrapped<String?>? originElementName,
      Wrapped<String?>? destinationElementRef,
      Wrapped<String?>? destinationElementName,
      Wrapped<String?>? geographicalIntervalId,
      Wrapped<String?>? fareZoneId,
      Wrapped<int?>? distance,
      Wrapped<int?>? duration,
      Wrapped<enums.ExtendedDistanceMatrixServiceMode?>? serviceMode}) {
    return ExtendedDistanceMatrix(
        lineId: (lineId != null ? lineId.value : this.lineId),
        lineName: (lineName != null ? lineName.value : this.lineName),
        serviceProvider: (serviceProvider != null
            ? serviceProvider.value
            : this.serviceProvider),
        originElementRef: (originElementRef != null
            ? originElementRef.value
            : this.originElementRef),
        originElementName: (originElementName != null
            ? originElementName.value
            : this.originElementName),
        destinationElementRef: (destinationElementRef != null
            ? destinationElementRef.value
            : this.destinationElementRef),
        destinationElementName: (destinationElementName != null
            ? destinationElementName.value
            : this.destinationElementName),
        geographicalIntervalId: (geographicalIntervalId != null
            ? geographicalIntervalId.value
            : this.geographicalIntervalId),
        fareZoneId: (fareZoneId != null ? fareZoneId.value : this.fareZoneId),
        distance: (distance != null ? distance.value : this.distance),
        duration: (duration != null ? duration.value : this.duration),
        serviceMode:
            (serviceMode != null ? serviceMode.value : this.serviceMode));
  }
}

@JsonSerializable(explicitToJson: true)
class GeographicalIntervalLimit {
  const GeographicalIntervalLimit({
    this.infrastructureElementCode,
    this.infrastructureElementType,
    this.startPoint,
    this.endPoint,
  });

  factory GeographicalIntervalLimit.fromJson(Map<String, dynamic> json) =>
      _$GeographicalIntervalLimitFromJson(json);

  static const toJsonFactory = _$GeographicalIntervalLimitToJson;
  Map<String, dynamic> toJson() => _$GeographicalIntervalLimitToJson(this);

  @JsonKey(name: 'infrastructureElementCode')
  final String? infrastructureElementCode;
  @JsonKey(
    name: 'infrastructureElementType',
    toJson: geographicalIntervalLimitInfrastructureElementTypeNullableToJson,
    fromJson:
        geographicalIntervalLimitInfrastructureElementTypeNullableFromJson,
  )
  final enums.GeographicalIntervalLimitInfrastructureElementType?
      infrastructureElementType;
  @JsonKey(name: 'startPoint')
  final Point? startPoint;
  @JsonKey(name: 'endPoint')
  final Point? endPoint;
  static const fromJsonFactory = _$GeographicalIntervalLimitFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GeographicalIntervalLimit &&
            (identical(other.infrastructureElementCode,
                    infrastructureElementCode) ||
                const DeepCollectionEquality().equals(
                    other.infrastructureElementCode,
                    infrastructureElementCode)) &&
            (identical(other.infrastructureElementType,
                    infrastructureElementType) ||
                const DeepCollectionEquality().equals(
                    other.infrastructureElementType,
                    infrastructureElementType)) &&
            (identical(other.startPoint, startPoint) ||
                const DeepCollectionEquality()
                    .equals(other.startPoint, startPoint)) &&
            (identical(other.endPoint, endPoint) ||
                const DeepCollectionEquality()
                    .equals(other.endPoint, endPoint)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(infrastructureElementCode) ^
      const DeepCollectionEquality().hash(infrastructureElementType) ^
      const DeepCollectionEquality().hash(startPoint) ^
      const DeepCollectionEquality().hash(endPoint) ^
      runtimeType.hashCode;
}

extension $GeographicalIntervalLimitExtension on GeographicalIntervalLimit {
  GeographicalIntervalLimit copyWith(
      {String? infrastructureElementCode,
      enums.GeographicalIntervalLimitInfrastructureElementType?
          infrastructureElementType,
      Point? startPoint,
      Point? endPoint}) {
    return GeographicalIntervalLimit(
        infrastructureElementCode:
            infrastructureElementCode ?? this.infrastructureElementCode,
        infrastructureElementType:
            infrastructureElementType ?? this.infrastructureElementType,
        startPoint: startPoint ?? this.startPoint,
        endPoint: endPoint ?? this.endPoint);
  }

  GeographicalIntervalLimit copyWithWrapped(
      {Wrapped<String?>? infrastructureElementCode,
      Wrapped<enums.GeographicalIntervalLimitInfrastructureElementType?>?
          infrastructureElementType,
      Wrapped<Point?>? startPoint,
      Wrapped<Point?>? endPoint}) {
    return GeographicalIntervalLimit(
        infrastructureElementCode: (infrastructureElementCode != null
            ? infrastructureElementCode.value
            : this.infrastructureElementCode),
        infrastructureElementType: (infrastructureElementType != null
            ? infrastructureElementType.value
            : this.infrastructureElementType),
        startPoint: (startPoint != null ? startPoint.value : this.startPoint),
        endPoint: (endPoint != null ? endPoint.value : this.endPoint));
  }
}

@JsonSerializable(explicitToJson: true)
class Point {
  const Point({
    this.code,
    this.name,
  });

  factory Point.fromJson(Map<String, dynamic> json) => _$PointFromJson(json);

  static const toJsonFactory = _$PointToJson;
  Map<String, dynamic> toJson() => _$PointToJson(this);

  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$PointFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Point &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $PointExtension on Point {
  Point copyWith({String? code, String? name}) {
    return Point(code: code ?? this.code, name: name ?? this.name);
  }

  Point copyWithWrapped({Wrapped<String?>? code, Wrapped<String?>? name}) {
    return Point(
        code: (code != null ? code.value : this.code),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class ExtendedDistanceMatrixLocation {
  const ExtendedDistanceMatrixLocation({
    this.locationRef,
    this.locationName,
  });

  factory ExtendedDistanceMatrixLocation.fromJson(Map<String, dynamic> json) =>
      _$ExtendedDistanceMatrixLocationFromJson(json);

  static const toJsonFactory = _$ExtendedDistanceMatrixLocationToJson;
  Map<String, dynamic> toJson() => _$ExtendedDistanceMatrixLocationToJson(this);

  @JsonKey(name: 'locationRef')
  final String? locationRef;
  @JsonKey(name: 'locationName')
  final String? locationName;
  static const fromJsonFactory = _$ExtendedDistanceMatrixLocationFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExtendedDistanceMatrixLocation &&
            (identical(other.locationRef, locationRef) ||
                const DeepCollectionEquality()
                    .equals(other.locationRef, locationRef)) &&
            (identical(other.locationName, locationName) ||
                const DeepCollectionEquality()
                    .equals(other.locationName, locationName)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(locationRef) ^
      const DeepCollectionEquality().hash(locationName) ^
      runtimeType.hashCode;
}

extension $ExtendedDistanceMatrixLocationExtension
    on ExtendedDistanceMatrixLocation {
  ExtendedDistanceMatrixLocation copyWith(
      {String? locationRef, String? locationName}) {
    return ExtendedDistanceMatrixLocation(
        locationRef: locationRef ?? this.locationRef,
        locationName: locationName ?? this.locationName);
  }

  ExtendedDistanceMatrixLocation copyWithWrapped(
      {Wrapped<String?>? locationRef, Wrapped<String?>? locationName}) {
    return ExtendedDistanceMatrixLocation(
        locationRef:
            (locationRef != null ? locationRef.value : this.locationRef),
        locationName:
            (locationName != null ? locationName.value : this.locationName));
  }
}

@JsonSerializable(explicitToJson: true)
class PrePurchaseConfirmation {
  const PrePurchaseConfirmation({
    required this.codGateway,
    required this.purchaseRef,
    required this.codTrans,
    required this.result,
    required this.esito,
    required this.importo,
    required this.divisa,
    this.codiceEsito,
    this.messaggio,
    this.codAut,
    this.mac,
    this.data,
    this.orario,
  });

  factory PrePurchaseConfirmation.fromJson(Map<String, dynamic> json) =>
      _$PrePurchaseConfirmationFromJson(json);

  static const toJsonFactory = _$PrePurchaseConfirmationToJson;
  Map<String, dynamic> toJson() => _$PrePurchaseConfirmationToJson(this);

  @JsonKey(
    name: 'codGateway',
    toJson: paymentGatewayTypeToJson,
    fromJson: paymentGatewayTypeFromJson,
  )
  final enums.PaymentGatewayType codGateway;
  @JsonKey(name: 'purchaseRef')
  final String purchaseRef;
  @JsonKey(name: 'codTrans')
  final String codTrans;
  @JsonKey(
    name: 'result',
    toJson: prePurchaseConfirmationResultToJson,
    fromJson: prePurchaseConfirmationResultFromJson,
  )
  final enums.PrePurchaseConfirmationResult result;
  @JsonKey(name: 'esito')
  final String esito;
  @JsonKey(name: 'importo')
  final String importo;
  @JsonKey(name: 'divisa')
  final String divisa;
  @JsonKey(name: 'codiceEsito')
  final String? codiceEsito;
  @JsonKey(name: 'messaggio')
  final String? messaggio;
  @JsonKey(name: 'codAut')
  final String? codAut;
  @JsonKey(name: 'mac')
  final String? mac;
  @JsonKey(name: 'data')
  final String? data;
  @JsonKey(name: 'orario')
  final String? orario;
  static const fromJsonFactory = _$PrePurchaseConfirmationFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PrePurchaseConfirmation &&
            (identical(other.codGateway, codGateway) ||
                const DeepCollectionEquality()
                    .equals(other.codGateway, codGateway)) &&
            (identical(other.purchaseRef, purchaseRef) ||
                const DeepCollectionEquality()
                    .equals(other.purchaseRef, purchaseRef)) &&
            (identical(other.codTrans, codTrans) ||
                const DeepCollectionEquality()
                    .equals(other.codTrans, codTrans)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.esito, esito) ||
                const DeepCollectionEquality().equals(other.esito, esito)) &&
            (identical(other.importo, importo) ||
                const DeepCollectionEquality()
                    .equals(other.importo, importo)) &&
            (identical(other.divisa, divisa) ||
                const DeepCollectionEquality().equals(other.divisa, divisa)) &&
            (identical(other.codiceEsito, codiceEsito) ||
                const DeepCollectionEquality()
                    .equals(other.codiceEsito, codiceEsito)) &&
            (identical(other.messaggio, messaggio) ||
                const DeepCollectionEquality()
                    .equals(other.messaggio, messaggio)) &&
            (identical(other.codAut, codAut) ||
                const DeepCollectionEquality().equals(other.codAut, codAut)) &&
            (identical(other.mac, mac) ||
                const DeepCollectionEquality().equals(other.mac, mac)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.orario, orario) ||
                const DeepCollectionEquality().equals(other.orario, orario)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(codGateway) ^
      const DeepCollectionEquality().hash(purchaseRef) ^
      const DeepCollectionEquality().hash(codTrans) ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(esito) ^
      const DeepCollectionEquality().hash(importo) ^
      const DeepCollectionEquality().hash(divisa) ^
      const DeepCollectionEquality().hash(codiceEsito) ^
      const DeepCollectionEquality().hash(messaggio) ^
      const DeepCollectionEquality().hash(codAut) ^
      const DeepCollectionEquality().hash(mac) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(orario) ^
      runtimeType.hashCode;
}

extension $PrePurchaseConfirmationExtension on PrePurchaseConfirmation {
  PrePurchaseConfirmation copyWith(
      {enums.PaymentGatewayType? codGateway,
      String? purchaseRef,
      String? codTrans,
      enums.PrePurchaseConfirmationResult? result,
      String? esito,
      String? importo,
      String? divisa,
      String? codiceEsito,
      String? messaggio,
      String? codAut,
      String? mac,
      String? data,
      String? orario}) {
    return PrePurchaseConfirmation(
        codGateway: codGateway ?? this.codGateway,
        purchaseRef: purchaseRef ?? this.purchaseRef,
        codTrans: codTrans ?? this.codTrans,
        result: result ?? this.result,
        esito: esito ?? this.esito,
        importo: importo ?? this.importo,
        divisa: divisa ?? this.divisa,
        codiceEsito: codiceEsito ?? this.codiceEsito,
        messaggio: messaggio ?? this.messaggio,
        codAut: codAut ?? this.codAut,
        mac: mac ?? this.mac,
        data: data ?? this.data,
        orario: orario ?? this.orario);
  }

  PrePurchaseConfirmation copyWithWrapped(
      {Wrapped<enums.PaymentGatewayType>? codGateway,
      Wrapped<String>? purchaseRef,
      Wrapped<String>? codTrans,
      Wrapped<enums.PrePurchaseConfirmationResult>? result,
      Wrapped<String>? esito,
      Wrapped<String>? importo,
      Wrapped<String>? divisa,
      Wrapped<String?>? codiceEsito,
      Wrapped<String?>? messaggio,
      Wrapped<String?>? codAut,
      Wrapped<String?>? mac,
      Wrapped<String?>? data,
      Wrapped<String?>? orario}) {
    return PrePurchaseConfirmation(
        codGateway: (codGateway != null ? codGateway.value : this.codGateway),
        purchaseRef:
            (purchaseRef != null ? purchaseRef.value : this.purchaseRef),
        codTrans: (codTrans != null ? codTrans.value : this.codTrans),
        result: (result != null ? result.value : this.result),
        esito: (esito != null ? esito.value : this.esito),
        importo: (importo != null ? importo.value : this.importo),
        divisa: (divisa != null ? divisa.value : this.divisa),
        codiceEsito:
            (codiceEsito != null ? codiceEsito.value : this.codiceEsito),
        messaggio: (messaggio != null ? messaggio.value : this.messaggio),
        codAut: (codAut != null ? codAut.value : this.codAut),
        mac: (mac != null ? mac.value : this.mac),
        data: (data != null ? data.value : this.data),
        orario: (orario != null ? orario.value : this.orario));
  }
}

@JsonSerializable(explicitToJson: true)
class Aztec {
  const Aztec({
    this.ticketId,
    this.mediaId,
    this.customerId,
    this.codeTypePrefix,
    this.useDefaultExpiration,
    this.outputFormat,
  });

  factory Aztec.fromJson(Map<String, dynamic> json) => _$AztecFromJson(json);

  static const toJsonFactory = _$AztecToJson;
  Map<String, dynamic> toJson() => _$AztecToJson(this);

  @JsonKey(name: 'ticketId')
  final String? ticketId;
  @JsonKey(name: 'mediaId')
  final String? mediaId;
  @JsonKey(name: 'customerId')
  final String? customerId;
  @JsonKey(name: 'codeTypePrefix')
  final String? codeTypePrefix;
  @JsonKey(name: 'useDefaultExpiration')
  final bool? useDefaultExpiration;
  @JsonKey(name: 'outputFormat')
  final String? outputFormat;
  static const fromJsonFactory = _$AztecFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Aztec &&
            (identical(other.ticketId, ticketId) ||
                const DeepCollectionEquality()
                    .equals(other.ticketId, ticketId)) &&
            (identical(other.mediaId, mediaId) ||
                const DeepCollectionEquality()
                    .equals(other.mediaId, mediaId)) &&
            (identical(other.customerId, customerId) ||
                const DeepCollectionEquality()
                    .equals(other.customerId, customerId)) &&
            (identical(other.codeTypePrefix, codeTypePrefix) ||
                const DeepCollectionEquality()
                    .equals(other.codeTypePrefix, codeTypePrefix)) &&
            (identical(other.useDefaultExpiration, useDefaultExpiration) ||
                const DeepCollectionEquality().equals(
                    other.useDefaultExpiration, useDefaultExpiration)) &&
            (identical(other.outputFormat, outputFormat) ||
                const DeepCollectionEquality()
                    .equals(other.outputFormat, outputFormat)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ticketId) ^
      const DeepCollectionEquality().hash(mediaId) ^
      const DeepCollectionEquality().hash(customerId) ^
      const DeepCollectionEquality().hash(codeTypePrefix) ^
      const DeepCollectionEquality().hash(useDefaultExpiration) ^
      const DeepCollectionEquality().hash(outputFormat) ^
      runtimeType.hashCode;
}

extension $AztecExtension on Aztec {
  Aztec copyWith(
      {String? ticketId,
      String? mediaId,
      String? customerId,
      String? codeTypePrefix,
      bool? useDefaultExpiration,
      String? outputFormat}) {
    return Aztec(
        ticketId: ticketId ?? this.ticketId,
        mediaId: mediaId ?? this.mediaId,
        customerId: customerId ?? this.customerId,
        codeTypePrefix: codeTypePrefix ?? this.codeTypePrefix,
        useDefaultExpiration: useDefaultExpiration ?? this.useDefaultExpiration,
        outputFormat: outputFormat ?? this.outputFormat);
  }

  Aztec copyWithWrapped(
      {Wrapped<String?>? ticketId,
      Wrapped<String?>? mediaId,
      Wrapped<String?>? customerId,
      Wrapped<String?>? codeTypePrefix,
      Wrapped<bool?>? useDefaultExpiration,
      Wrapped<String?>? outputFormat}) {
    return Aztec(
        ticketId: (ticketId != null ? ticketId.value : this.ticketId),
        mediaId: (mediaId != null ? mediaId.value : this.mediaId),
        customerId: (customerId != null ? customerId.value : this.customerId),
        codeTypePrefix: (codeTypePrefix != null
            ? codeTypePrefix.value
            : this.codeTypePrefix),
        useDefaultExpiration: (useDefaultExpiration != null
            ? useDefaultExpiration.value
            : this.useDefaultExpiration),
        outputFormat:
            (outputFormat != null ? outputFormat.value : this.outputFormat));
  }
}

@JsonSerializable(explicitToJson: true)
class EnabledPaymentGateway {
  const EnabledPaymentGateway({
    this.paymentGateway,
    this.urlPrePurchase,
    this.urlPrePurchaseEPurse,
  });

  factory EnabledPaymentGateway.fromJson(Map<String, dynamic> json) =>
      _$EnabledPaymentGatewayFromJson(json);

  static const toJsonFactory = _$EnabledPaymentGatewayToJson;
  Map<String, dynamic> toJson() => _$EnabledPaymentGatewayToJson(this);

  @JsonKey(
    name: 'paymentGateway',
    toJson: paymentGatewayTypeNullableToJson,
    fromJson: paymentGatewayTypeNullableFromJson,
  )
  final enums.PaymentGatewayType? paymentGateway;
  @JsonKey(name: 'urlPrePurchase')
  final String? urlPrePurchase;
  @JsonKey(name: 'urlPrePurchaseEPurse')
  final String? urlPrePurchaseEPurse;
  static const fromJsonFactory = _$EnabledPaymentGatewayFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EnabledPaymentGateway &&
            (identical(other.paymentGateway, paymentGateway) ||
                const DeepCollectionEquality()
                    .equals(other.paymentGateway, paymentGateway)) &&
            (identical(other.urlPrePurchase, urlPrePurchase) ||
                const DeepCollectionEquality()
                    .equals(other.urlPrePurchase, urlPrePurchase)) &&
            (identical(other.urlPrePurchaseEPurse, urlPrePurchaseEPurse) ||
                const DeepCollectionEquality()
                    .equals(other.urlPrePurchaseEPurse, urlPrePurchaseEPurse)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(paymentGateway) ^
      const DeepCollectionEquality().hash(urlPrePurchase) ^
      const DeepCollectionEquality().hash(urlPrePurchaseEPurse) ^
      runtimeType.hashCode;
}

extension $EnabledPaymentGatewayExtension on EnabledPaymentGateway {
  EnabledPaymentGateway copyWith(
      {enums.PaymentGatewayType? paymentGateway,
      String? urlPrePurchase,
      String? urlPrePurchaseEPurse}) {
    return EnabledPaymentGateway(
        paymentGateway: paymentGateway ?? this.paymentGateway,
        urlPrePurchase: urlPrePurchase ?? this.urlPrePurchase,
        urlPrePurchaseEPurse:
            urlPrePurchaseEPurse ?? this.urlPrePurchaseEPurse);
  }

  EnabledPaymentGateway copyWithWrapped(
      {Wrapped<enums.PaymentGatewayType?>? paymentGateway,
      Wrapped<String?>? urlPrePurchase,
      Wrapped<String?>? urlPrePurchaseEPurse}) {
    return EnabledPaymentGateway(
        paymentGateway: (paymentGateway != null
            ? paymentGateway.value
            : this.paymentGateway),
        urlPrePurchase: (urlPrePurchase != null
            ? urlPrePurchase.value
            : this.urlPrePurchase),
        urlPrePurchaseEPurse: (urlPrePurchaseEPurse != null
            ? urlPrePurchaseEPurse.value
            : this.urlPrePurchaseEPurse));
  }
}

@JsonSerializable(explicitToJson: true)
class BasketItem {
  const BasketItem({
    required this.itemType,
    required this.itemId,
    required this.itemVersion,
    required this.date,
    this.fareTableCellId,
    this.mediaType,
    this.validityPeriodId,
    this.fareZoneId,
    this.geographicalId,
    this.distributionTouchpointType,
    this.distributionTouchpointId,
    this.serviceId,
    this.customerProfileId,
    this.temporalValidityId,
    this.promotionAssignmentId,
    required this.quantity,
  });

  factory BasketItem.fromJson(Map<String, dynamic> json) =>
      _$BasketItemFromJson(json);

  static const toJsonFactory = _$BasketItemToJson;
  Map<String, dynamic> toJson() => _$BasketItemToJson(this);

  @JsonKey(name: 'itemType')
  final String itemType;
  @JsonKey(name: 'itemId')
  final String itemId;
  @JsonKey(name: 'itemVersion')
  final int itemVersion;
  @JsonKey(name: 'date')
  final String date;
  @JsonKey(name: 'fareTableCellId')
  final String? fareTableCellId;
  @JsonKey(
    name: 'mediaType',
    toJson: basketItemMediaTypeNullableToJson,
    fromJson: basketItemMediaTypeNullableFromJson,
  )
  final enums.BasketItemMediaType? mediaType;
  @JsonKey(name: 'validityPeriodId')
  final String? validityPeriodId;
  @JsonKey(name: 'fareZoneId')
  final String? fareZoneId;
  @JsonKey(name: 'geographicalId')
  final String? geographicalId;
  @JsonKey(name: 'distributionTouchpointType')
  final String? distributionTouchpointType;
  @JsonKey(name: 'distributionTouchpointId')
  final String? distributionTouchpointId;
  @JsonKey(name: 'serviceId')
  final String? serviceId;
  @JsonKey(name: 'customerProfileId')
  final String? customerProfileId;
  @JsonKey(name: 'temporalValidityId')
  final String? temporalValidityId;
  @JsonKey(name: 'promotionAssignmentId')
  final String? promotionAssignmentId;
  @JsonKey(name: 'quantity')
  final int quantity;
  static const fromJsonFactory = _$BasketItemFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BasketItem &&
            (identical(other.itemType, itemType) ||
                const DeepCollectionEquality()
                    .equals(other.itemType, itemType)) &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)) &&
            (identical(other.itemVersion, itemVersion) ||
                const DeepCollectionEquality()
                    .equals(other.itemVersion, itemVersion)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.fareTableCellId, fareTableCellId) ||
                const DeepCollectionEquality()
                    .equals(other.fareTableCellId, fareTableCellId)) &&
            (identical(other.mediaType, mediaType) ||
                const DeepCollectionEquality()
                    .equals(other.mediaType, mediaType)) &&
            (identical(other.validityPeriodId, validityPeriodId) ||
                const DeepCollectionEquality()
                    .equals(other.validityPeriodId, validityPeriodId)) &&
            (identical(other.fareZoneId, fareZoneId) ||
                const DeepCollectionEquality()
                    .equals(other.fareZoneId, fareZoneId)) &&
            (identical(other.geographicalId, geographicalId) ||
                const DeepCollectionEquality()
                    .equals(other.geographicalId, geographicalId)) &&
            (identical(other.distributionTouchpointType,
                    distributionTouchpointType) ||
                const DeepCollectionEquality().equals(
                    other.distributionTouchpointType,
                    distributionTouchpointType)) &&
            (identical(
                    other.distributionTouchpointId, distributionTouchpointId) ||
                const DeepCollectionEquality().equals(
                    other.distributionTouchpointId,
                    distributionTouchpointId)) &&
            (identical(other.serviceId, serviceId) ||
                const DeepCollectionEquality()
                    .equals(other.serviceId, serviceId)) &&
            (identical(other.customerProfileId, customerProfileId) ||
                const DeepCollectionEquality()
                    .equals(other.customerProfileId, customerProfileId)) &&
            (identical(other.temporalValidityId, temporalValidityId) ||
                const DeepCollectionEquality()
                    .equals(other.temporalValidityId, temporalValidityId)) &&
            (identical(other.promotionAssignmentId, promotionAssignmentId) ||
                const DeepCollectionEquality().equals(
                    other.promotionAssignmentId, promotionAssignmentId)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality().equals(other.quantity, quantity)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(itemType) ^
      const DeepCollectionEquality().hash(itemId) ^
      const DeepCollectionEquality().hash(itemVersion) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(fareTableCellId) ^
      const DeepCollectionEquality().hash(mediaType) ^
      const DeepCollectionEquality().hash(validityPeriodId) ^
      const DeepCollectionEquality().hash(fareZoneId) ^
      const DeepCollectionEquality().hash(geographicalId) ^
      const DeepCollectionEquality().hash(distributionTouchpointType) ^
      const DeepCollectionEquality().hash(distributionTouchpointId) ^
      const DeepCollectionEquality().hash(serviceId) ^
      const DeepCollectionEquality().hash(customerProfileId) ^
      const DeepCollectionEquality().hash(temporalValidityId) ^
      const DeepCollectionEquality().hash(promotionAssignmentId) ^
      const DeepCollectionEquality().hash(quantity) ^
      runtimeType.hashCode;
}

extension $BasketItemExtension on BasketItem {
  BasketItem copyWith(
      {String? itemType,
      String? itemId,
      int? itemVersion,
      String? date,
      String? fareTableCellId,
      enums.BasketItemMediaType? mediaType,
      String? validityPeriodId,
      String? fareZoneId,
      String? geographicalId,
      String? distributionTouchpointType,
      String? distributionTouchpointId,
      String? serviceId,
      String? customerProfileId,
      String? temporalValidityId,
      String? promotionAssignmentId,
      int? quantity}) {
    return BasketItem(
        itemType: itemType ?? this.itemType,
        itemId: itemId ?? this.itemId,
        itemVersion: itemVersion ?? this.itemVersion,
        date: date ?? this.date,
        fareTableCellId: fareTableCellId ?? this.fareTableCellId,
        mediaType: mediaType ?? this.mediaType,
        validityPeriodId: validityPeriodId ?? this.validityPeriodId,
        fareZoneId: fareZoneId ?? this.fareZoneId,
        geographicalId: geographicalId ?? this.geographicalId,
        distributionTouchpointType:
            distributionTouchpointType ?? this.distributionTouchpointType,
        distributionTouchpointId:
            distributionTouchpointId ?? this.distributionTouchpointId,
        serviceId: serviceId ?? this.serviceId,
        customerProfileId: customerProfileId ?? this.customerProfileId,
        temporalValidityId: temporalValidityId ?? this.temporalValidityId,
        promotionAssignmentId:
            promotionAssignmentId ?? this.promotionAssignmentId,
        quantity: quantity ?? this.quantity);
  }

  BasketItem copyWithWrapped(
      {Wrapped<String>? itemType,
      Wrapped<String>? itemId,
      Wrapped<int>? itemVersion,
      Wrapped<String>? date,
      Wrapped<String?>? fareTableCellId,
      Wrapped<enums.BasketItemMediaType?>? mediaType,
      Wrapped<String?>? validityPeriodId,
      Wrapped<String?>? fareZoneId,
      Wrapped<String?>? geographicalId,
      Wrapped<String?>? distributionTouchpointType,
      Wrapped<String?>? distributionTouchpointId,
      Wrapped<String?>? serviceId,
      Wrapped<String?>? customerProfileId,
      Wrapped<String?>? temporalValidityId,
      Wrapped<String?>? promotionAssignmentId,
      Wrapped<int>? quantity}) {
    return BasketItem(
        itemType: (itemType != null ? itemType.value : this.itemType),
        itemId: (itemId != null ? itemId.value : this.itemId),
        itemVersion:
            (itemVersion != null ? itemVersion.value : this.itemVersion),
        date: (date != null ? date.value : this.date),
        fareTableCellId: (fareTableCellId != null
            ? fareTableCellId.value
            : this.fareTableCellId),
        mediaType: (mediaType != null ? mediaType.value : this.mediaType),
        validityPeriodId: (validityPeriodId != null
            ? validityPeriodId.value
            : this.validityPeriodId),
        fareZoneId: (fareZoneId != null ? fareZoneId.value : this.fareZoneId),
        geographicalId: (geographicalId != null
            ? geographicalId.value
            : this.geographicalId),
        distributionTouchpointType: (distributionTouchpointType != null
            ? distributionTouchpointType.value
            : this.distributionTouchpointType),
        distributionTouchpointId: (distributionTouchpointId != null
            ? distributionTouchpointId.value
            : this.distributionTouchpointId),
        serviceId: (serviceId != null ? serviceId.value : this.serviceId),
        customerProfileId: (customerProfileId != null
            ? customerProfileId.value
            : this.customerProfileId),
        temporalValidityId: (temporalValidityId != null
            ? temporalValidityId.value
            : this.temporalValidityId),
        promotionAssignmentId: (promotionAssignmentId != null
            ? promotionAssignmentId.value
            : this.promotionAssignmentId),
        quantity: (quantity != null ? quantity.value : this.quantity));
  }
}

@JsonSerializable(explicitToJson: true)
class BasketCart {
  const BasketCart({
    required this.items,
  });

  factory BasketCart.fromJson(Map<String, dynamic> json) =>
      _$BasketCartFromJson(json);

  static const toJsonFactory = _$BasketCartToJson;
  Map<String, dynamic> toJson() => _$BasketCartToJson(this);

  @JsonKey(name: 'items', defaultValue: <BasketItem>[])
  final List<BasketItem> items;
  static const fromJsonFactory = _$BasketCartFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BasketCart &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^ runtimeType.hashCode;
}

extension $BasketCartExtension on BasketCart {
  BasketCart copyWith({List<BasketItem>? items}) {
    return BasketCart(items: items ?? this.items);
  }

  BasketCart copyWithWrapped({Wrapped<List<BasketItem>>? items}) {
    return BasketCart(items: (items != null ? items.value : this.items));
  }
}

@JsonSerializable(explicitToJson: true)
class BasketPriceItem {
  const BasketPriceItem({
    required this.itemId,
    required this.itemName,
    required this.itemVersion,
    required this.fareTableCellId,
    required this.quantity,
    required this.ccy,
    required this.amount,
  });

  factory BasketPriceItem.fromJson(Map<String, dynamic> json) =>
      _$BasketPriceItemFromJson(json);

  static const toJsonFactory = _$BasketPriceItemToJson;
  Map<String, dynamic> toJson() => _$BasketPriceItemToJson(this);

  @JsonKey(name: 'itemId')
  final String itemId;
  @JsonKey(name: 'itemName')
  final String itemName;
  @JsonKey(name: 'itemVersion')
  final int itemVersion;
  @JsonKey(name: 'fareTableCellId')
  final String fareTableCellId;
  @JsonKey(name: 'quantity')
  final int quantity;
  @JsonKey(name: 'ccy')
  final String ccy;
  @JsonKey(name: 'amount')
  final double amount;
  static const fromJsonFactory = _$BasketPriceItemFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BasketPriceItem &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)) &&
            (identical(other.itemName, itemName) ||
                const DeepCollectionEquality()
                    .equals(other.itemName, itemName)) &&
            (identical(other.itemVersion, itemVersion) ||
                const DeepCollectionEquality()
                    .equals(other.itemVersion, itemVersion)) &&
            (identical(other.fareTableCellId, fareTableCellId) ||
                const DeepCollectionEquality()
                    .equals(other.fareTableCellId, fareTableCellId)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.ccy, ccy) ||
                const DeepCollectionEquality().equals(other.ccy, ccy)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(itemId) ^
      const DeepCollectionEquality().hash(itemName) ^
      const DeepCollectionEquality().hash(itemVersion) ^
      const DeepCollectionEquality().hash(fareTableCellId) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(ccy) ^
      const DeepCollectionEquality().hash(amount) ^
      runtimeType.hashCode;
}

extension $BasketPriceItemExtension on BasketPriceItem {
  BasketPriceItem copyWith(
      {String? itemId,
      String? itemName,
      int? itemVersion,
      String? fareTableCellId,
      int? quantity,
      String? ccy,
      double? amount}) {
    return BasketPriceItem(
        itemId: itemId ?? this.itemId,
        itemName: itemName ?? this.itemName,
        itemVersion: itemVersion ?? this.itemVersion,
        fareTableCellId: fareTableCellId ?? this.fareTableCellId,
        quantity: quantity ?? this.quantity,
        ccy: ccy ?? this.ccy,
        amount: amount ?? this.amount);
  }

  BasketPriceItem copyWithWrapped(
      {Wrapped<String>? itemId,
      Wrapped<String>? itemName,
      Wrapped<int>? itemVersion,
      Wrapped<String>? fareTableCellId,
      Wrapped<int>? quantity,
      Wrapped<String>? ccy,
      Wrapped<double>? amount}) {
    return BasketPriceItem(
        itemId: (itemId != null ? itemId.value : this.itemId),
        itemName: (itemName != null ? itemName.value : this.itemName),
        itemVersion:
            (itemVersion != null ? itemVersion.value : this.itemVersion),
        fareTableCellId: (fareTableCellId != null
            ? fareTableCellId.value
            : this.fareTableCellId),
        quantity: (quantity != null ? quantity.value : this.quantity),
        ccy: (ccy != null ? ccy.value : this.ccy),
        amount: (amount != null ? amount.value : this.amount));
  }
}

@JsonSerializable(explicitToJson: true)
class BasketPrice {
  const BasketPrice({
    required this.totalAmount,
    required this.ccy,
    this.items,
  });

  factory BasketPrice.fromJson(Map<String, dynamic> json) =>
      _$BasketPriceFromJson(json);

  static const toJsonFactory = _$BasketPriceToJson;
  Map<String, dynamic> toJson() => _$BasketPriceToJson(this);

  @JsonKey(name: 'totalAmount')
  final double totalAmount;
  @JsonKey(name: 'ccy')
  final String ccy;
  @JsonKey(name: 'items', defaultValue: <BasketPriceItem>[])
  final List<BasketPriceItem>? items;
  static const fromJsonFactory = _$BasketPriceFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BasketPrice &&
            (identical(other.totalAmount, totalAmount) ||
                const DeepCollectionEquality()
                    .equals(other.totalAmount, totalAmount)) &&
            (identical(other.ccy, ccy) ||
                const DeepCollectionEquality().equals(other.ccy, ccy)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalAmount) ^
      const DeepCollectionEquality().hash(ccy) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $BasketPriceExtension on BasketPrice {
  BasketPrice copyWith(
      {double? totalAmount, String? ccy, List<BasketPriceItem>? items}) {
    return BasketPrice(
        totalAmount: totalAmount ?? this.totalAmount,
        ccy: ccy ?? this.ccy,
        items: items ?? this.items);
  }

  BasketPrice copyWithWrapped(
      {Wrapped<double>? totalAmount,
      Wrapped<String>? ccy,
      Wrapped<List<BasketPriceItem>?>? items}) {
    return BasketPrice(
        totalAmount:
            (totalAmount != null ? totalAmount.value : this.totalAmount),
        ccy: (ccy != null ? ccy.value : this.ccy),
        items: (items != null ? items.value : this.items));
  }
}

@JsonSerializable(explicitToJson: true)
class TopUpAllowableAmount {
  const TopUpAllowableAmount({
    this.value,
    this.startDate,
    this.endDate,
  });

  factory TopUpAllowableAmount.fromJson(Map<String, dynamic> json) =>
      _$TopUpAllowableAmountFromJson(json);

  static const toJsonFactory = _$TopUpAllowableAmountToJson;
  Map<String, dynamic> toJson() => _$TopUpAllowableAmountToJson(this);

  @JsonKey(name: 'value')
  final double? value;
  @JsonKey(name: 'startDate', toJson: _dateToJson)
  final DateTime? startDate;
  @JsonKey(name: 'endDate', toJson: _dateToJson)
  final DateTime? endDate;
  static const fromJsonFactory = _$TopUpAllowableAmountFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TopUpAllowableAmount &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality().equals(other.endDate, endDate)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      runtimeType.hashCode;
}

extension $TopUpAllowableAmountExtension on TopUpAllowableAmount {
  TopUpAllowableAmount copyWith(
      {double? value, DateTime? startDate, DateTime? endDate}) {
    return TopUpAllowableAmount(
        value: value ?? this.value,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate);
  }

  TopUpAllowableAmount copyWithWrapped(
      {Wrapped<double?>? value,
      Wrapped<DateTime?>? startDate,
      Wrapped<DateTime?>? endDate}) {
    return TopUpAllowableAmount(
        value: (value != null ? value.value : this.value),
        startDate: (startDate != null ? startDate.value : this.startDate),
        endDate: (endDate != null ? endDate.value : this.endDate));
  }
}

@JsonSerializable(explicitToJson: true)
class ChargeLimitData {
  const ChargeLimitData({
    this.epurse,
    this.monthly,
    this.weekly,
    this.daily,
  });

  factory ChargeLimitData.fromJson(Map<String, dynamic> json) =>
      _$ChargeLimitDataFromJson(json);

  static const toJsonFactory = _$ChargeLimitDataToJson;
  Map<String, dynamic> toJson() => _$ChargeLimitDataToJson(this);

  @JsonKey(name: 'epurse')
  final Epurse? epurse;
  @JsonKey(name: 'monthly')
  final Threshold? monthly;
  @JsonKey(name: 'weekly')
  final Threshold? weekly;
  @JsonKey(name: 'daily')
  final Threshold? daily;
  static const fromJsonFactory = _$ChargeLimitDataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChargeLimitData &&
            (identical(other.epurse, epurse) ||
                const DeepCollectionEquality().equals(other.epurse, epurse)) &&
            (identical(other.monthly, monthly) ||
                const DeepCollectionEquality()
                    .equals(other.monthly, monthly)) &&
            (identical(other.weekly, weekly) ||
                const DeepCollectionEquality().equals(other.weekly, weekly)) &&
            (identical(other.daily, daily) ||
                const DeepCollectionEquality().equals(other.daily, daily)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(epurse) ^
      const DeepCollectionEquality().hash(monthly) ^
      const DeepCollectionEquality().hash(weekly) ^
      const DeepCollectionEquality().hash(daily) ^
      runtimeType.hashCode;
}

extension $ChargeLimitDataExtension on ChargeLimitData {
  ChargeLimitData copyWith(
      {Epurse? epurse,
      Threshold? monthly,
      Threshold? weekly,
      Threshold? daily}) {
    return ChargeLimitData(
        epurse: epurse ?? this.epurse,
        monthly: monthly ?? this.monthly,
        weekly: weekly ?? this.weekly,
        daily: daily ?? this.daily);
  }

  ChargeLimitData copyWithWrapped(
      {Wrapped<Epurse?>? epurse,
      Wrapped<Threshold?>? monthly,
      Wrapped<Threshold?>? weekly,
      Wrapped<Threshold?>? daily}) {
    return ChargeLimitData(
        epurse: (epurse != null ? epurse.value : this.epurse),
        monthly: (monthly != null ? monthly.value : this.monthly),
        weekly: (weekly != null ? weekly.value : this.weekly),
        daily: (daily != null ? daily.value : this.daily));
  }
}

@JsonSerializable(explicitToJson: true)
class Threshold {
  const Threshold({
    this.platfond,
    this.residual,
  });

  factory Threshold.fromJson(Map<String, dynamic> json) =>
      _$ThresholdFromJson(json);

  static const toJsonFactory = _$ThresholdToJson;
  Map<String, dynamic> toJson() => _$ThresholdToJson(this);

  @JsonKey(name: 'platfond')
  final double? platfond;
  @JsonKey(name: 'residual')
  final double? residual;
  static const fromJsonFactory = _$ThresholdFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Threshold &&
            (identical(other.platfond, platfond) ||
                const DeepCollectionEquality()
                    .equals(other.platfond, platfond)) &&
            (identical(other.residual, residual) ||
                const DeepCollectionEquality()
                    .equals(other.residual, residual)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(platfond) ^
      const DeepCollectionEquality().hash(residual) ^
      runtimeType.hashCode;
}

extension $ThresholdExtension on Threshold {
  Threshold copyWith({double? platfond, double? residual}) {
    return Threshold(
        platfond: platfond ?? this.platfond,
        residual: residual ?? this.residual);
  }

  Threshold copyWithWrapped(
      {Wrapped<double?>? platfond, Wrapped<double?>? residual}) {
    return Threshold(
        platfond: (platfond != null ? platfond.value : this.platfond),
        residual: (residual != null ? residual.value : this.residual));
  }
}

@JsonSerializable(explicitToJson: true)
class Epurse {
  const Epurse({
    this.epurseId,
    this.ownerId,
    this.ownerType,
    this.status,
    this.openDate,
    this.closeDate,
    this.summary,
    this.epurseDetail,
  });

  factory Epurse.fromJson(Map<String, dynamic> json) => _$EpurseFromJson(json);

  static const toJsonFactory = _$EpurseToJson;
  Map<String, dynamic> toJson() => _$EpurseToJson(this);

  @JsonKey(name: 'epurseId')
  final String? epurseId;
  @JsonKey(name: 'ownerId')
  final String? ownerId;
  @JsonKey(
    name: 'ownerType',
    toJson: ownerTypeEnumNullableToJson,
    fromJson: ownerTypeEnumNullableFromJson,
  )
  final enums.OwnerTypeEnum? ownerType;
  @JsonKey(
    name: 'status',
    toJson: epurseStatusEnumNullableToJson,
    fromJson: epurseStatusEnumNullableFromJson,
  )
  final enums.EpurseStatusEnum? status;
  @JsonKey(name: 'openDate', toJson: _dateToJson)
  final DateTime? openDate;
  @JsonKey(name: 'closeDate', toJson: _dateToJson)
  final DateTime? closeDate;
  @JsonKey(name: 'summary')
  final CurrentSummary? summary;
  @JsonKey(name: 'epurseDetail')
  final EpurseDetail? epurseDetail;
  static const fromJsonFactory = _$EpurseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Epurse &&
            (identical(other.epurseId, epurseId) ||
                const DeepCollectionEquality()
                    .equals(other.epurseId, epurseId)) &&
            (identical(other.ownerId, ownerId) ||
                const DeepCollectionEquality()
                    .equals(other.ownerId, ownerId)) &&
            (identical(other.ownerType, ownerType) ||
                const DeepCollectionEquality()
                    .equals(other.ownerType, ownerType)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.openDate, openDate) ||
                const DeepCollectionEquality()
                    .equals(other.openDate, openDate)) &&
            (identical(other.closeDate, closeDate) ||
                const DeepCollectionEquality()
                    .equals(other.closeDate, closeDate)) &&
            (identical(other.summary, summary) ||
                const DeepCollectionEquality()
                    .equals(other.summary, summary)) &&
            (identical(other.epurseDetail, epurseDetail) ||
                const DeepCollectionEquality()
                    .equals(other.epurseDetail, epurseDetail)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(epurseId) ^
      const DeepCollectionEquality().hash(ownerId) ^
      const DeepCollectionEquality().hash(ownerType) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(openDate) ^
      const DeepCollectionEquality().hash(closeDate) ^
      const DeepCollectionEquality().hash(summary) ^
      const DeepCollectionEquality().hash(epurseDetail) ^
      runtimeType.hashCode;
}

extension $EpurseExtension on Epurse {
  Epurse copyWith(
      {String? epurseId,
      String? ownerId,
      enums.OwnerTypeEnum? ownerType,
      enums.EpurseStatusEnum? status,
      DateTime? openDate,
      DateTime? closeDate,
      CurrentSummary? summary,
      EpurseDetail? epurseDetail}) {
    return Epurse(
        epurseId: epurseId ?? this.epurseId,
        ownerId: ownerId ?? this.ownerId,
        ownerType: ownerType ?? this.ownerType,
        status: status ?? this.status,
        openDate: openDate ?? this.openDate,
        closeDate: closeDate ?? this.closeDate,
        summary: summary ?? this.summary,
        epurseDetail: epurseDetail ?? this.epurseDetail);
  }

  Epurse copyWithWrapped(
      {Wrapped<String?>? epurseId,
      Wrapped<String?>? ownerId,
      Wrapped<enums.OwnerTypeEnum?>? ownerType,
      Wrapped<enums.EpurseStatusEnum?>? status,
      Wrapped<DateTime?>? openDate,
      Wrapped<DateTime?>? closeDate,
      Wrapped<CurrentSummary?>? summary,
      Wrapped<EpurseDetail?>? epurseDetail}) {
    return Epurse(
        epurseId: (epurseId != null ? epurseId.value : this.epurseId),
        ownerId: (ownerId != null ? ownerId.value : this.ownerId),
        ownerType: (ownerType != null ? ownerType.value : this.ownerType),
        status: (status != null ? status.value : this.status),
        openDate: (openDate != null ? openDate.value : this.openDate),
        closeDate: (closeDate != null ? closeDate.value : this.closeDate),
        summary: (summary != null ? summary.value : this.summary),
        epurseDetail:
            (epurseDetail != null ? epurseDetail.value : this.epurseDetail));
  }
}

@JsonSerializable(explicitToJson: true)
class EpurseDetail {
  const EpurseDetail({
    this.transactions,
    this.lists,
  });

  factory EpurseDetail.fromJson(Map<String, dynamic> json) =>
      _$EpurseDetailFromJson(json);

  static const toJsonFactory = _$EpurseDetailToJson;
  Map<String, dynamic> toJson() => _$EpurseDetailToJson(this);

  @JsonKey(name: 'transactions', defaultValue: <TransactionsApi>[])
  final List<TransactionsApi>? transactions;
  @JsonKey(name: 'lists', defaultValue: <ListLog>[])
  final List<ListLog>? lists;
  static const fromJsonFactory = _$EpurseDetailFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EpurseDetail &&
            (identical(other.transactions, transactions) ||
                const DeepCollectionEquality()
                    .equals(other.transactions, transactions)) &&
            (identical(other.lists, lists) ||
                const DeepCollectionEquality().equals(other.lists, lists)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transactions) ^
      const DeepCollectionEquality().hash(lists) ^
      runtimeType.hashCode;
}

extension $EpurseDetailExtension on EpurseDetail {
  EpurseDetail copyWith(
      {List<TransactionsApi>? transactions, List<ListLog>? lists}) {
    return EpurseDetail(
        transactions: transactions ?? this.transactions,
        lists: lists ?? this.lists);
  }

  EpurseDetail copyWithWrapped(
      {Wrapped<List<TransactionsApi>?>? transactions,
      Wrapped<List<ListLog>?>? lists}) {
    return EpurseDetail(
        transactions:
            (transactions != null ? transactions.value : this.transactions),
        lists: (lists != null ? lists.value : this.lists));
  }
}

@JsonSerializable(explicitToJson: true)
class CurrentSummary {
  const CurrentSummary({
    this.epurseId,
    this.accountBalance,
    this.availableBalance,
    this.dateBalance,
  });

  factory CurrentSummary.fromJson(Map<String, dynamic> json) =>
      _$CurrentSummaryFromJson(json);

  static const toJsonFactory = _$CurrentSummaryToJson;
  Map<String, dynamic> toJson() => _$CurrentSummaryToJson(this);

  @JsonKey(name: 'epurseId')
  final String? epurseId;
  @JsonKey(name: 'accountBalance')
  final double? accountBalance;
  @JsonKey(name: 'availableBalance')
  final double? availableBalance;
  @JsonKey(name: 'dateBalance', toJson: _dateToJson)
  final DateTime? dateBalance;
  static const fromJsonFactory = _$CurrentSummaryFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CurrentSummary &&
            (identical(other.epurseId, epurseId) ||
                const DeepCollectionEquality()
                    .equals(other.epurseId, epurseId)) &&
            (identical(other.accountBalance, accountBalance) ||
                const DeepCollectionEquality()
                    .equals(other.accountBalance, accountBalance)) &&
            (identical(other.availableBalance, availableBalance) ||
                const DeepCollectionEquality()
                    .equals(other.availableBalance, availableBalance)) &&
            (identical(other.dateBalance, dateBalance) ||
                const DeepCollectionEquality()
                    .equals(other.dateBalance, dateBalance)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(epurseId) ^
      const DeepCollectionEquality().hash(accountBalance) ^
      const DeepCollectionEquality().hash(availableBalance) ^
      const DeepCollectionEquality().hash(dateBalance) ^
      runtimeType.hashCode;
}

extension $CurrentSummaryExtension on CurrentSummary {
  CurrentSummary copyWith(
      {String? epurseId,
      double? accountBalance,
      double? availableBalance,
      DateTime? dateBalance}) {
    return CurrentSummary(
        epurseId: epurseId ?? this.epurseId,
        accountBalance: accountBalance ?? this.accountBalance,
        availableBalance: availableBalance ?? this.availableBalance,
        dateBalance: dateBalance ?? this.dateBalance);
  }

  CurrentSummary copyWithWrapped(
      {Wrapped<String?>? epurseId,
      Wrapped<double?>? accountBalance,
      Wrapped<double?>? availableBalance,
      Wrapped<DateTime?>? dateBalance}) {
    return CurrentSummary(
        epurseId: (epurseId != null ? epurseId.value : this.epurseId),
        accountBalance: (accountBalance != null
            ? accountBalance.value
            : this.accountBalance),
        availableBalance: (availableBalance != null
            ? availableBalance.value
            : this.availableBalance),
        dateBalance:
            (dateBalance != null ? dateBalance.value : this.dateBalance));
  }
}

@JsonSerializable(explicitToJson: true)
class Transactions {
  const Transactions({
    this.transactionId,
    this.codTransactionType,
    this.note,
    this.refExternalTransaction,
    this.transactionResult,
    this.token,
    this.codInvoice,
    this.workshiftId,
  });

  factory Transactions.fromJson(Map<String, dynamic> json) =>
      _$TransactionsFromJson(json);

  static const toJsonFactory = _$TransactionsToJson;
  Map<String, dynamic> toJson() => _$TransactionsToJson(this);

  @JsonKey(name: 'transactionId')
  final String? transactionId;
  @JsonKey(
    name: 'codTransactionType',
    toJson: transactionTypeEnumNullableToJson,
    fromJson: transactionTypeEnumNullableFromJson,
  )
  final enums.TransactionTypeEnum? codTransactionType;
  @JsonKey(name: 'note')
  final String? note;
  @JsonKey(name: 'refExternalTransaction')
  final String? refExternalTransaction;
  @JsonKey(
    name: 'transactionResult',
    toJson: transactionResultTypeEnumNullableToJson,
    fromJson: transactionResultTypeEnumNullableFromJson,
  )
  final enums.TransactionResultTypeEnum? transactionResult;
  @JsonKey(name: 'token')
  final String? token;
  @JsonKey(name: 'codInvoice')
  final String? codInvoice;
  @JsonKey(name: 'workshiftId')
  final String? workshiftId;
  static const fromJsonFactory = _$TransactionsFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Transactions &&
            (identical(other.transactionId, transactionId) ||
                const DeepCollectionEquality()
                    .equals(other.transactionId, transactionId)) &&
            (identical(other.codTransactionType, codTransactionType) ||
                const DeepCollectionEquality()
                    .equals(other.codTransactionType, codTransactionType)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.refExternalTransaction, refExternalTransaction) ||
                const DeepCollectionEquality().equals(
                    other.refExternalTransaction, refExternalTransaction)) &&
            (identical(other.transactionResult, transactionResult) ||
                const DeepCollectionEquality()
                    .equals(other.transactionResult, transactionResult)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.codInvoice, codInvoice) ||
                const DeepCollectionEquality()
                    .equals(other.codInvoice, codInvoice)) &&
            (identical(other.workshiftId, workshiftId) ||
                const DeepCollectionEquality()
                    .equals(other.workshiftId, workshiftId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transactionId) ^
      const DeepCollectionEquality().hash(codTransactionType) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(refExternalTransaction) ^
      const DeepCollectionEquality().hash(transactionResult) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(codInvoice) ^
      const DeepCollectionEquality().hash(workshiftId) ^
      runtimeType.hashCode;
}

extension $TransactionsExtension on Transactions {
  Transactions copyWith(
      {String? transactionId,
      enums.TransactionTypeEnum? codTransactionType,
      String? note,
      String? refExternalTransaction,
      enums.TransactionResultTypeEnum? transactionResult,
      String? token,
      String? codInvoice,
      String? workshiftId}) {
    return Transactions(
        transactionId: transactionId ?? this.transactionId,
        codTransactionType: codTransactionType ?? this.codTransactionType,
        note: note ?? this.note,
        refExternalTransaction:
            refExternalTransaction ?? this.refExternalTransaction,
        transactionResult: transactionResult ?? this.transactionResult,
        token: token ?? this.token,
        codInvoice: codInvoice ?? this.codInvoice,
        workshiftId: workshiftId ?? this.workshiftId);
  }

  Transactions copyWithWrapped(
      {Wrapped<String?>? transactionId,
      Wrapped<enums.TransactionTypeEnum?>? codTransactionType,
      Wrapped<String?>? note,
      Wrapped<String?>? refExternalTransaction,
      Wrapped<enums.TransactionResultTypeEnum?>? transactionResult,
      Wrapped<String?>? token,
      Wrapped<String?>? codInvoice,
      Wrapped<String?>? workshiftId}) {
    return Transactions(
        transactionId:
            (transactionId != null ? transactionId.value : this.transactionId),
        codTransactionType: (codTransactionType != null
            ? codTransactionType.value
            : this.codTransactionType),
        note: (note != null ? note.value : this.note),
        refExternalTransaction: (refExternalTransaction != null
            ? refExternalTransaction.value
            : this.refExternalTransaction),
        transactionResult: (transactionResult != null
            ? transactionResult.value
            : this.transactionResult),
        token: (token != null ? token.value : this.token),
        codInvoice: (codInvoice != null ? codInvoice.value : this.codInvoice),
        workshiftId:
            (workshiftId != null ? workshiftId.value : this.workshiftId));
  }
}

@JsonSerializable(explicitToJson: true)
class TransactionCharge {
  const TransactionCharge({
    this.amount,
    this.ccy,
    this.transactionId,
    this.codTransactionType,
    this.note,
    this.refExternalTransaction,
    this.transactionResult,
    this.token,
    this.codInvoice,
    this.workshiftId,
  });

  factory TransactionCharge.fromJson(Map<String, dynamic> json) =>
      _$TransactionChargeFromJson(json);

  static const toJsonFactory = _$TransactionChargeToJson;
  Map<String, dynamic> toJson() => _$TransactionChargeToJson(this);

  @JsonKey(name: 'amount')
  final double? amount;
  @JsonKey(name: 'ccy')
  final String? ccy;
  @JsonKey(name: 'transactionId')
  final String? transactionId;
  @JsonKey(
    name: 'codTransactionType',
    toJson: transactionTypeEnumNullableToJson,
    fromJson: transactionTypeEnumNullableFromJson,
  )
  final enums.TransactionTypeEnum? codTransactionType;
  @JsonKey(name: 'note')
  final String? note;
  @JsonKey(name: 'refExternalTransaction')
  final String? refExternalTransaction;
  @JsonKey(
    name: 'transactionResult',
    toJson: transactionResultTypeEnumNullableToJson,
    fromJson: transactionResultTypeEnumNullableFromJson,
  )
  final enums.TransactionResultTypeEnum? transactionResult;
  @JsonKey(name: 'token')
  final String? token;
  @JsonKey(name: 'codInvoice')
  final String? codInvoice;
  @JsonKey(name: 'workshiftId')
  final String? workshiftId;
  static const fromJsonFactory = _$TransactionChargeFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransactionCharge &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.ccy, ccy) ||
                const DeepCollectionEquality().equals(other.ccy, ccy)) &&
            (identical(other.transactionId, transactionId) ||
                const DeepCollectionEquality()
                    .equals(other.transactionId, transactionId)) &&
            (identical(other.codTransactionType, codTransactionType) ||
                const DeepCollectionEquality()
                    .equals(other.codTransactionType, codTransactionType)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.refExternalTransaction, refExternalTransaction) ||
                const DeepCollectionEquality().equals(
                    other.refExternalTransaction, refExternalTransaction)) &&
            (identical(other.transactionResult, transactionResult) ||
                const DeepCollectionEquality()
                    .equals(other.transactionResult, transactionResult)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.codInvoice, codInvoice) ||
                const DeepCollectionEquality()
                    .equals(other.codInvoice, codInvoice)) &&
            (identical(other.workshiftId, workshiftId) ||
                const DeepCollectionEquality()
                    .equals(other.workshiftId, workshiftId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(ccy) ^
      const DeepCollectionEquality().hash(transactionId) ^
      const DeepCollectionEquality().hash(codTransactionType) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(refExternalTransaction) ^
      const DeepCollectionEquality().hash(transactionResult) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(codInvoice) ^
      const DeepCollectionEquality().hash(workshiftId) ^
      runtimeType.hashCode;
}

extension $TransactionChargeExtension on TransactionCharge {
  TransactionCharge copyWith(
      {double? amount,
      String? ccy,
      String? transactionId,
      enums.TransactionTypeEnum? codTransactionType,
      String? note,
      String? refExternalTransaction,
      enums.TransactionResultTypeEnum? transactionResult,
      String? token,
      String? codInvoice,
      String? workshiftId}) {
    return TransactionCharge(
        amount: amount ?? this.amount,
        ccy: ccy ?? this.ccy,
        transactionId: transactionId ?? this.transactionId,
        codTransactionType: codTransactionType ?? this.codTransactionType,
        note: note ?? this.note,
        refExternalTransaction:
            refExternalTransaction ?? this.refExternalTransaction,
        transactionResult: transactionResult ?? this.transactionResult,
        token: token ?? this.token,
        codInvoice: codInvoice ?? this.codInvoice,
        workshiftId: workshiftId ?? this.workshiftId);
  }

  TransactionCharge copyWithWrapped(
      {Wrapped<double?>? amount,
      Wrapped<String?>? ccy,
      Wrapped<String?>? transactionId,
      Wrapped<enums.TransactionTypeEnum?>? codTransactionType,
      Wrapped<String?>? note,
      Wrapped<String?>? refExternalTransaction,
      Wrapped<enums.TransactionResultTypeEnum?>? transactionResult,
      Wrapped<String?>? token,
      Wrapped<String?>? codInvoice,
      Wrapped<String?>? workshiftId}) {
    return TransactionCharge(
        amount: (amount != null ? amount.value : this.amount),
        ccy: (ccy != null ? ccy.value : this.ccy),
        transactionId:
            (transactionId != null ? transactionId.value : this.transactionId),
        codTransactionType: (codTransactionType != null
            ? codTransactionType.value
            : this.codTransactionType),
        note: (note != null ? note.value : this.note),
        refExternalTransaction: (refExternalTransaction != null
            ? refExternalTransaction.value
            : this.refExternalTransaction),
        transactionResult: (transactionResult != null
            ? transactionResult.value
            : this.transactionResult),
        token: (token != null ? token.value : this.token),
        codInvoice: (codInvoice != null ? codInvoice.value : this.codInvoice),
        workshiftId:
            (workshiftId != null ? workshiftId.value : this.workshiftId));
  }
}

@JsonSerializable(explicitToJson: true)
class TransactionTopUp {
  const TransactionTopUp({
    this.amount,
    this.ccy,
    this.creditAmount,
    this.paymentMethod,
    this.creditNotes,
    this.numDiscountPerc,
    this.numDiscountAmount,
    this.strDiscountNotes,
    this.transactionId,
    this.codTransactionType,
    this.note,
    this.refExternalTransaction,
    this.transactionResult,
    this.token,
    this.codInvoice,
    this.workshiftId,
  });

  factory TransactionTopUp.fromJson(Map<String, dynamic> json) =>
      _$TransactionTopUpFromJson(json);

  static const toJsonFactory = _$TransactionTopUpToJson;
  Map<String, dynamic> toJson() => _$TransactionTopUpToJson(this);

  @JsonKey(name: 'amount')
  final double? amount;
  @JsonKey(name: 'ccy')
  final String? ccy;
  @JsonKey(name: 'creditAmount')
  final double? creditAmount;
  @JsonKey(
    name: 'paymentMethod',
    toJson: paymentTypeEnumNullableToJson,
    fromJson: paymentTypeEnumNullableFromJson,
  )
  final enums.PaymentTypeEnum? paymentMethod;
  @JsonKey(name: 'creditNotes')
  final String? creditNotes;
  @JsonKey(name: 'numDiscountPerc')
  final double? numDiscountPerc;
  @JsonKey(name: 'numDiscountAmount')
  final double? numDiscountAmount;
  @JsonKey(name: 'strDiscountNotes')
  final String? strDiscountNotes;
  @JsonKey(name: 'transactionId')
  final String? transactionId;
  @JsonKey(
    name: 'codTransactionType',
    toJson: transactionTypeEnumNullableToJson,
    fromJson: transactionTypeEnumNullableFromJson,
  )
  final enums.TransactionTypeEnum? codTransactionType;
  @JsonKey(name: 'note')
  final String? note;
  @JsonKey(name: 'refExternalTransaction')
  final String? refExternalTransaction;
  @JsonKey(
    name: 'transactionResult',
    toJson: transactionResultTypeEnumNullableToJson,
    fromJson: transactionResultTypeEnumNullableFromJson,
  )
  final enums.TransactionResultTypeEnum? transactionResult;
  @JsonKey(name: 'token')
  final String? token;
  @JsonKey(name: 'codInvoice')
  final String? codInvoice;
  @JsonKey(name: 'workshiftId')
  final String? workshiftId;
  static const fromJsonFactory = _$TransactionTopUpFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransactionTopUp &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.ccy, ccy) ||
                const DeepCollectionEquality().equals(other.ccy, ccy)) &&
            (identical(other.creditAmount, creditAmount) ||
                const DeepCollectionEquality()
                    .equals(other.creditAmount, creditAmount)) &&
            (identical(other.paymentMethod, paymentMethod) ||
                const DeepCollectionEquality()
                    .equals(other.paymentMethod, paymentMethod)) &&
            (identical(other.creditNotes, creditNotes) ||
                const DeepCollectionEquality()
                    .equals(other.creditNotes, creditNotes)) &&
            (identical(other.numDiscountPerc, numDiscountPerc) ||
                const DeepCollectionEquality()
                    .equals(other.numDiscountPerc, numDiscountPerc)) &&
            (identical(other.numDiscountAmount, numDiscountAmount) ||
                const DeepCollectionEquality()
                    .equals(other.numDiscountAmount, numDiscountAmount)) &&
            (identical(other.strDiscountNotes, strDiscountNotes) ||
                const DeepCollectionEquality()
                    .equals(other.strDiscountNotes, strDiscountNotes)) &&
            (identical(other.transactionId, transactionId) ||
                const DeepCollectionEquality()
                    .equals(other.transactionId, transactionId)) &&
            (identical(other.codTransactionType, codTransactionType) ||
                const DeepCollectionEquality()
                    .equals(other.codTransactionType, codTransactionType)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.refExternalTransaction, refExternalTransaction) ||
                const DeepCollectionEquality().equals(
                    other.refExternalTransaction, refExternalTransaction)) &&
            (identical(other.transactionResult, transactionResult) ||
                const DeepCollectionEquality()
                    .equals(other.transactionResult, transactionResult)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.codInvoice, codInvoice) ||
                const DeepCollectionEquality()
                    .equals(other.codInvoice, codInvoice)) &&
            (identical(other.workshiftId, workshiftId) ||
                const DeepCollectionEquality()
                    .equals(other.workshiftId, workshiftId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(ccy) ^
      const DeepCollectionEquality().hash(creditAmount) ^
      const DeepCollectionEquality().hash(paymentMethod) ^
      const DeepCollectionEquality().hash(creditNotes) ^
      const DeepCollectionEquality().hash(numDiscountPerc) ^
      const DeepCollectionEquality().hash(numDiscountAmount) ^
      const DeepCollectionEquality().hash(strDiscountNotes) ^
      const DeepCollectionEquality().hash(transactionId) ^
      const DeepCollectionEquality().hash(codTransactionType) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(refExternalTransaction) ^
      const DeepCollectionEquality().hash(transactionResult) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(codInvoice) ^
      const DeepCollectionEquality().hash(workshiftId) ^
      runtimeType.hashCode;
}

extension $TransactionTopUpExtension on TransactionTopUp {
  TransactionTopUp copyWith(
      {double? amount,
      String? ccy,
      double? creditAmount,
      enums.PaymentTypeEnum? paymentMethod,
      String? creditNotes,
      double? numDiscountPerc,
      double? numDiscountAmount,
      String? strDiscountNotes,
      String? transactionId,
      enums.TransactionTypeEnum? codTransactionType,
      String? note,
      String? refExternalTransaction,
      enums.TransactionResultTypeEnum? transactionResult,
      String? token,
      String? codInvoice,
      String? workshiftId}) {
    return TransactionTopUp(
        amount: amount ?? this.amount,
        ccy: ccy ?? this.ccy,
        creditAmount: creditAmount ?? this.creditAmount,
        paymentMethod: paymentMethod ?? this.paymentMethod,
        creditNotes: creditNotes ?? this.creditNotes,
        numDiscountPerc: numDiscountPerc ?? this.numDiscountPerc,
        numDiscountAmount: numDiscountAmount ?? this.numDiscountAmount,
        strDiscountNotes: strDiscountNotes ?? this.strDiscountNotes,
        transactionId: transactionId ?? this.transactionId,
        codTransactionType: codTransactionType ?? this.codTransactionType,
        note: note ?? this.note,
        refExternalTransaction:
            refExternalTransaction ?? this.refExternalTransaction,
        transactionResult: transactionResult ?? this.transactionResult,
        token: token ?? this.token,
        codInvoice: codInvoice ?? this.codInvoice,
        workshiftId: workshiftId ?? this.workshiftId);
  }

  TransactionTopUp copyWithWrapped(
      {Wrapped<double?>? amount,
      Wrapped<String?>? ccy,
      Wrapped<double?>? creditAmount,
      Wrapped<enums.PaymentTypeEnum?>? paymentMethod,
      Wrapped<String?>? creditNotes,
      Wrapped<double?>? numDiscountPerc,
      Wrapped<double?>? numDiscountAmount,
      Wrapped<String?>? strDiscountNotes,
      Wrapped<String?>? transactionId,
      Wrapped<enums.TransactionTypeEnum?>? codTransactionType,
      Wrapped<String?>? note,
      Wrapped<String?>? refExternalTransaction,
      Wrapped<enums.TransactionResultTypeEnum?>? transactionResult,
      Wrapped<String?>? token,
      Wrapped<String?>? codInvoice,
      Wrapped<String?>? workshiftId}) {
    return TransactionTopUp(
        amount: (amount != null ? amount.value : this.amount),
        ccy: (ccy != null ? ccy.value : this.ccy),
        creditAmount:
            (creditAmount != null ? creditAmount.value : this.creditAmount),
        paymentMethod:
            (paymentMethod != null ? paymentMethod.value : this.paymentMethod),
        creditNotes:
            (creditNotes != null ? creditNotes.value : this.creditNotes),
        numDiscountPerc: (numDiscountPerc != null
            ? numDiscountPerc.value
            : this.numDiscountPerc),
        numDiscountAmount: (numDiscountAmount != null
            ? numDiscountAmount.value
            : this.numDiscountAmount),
        strDiscountNotes: (strDiscountNotes != null
            ? strDiscountNotes.value
            : this.strDiscountNotes),
        transactionId:
            (transactionId != null ? transactionId.value : this.transactionId),
        codTransactionType: (codTransactionType != null
            ? codTransactionType.value
            : this.codTransactionType),
        note: (note != null ? note.value : this.note),
        refExternalTransaction: (refExternalTransaction != null
            ? refExternalTransaction.value
            : this.refExternalTransaction),
        transactionResult: (transactionResult != null
            ? transactionResult.value
            : this.transactionResult),
        token: (token != null ? token.value : this.token),
        codInvoice: (codInvoice != null ? codInvoice.value : this.codInvoice),
        workshiftId:
            (workshiftId != null ? workshiftId.value : this.workshiftId));
  }
}

@JsonSerializable(explicitToJson: true)
class ListLog {
  const ListLog({
    this.listLogID,
    this.codInsertionType,
    this.codListType,
    this.note,
    this.codStatus,
  });

  factory ListLog.fromJson(Map<String, dynamic> json) =>
      _$ListLogFromJson(json);

  static const toJsonFactory = _$ListLogToJson;
  Map<String, dynamic> toJson() => _$ListLogToJson(this);

  @JsonKey(name: 'listLogID')
  final String? listLogID;
  @JsonKey(
    name: 'codInsertionType',
    toJson: listInsertionTypeEnumNullableToJson,
    fromJson: listInsertionTypeEnumNullableFromJson,
  )
  final enums.ListInsertionTypeEnum? codInsertionType;
  @JsonKey(
    name: 'codListType',
    toJson: listTypeEnumNullableToJson,
    fromJson: listTypeEnumNullableFromJson,
  )
  final enums.ListTypeEnum? codListType;
  @JsonKey(name: 'note')
  final String? note;
  @JsonKey(
    name: 'codStatus',
    toJson: statusListEnumNullableToJson,
    fromJson: statusListEnumNullableFromJson,
  )
  final enums.StatusListEnum? codStatus;
  static const fromJsonFactory = _$ListLogFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListLog &&
            (identical(other.listLogID, listLogID) ||
                const DeepCollectionEquality()
                    .equals(other.listLogID, listLogID)) &&
            (identical(other.codInsertionType, codInsertionType) ||
                const DeepCollectionEquality()
                    .equals(other.codInsertionType, codInsertionType)) &&
            (identical(other.codListType, codListType) ||
                const DeepCollectionEquality()
                    .equals(other.codListType, codListType)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.codStatus, codStatus) ||
                const DeepCollectionEquality()
                    .equals(other.codStatus, codStatus)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(listLogID) ^
      const DeepCollectionEquality().hash(codInsertionType) ^
      const DeepCollectionEquality().hash(codListType) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(codStatus) ^
      runtimeType.hashCode;
}

extension $ListLogExtension on ListLog {
  ListLog copyWith(
      {String? listLogID,
      enums.ListInsertionTypeEnum? codInsertionType,
      enums.ListTypeEnum? codListType,
      String? note,
      enums.StatusListEnum? codStatus}) {
    return ListLog(
        listLogID: listLogID ?? this.listLogID,
        codInsertionType: codInsertionType ?? this.codInsertionType,
        codListType: codListType ?? this.codListType,
        note: note ?? this.note,
        codStatus: codStatus ?? this.codStatus);
  }

  ListLog copyWithWrapped(
      {Wrapped<String?>? listLogID,
      Wrapped<enums.ListInsertionTypeEnum?>? codInsertionType,
      Wrapped<enums.ListTypeEnum?>? codListType,
      Wrapped<String?>? note,
      Wrapped<enums.StatusListEnum?>? codStatus}) {
    return ListLog(
        listLogID: (listLogID != null ? listLogID.value : this.listLogID),
        codInsertionType: (codInsertionType != null
            ? codInsertionType.value
            : this.codInsertionType),
        codListType:
            (codListType != null ? codListType.value : this.codListType),
        note: (note != null ? note.value : this.note),
        codStatus: (codStatus != null ? codStatus.value : this.codStatus));
  }
}

@JsonSerializable(explicitToJson: true)
class TransactionsApi {
  const TransactionsApi({
    this.transactionId,
    this.epurseId,
    this.codTransactionType,
    this.transactionDate,
    this.note,
    this.extCodTransaction,
    this.codInvoice,
    this.workshiftId,
    this.transactionResult,
    this.transactionsTopup,
    this.transactionsCharge,
  });

  factory TransactionsApi.fromJson(Map<String, dynamic> json) =>
      _$TransactionsApiFromJson(json);

  static const toJsonFactory = _$TransactionsApiToJson;
  Map<String, dynamic> toJson() => _$TransactionsApiToJson(this);

  @JsonKey(name: 'transactionId')
  final String? transactionId;
  @JsonKey(name: 'epurseId')
  final String? epurseId;
  @JsonKey(
    name: 'codTransactionType',
    toJson: transactionTypeEnumNullableToJson,
    fromJson: transactionTypeEnumNullableFromJson,
  )
  final enums.TransactionTypeEnum? codTransactionType;
  @JsonKey(name: 'transactionDate', toJson: _dateToJson)
  final DateTime? transactionDate;
  @JsonKey(name: 'note')
  final String? note;
  @JsonKey(name: 'extCodTransaction')
  final String? extCodTransaction;
  @JsonKey(name: 'codInvoice')
  final String? codInvoice;
  @JsonKey(name: 'workshiftId')
  final String? workshiftId;
  @JsonKey(
    name: 'transactionResult',
    toJson: transactionResultTypeEnumNullableToJson,
    fromJson: transactionResultTypeEnumNullableFromJson,
  )
  final enums.TransactionResultTypeEnum? transactionResult;
  @JsonKey(name: 'transactionsTopup')
  final TransactionsTopUpApi? transactionsTopup;
  @JsonKey(name: 'transactionsCharge')
  final TransactionsChargeApi? transactionsCharge;
  static const fromJsonFactory = _$TransactionsApiFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransactionsApi &&
            (identical(other.transactionId, transactionId) ||
                const DeepCollectionEquality()
                    .equals(other.transactionId, transactionId)) &&
            (identical(other.epurseId, epurseId) ||
                const DeepCollectionEquality()
                    .equals(other.epurseId, epurseId)) &&
            (identical(other.codTransactionType, codTransactionType) ||
                const DeepCollectionEquality()
                    .equals(other.codTransactionType, codTransactionType)) &&
            (identical(other.transactionDate, transactionDate) ||
                const DeepCollectionEquality()
                    .equals(other.transactionDate, transactionDate)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.extCodTransaction, extCodTransaction) ||
                const DeepCollectionEquality()
                    .equals(other.extCodTransaction, extCodTransaction)) &&
            (identical(other.codInvoice, codInvoice) ||
                const DeepCollectionEquality()
                    .equals(other.codInvoice, codInvoice)) &&
            (identical(other.workshiftId, workshiftId) ||
                const DeepCollectionEquality()
                    .equals(other.workshiftId, workshiftId)) &&
            (identical(other.transactionResult, transactionResult) ||
                const DeepCollectionEquality()
                    .equals(other.transactionResult, transactionResult)) &&
            (identical(other.transactionsTopup, transactionsTopup) ||
                const DeepCollectionEquality()
                    .equals(other.transactionsTopup, transactionsTopup)) &&
            (identical(other.transactionsCharge, transactionsCharge) ||
                const DeepCollectionEquality()
                    .equals(other.transactionsCharge, transactionsCharge)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transactionId) ^
      const DeepCollectionEquality().hash(epurseId) ^
      const DeepCollectionEquality().hash(codTransactionType) ^
      const DeepCollectionEquality().hash(transactionDate) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(extCodTransaction) ^
      const DeepCollectionEquality().hash(codInvoice) ^
      const DeepCollectionEquality().hash(workshiftId) ^
      const DeepCollectionEquality().hash(transactionResult) ^
      const DeepCollectionEquality().hash(transactionsTopup) ^
      const DeepCollectionEquality().hash(transactionsCharge) ^
      runtimeType.hashCode;
}

extension $TransactionsApiExtension on TransactionsApi {
  TransactionsApi copyWith(
      {String? transactionId,
      String? epurseId,
      enums.TransactionTypeEnum? codTransactionType,
      DateTime? transactionDate,
      String? note,
      String? extCodTransaction,
      String? codInvoice,
      String? workshiftId,
      enums.TransactionResultTypeEnum? transactionResult,
      TransactionsTopUpApi? transactionsTopup,
      TransactionsChargeApi? transactionsCharge}) {
    return TransactionsApi(
        transactionId: transactionId ?? this.transactionId,
        epurseId: epurseId ?? this.epurseId,
        codTransactionType: codTransactionType ?? this.codTransactionType,
        transactionDate: transactionDate ?? this.transactionDate,
        note: note ?? this.note,
        extCodTransaction: extCodTransaction ?? this.extCodTransaction,
        codInvoice: codInvoice ?? this.codInvoice,
        workshiftId: workshiftId ?? this.workshiftId,
        transactionResult: transactionResult ?? this.transactionResult,
        transactionsTopup: transactionsTopup ?? this.transactionsTopup,
        transactionsCharge: transactionsCharge ?? this.transactionsCharge);
  }

  TransactionsApi copyWithWrapped(
      {Wrapped<String?>? transactionId,
      Wrapped<String?>? epurseId,
      Wrapped<enums.TransactionTypeEnum?>? codTransactionType,
      Wrapped<DateTime?>? transactionDate,
      Wrapped<String?>? note,
      Wrapped<String?>? extCodTransaction,
      Wrapped<String?>? codInvoice,
      Wrapped<String?>? workshiftId,
      Wrapped<enums.TransactionResultTypeEnum?>? transactionResult,
      Wrapped<TransactionsTopUpApi?>? transactionsTopup,
      Wrapped<TransactionsChargeApi?>? transactionsCharge}) {
    return TransactionsApi(
        transactionId:
            (transactionId != null ? transactionId.value : this.transactionId),
        epurseId: (epurseId != null ? epurseId.value : this.epurseId),
        codTransactionType: (codTransactionType != null
            ? codTransactionType.value
            : this.codTransactionType),
        transactionDate: (transactionDate != null
            ? transactionDate.value
            : this.transactionDate),
        note: (note != null ? note.value : this.note),
        extCodTransaction: (extCodTransaction != null
            ? extCodTransaction.value
            : this.extCodTransaction),
        codInvoice: (codInvoice != null ? codInvoice.value : this.codInvoice),
        workshiftId:
            (workshiftId != null ? workshiftId.value : this.workshiftId),
        transactionResult: (transactionResult != null
            ? transactionResult.value
            : this.transactionResult),
        transactionsTopup: (transactionsTopup != null
            ? transactionsTopup.value
            : this.transactionsTopup),
        transactionsCharge: (transactionsCharge != null
            ? transactionsCharge.value
            : this.transactionsCharge));
  }
}

@JsonSerializable(explicitToJson: true)
class TransactionsTopUpApi {
  const TransactionsTopUpApi({
    this.id,
    this.numAmount,
    this.ccyCode,
    this.refExternalTransaction,
    this.codPaymentMethod,
    this.numCreditAmount,
    this.strCreditNotes,
    this.numDiscountPerc,
    this.numDiscountAmount,
    this.strDiscountNotes,
  });

  factory TransactionsTopUpApi.fromJson(Map<String, dynamic> json) =>
      _$TransactionsTopUpApiFromJson(json);

  static const toJsonFactory = _$TransactionsTopUpApiToJson;
  Map<String, dynamic> toJson() => _$TransactionsTopUpApiToJson(this);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'numAmount')
  final double? numAmount;
  @JsonKey(name: 'ccyCode')
  final String? ccyCode;
  @JsonKey(name: 'refExternalTransaction')
  final String? refExternalTransaction;
  @JsonKey(name: 'codPaymentMethod')
  final String? codPaymentMethod;
  @JsonKey(name: 'numCreditAmount')
  final double? numCreditAmount;
  @JsonKey(name: 'strCreditNotes')
  final String? strCreditNotes;
  @JsonKey(name: 'numDiscountPerc')
  final double? numDiscountPerc;
  @JsonKey(name: 'numDiscountAmount')
  final double? numDiscountAmount;
  @JsonKey(name: 'strDiscountNotes')
  final String? strDiscountNotes;
  static const fromJsonFactory = _$TransactionsTopUpApiFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransactionsTopUpApi &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.numAmount, numAmount) ||
                const DeepCollectionEquality()
                    .equals(other.numAmount, numAmount)) &&
            (identical(other.ccyCode, ccyCode) ||
                const DeepCollectionEquality()
                    .equals(other.ccyCode, ccyCode)) &&
            (identical(other.refExternalTransaction, refExternalTransaction) ||
                const DeepCollectionEquality().equals(
                    other.refExternalTransaction, refExternalTransaction)) &&
            (identical(other.codPaymentMethod, codPaymentMethod) ||
                const DeepCollectionEquality()
                    .equals(other.codPaymentMethod, codPaymentMethod)) &&
            (identical(other.numCreditAmount, numCreditAmount) ||
                const DeepCollectionEquality()
                    .equals(other.numCreditAmount, numCreditAmount)) &&
            (identical(other.strCreditNotes, strCreditNotes) ||
                const DeepCollectionEquality()
                    .equals(other.strCreditNotes, strCreditNotes)) &&
            (identical(other.numDiscountPerc, numDiscountPerc) ||
                const DeepCollectionEquality()
                    .equals(other.numDiscountPerc, numDiscountPerc)) &&
            (identical(other.numDiscountAmount, numDiscountAmount) ||
                const DeepCollectionEquality()
                    .equals(other.numDiscountAmount, numDiscountAmount)) &&
            (identical(other.strDiscountNotes, strDiscountNotes) ||
                const DeepCollectionEquality()
                    .equals(other.strDiscountNotes, strDiscountNotes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(numAmount) ^
      const DeepCollectionEquality().hash(ccyCode) ^
      const DeepCollectionEquality().hash(refExternalTransaction) ^
      const DeepCollectionEquality().hash(codPaymentMethod) ^
      const DeepCollectionEquality().hash(numCreditAmount) ^
      const DeepCollectionEquality().hash(strCreditNotes) ^
      const DeepCollectionEquality().hash(numDiscountPerc) ^
      const DeepCollectionEquality().hash(numDiscountAmount) ^
      const DeepCollectionEquality().hash(strDiscountNotes) ^
      runtimeType.hashCode;
}

extension $TransactionsTopUpApiExtension on TransactionsTopUpApi {
  TransactionsTopUpApi copyWith(
      {String? id,
      double? numAmount,
      String? ccyCode,
      String? refExternalTransaction,
      String? codPaymentMethod,
      double? numCreditAmount,
      String? strCreditNotes,
      double? numDiscountPerc,
      double? numDiscountAmount,
      String? strDiscountNotes}) {
    return TransactionsTopUpApi(
        id: id ?? this.id,
        numAmount: numAmount ?? this.numAmount,
        ccyCode: ccyCode ?? this.ccyCode,
        refExternalTransaction:
            refExternalTransaction ?? this.refExternalTransaction,
        codPaymentMethod: codPaymentMethod ?? this.codPaymentMethod,
        numCreditAmount: numCreditAmount ?? this.numCreditAmount,
        strCreditNotes: strCreditNotes ?? this.strCreditNotes,
        numDiscountPerc: numDiscountPerc ?? this.numDiscountPerc,
        numDiscountAmount: numDiscountAmount ?? this.numDiscountAmount,
        strDiscountNotes: strDiscountNotes ?? this.strDiscountNotes);
  }

  TransactionsTopUpApi copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<double?>? numAmount,
      Wrapped<String?>? ccyCode,
      Wrapped<String?>? refExternalTransaction,
      Wrapped<String?>? codPaymentMethod,
      Wrapped<double?>? numCreditAmount,
      Wrapped<String?>? strCreditNotes,
      Wrapped<double?>? numDiscountPerc,
      Wrapped<double?>? numDiscountAmount,
      Wrapped<String?>? strDiscountNotes}) {
    return TransactionsTopUpApi(
        id: (id != null ? id.value : this.id),
        numAmount: (numAmount != null ? numAmount.value : this.numAmount),
        ccyCode: (ccyCode != null ? ccyCode.value : this.ccyCode),
        refExternalTransaction: (refExternalTransaction != null
            ? refExternalTransaction.value
            : this.refExternalTransaction),
        codPaymentMethod: (codPaymentMethod != null
            ? codPaymentMethod.value
            : this.codPaymentMethod),
        numCreditAmount: (numCreditAmount != null
            ? numCreditAmount.value
            : this.numCreditAmount),
        strCreditNotes: (strCreditNotes != null
            ? strCreditNotes.value
            : this.strCreditNotes),
        numDiscountPerc: (numDiscountPerc != null
            ? numDiscountPerc.value
            : this.numDiscountPerc),
        numDiscountAmount: (numDiscountAmount != null
            ? numDiscountAmount.value
            : this.numDiscountAmount),
        strDiscountNotes: (strDiscountNotes != null
            ? strDiscountNotes.value
            : this.strDiscountNotes));
  }
}

@JsonSerializable(explicitToJson: true)
class TransactionsChargeApi {
  const TransactionsChargeApi({
    this.id,
    this.numAmount,
    this.ccyCode,
  });

  factory TransactionsChargeApi.fromJson(Map<String, dynamic> json) =>
      _$TransactionsChargeApiFromJson(json);

  static const toJsonFactory = _$TransactionsChargeApiToJson;
  Map<String, dynamic> toJson() => _$TransactionsChargeApiToJson(this);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'numAmount')
  final double? numAmount;
  @JsonKey(name: 'ccyCode')
  final String? ccyCode;
  static const fromJsonFactory = _$TransactionsChargeApiFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransactionsChargeApi &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.numAmount, numAmount) ||
                const DeepCollectionEquality()
                    .equals(other.numAmount, numAmount)) &&
            (identical(other.ccyCode, ccyCode) ||
                const DeepCollectionEquality().equals(other.ccyCode, ccyCode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(numAmount) ^
      const DeepCollectionEquality().hash(ccyCode) ^
      runtimeType.hashCode;
}

extension $TransactionsChargeApiExtension on TransactionsChargeApi {
  TransactionsChargeApi copyWith(
      {String? id, double? numAmount, String? ccyCode}) {
    return TransactionsChargeApi(
        id: id ?? this.id,
        numAmount: numAmount ?? this.numAmount,
        ccyCode: ccyCode ?? this.ccyCode);
  }

  TransactionsChargeApi copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<double?>? numAmount,
      Wrapped<String?>? ccyCode}) {
    return TransactionsChargeApi(
        id: (id != null ? id.value : this.id),
        numAmount: (numAmount != null ? numAmount.value : this.numAmount),
        ccyCode: (ccyCode != null ? ccyCode.value : this.ccyCode));
  }
}

@JsonSerializable(explicitToJson: true)
class TouchpointReseller {
  const TouchpointReseller({
    this.touchpointId,
    this.organizationSellerId,
  });

  factory TouchpointReseller.fromJson(Map<String, dynamic> json) =>
      _$TouchpointResellerFromJson(json);

  static const toJsonFactory = _$TouchpointResellerToJson;
  Map<String, dynamic> toJson() => _$TouchpointResellerToJson(this);

  @JsonKey(name: 'touchpointId')
  final String? touchpointId;
  @JsonKey(name: 'organizationSellerId')
  final String? organizationSellerId;
  static const fromJsonFactory = _$TouchpointResellerFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TouchpointReseller &&
            (identical(other.touchpointId, touchpointId) ||
                const DeepCollectionEquality()
                    .equals(other.touchpointId, touchpointId)) &&
            (identical(other.organizationSellerId, organizationSellerId) ||
                const DeepCollectionEquality()
                    .equals(other.organizationSellerId, organizationSellerId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(touchpointId) ^
      const DeepCollectionEquality().hash(organizationSellerId) ^
      runtimeType.hashCode;
}

extension $TouchpointResellerExtension on TouchpointReseller {
  TouchpointReseller copyWith(
      {String? touchpointId, String? organizationSellerId}) {
    return TouchpointReseller(
        touchpointId: touchpointId ?? this.touchpointId,
        organizationSellerId:
            organizationSellerId ?? this.organizationSellerId);
  }

  TouchpointReseller copyWithWrapped(
      {Wrapped<String?>? touchpointId,
      Wrapped<String?>? organizationSellerId}) {
    return TouchpointReseller(
        touchpointId:
            (touchpointId != null ? touchpointId.value : this.touchpointId),
        organizationSellerId: (organizationSellerId != null
            ? organizationSellerId.value
            : this.organizationSellerId));
  }
}

@JsonSerializable(explicitToJson: true)
class TransactionTopUpResponse {
  const TransactionTopUpResponse({
    this.epurseId,
    this.refPartyOwner,
    this.codStatus,
    this.codOwnerType,
    this.workstationUpdate,
    this.operatorUpdate,
    this.codSource,
    this.epurseType,
    this.transactionId,
    this.codTransactionType,
    this.note,
    this.refExternalTransaction,
    this.transactionResult,
    this.token,
    this.amount,
    this.ccy,
    this.creditAmount,
    this.paymentMethod,
    this.creditNotes,
    this.numDiscountPerc,
    this.numDiscountAmount,
    this.strDiscountNotes,
  });

  factory TransactionTopUpResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionTopUpResponseFromJson(json);

  static const toJsonFactory = _$TransactionTopUpResponseToJson;
  Map<String, dynamic> toJson() => _$TransactionTopUpResponseToJson(this);

  @JsonKey(name: 'epurseId')
  final String? epurseId;
  @JsonKey(name: 'refPartyOwner')
  final String? refPartyOwner;
  @JsonKey(name: 'codStatus')
  final String? codStatus;
  @JsonKey(name: 'codOwnerType')
  final String? codOwnerType;
  @JsonKey(name: 'workstationUpdate')
  final String? workstationUpdate;
  @JsonKey(name: 'operatorUpdate')
  final String? operatorUpdate;
  @JsonKey(name: 'codSource')
  final String? codSource;
  @JsonKey(name: 'epurseType')
  final String? epurseType;
  @JsonKey(name: 'transactionId')
  final String? transactionId;
  @JsonKey(name: 'codTransactionType')
  final String? codTransactionType;
  @JsonKey(name: 'note')
  final String? note;
  @JsonKey(name: 'refExternalTransaction')
  final String? refExternalTransaction;
  @JsonKey(name: 'transactionResult')
  final String? transactionResult;
  @JsonKey(name: 'token')
  final String? token;
  @JsonKey(name: 'amount')
  final double? amount;
  @JsonKey(name: 'ccy')
  final String? ccy;
  @JsonKey(name: 'creditAmount')
  final double? creditAmount;
  @JsonKey(
    name: 'paymentMethod',
    toJson: paymentTypeEnumNullableToJson,
    fromJson: paymentTypeEnumNullableFromJson,
  )
  final enums.PaymentTypeEnum? paymentMethod;
  @JsonKey(name: 'creditNotes')
  final String? creditNotes;
  @JsonKey(name: 'numDiscountPerc')
  final double? numDiscountPerc;
  @JsonKey(name: 'numDiscountAmount')
  final double? numDiscountAmount;
  @JsonKey(name: 'strDiscountNotes')
  final String? strDiscountNotes;
  static const fromJsonFactory = _$TransactionTopUpResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransactionTopUpResponse &&
            (identical(other.epurseId, epurseId) ||
                const DeepCollectionEquality()
                    .equals(other.epurseId, epurseId)) &&
            (identical(other.refPartyOwner, refPartyOwner) ||
                const DeepCollectionEquality()
                    .equals(other.refPartyOwner, refPartyOwner)) &&
            (identical(other.codStatus, codStatus) ||
                const DeepCollectionEquality()
                    .equals(other.codStatus, codStatus)) &&
            (identical(other.codOwnerType, codOwnerType) ||
                const DeepCollectionEquality()
                    .equals(other.codOwnerType, codOwnerType)) &&
            (identical(other.workstationUpdate, workstationUpdate) ||
                const DeepCollectionEquality()
                    .equals(other.workstationUpdate, workstationUpdate)) &&
            (identical(other.operatorUpdate, operatorUpdate) ||
                const DeepCollectionEquality()
                    .equals(other.operatorUpdate, operatorUpdate)) &&
            (identical(other.codSource, codSource) ||
                const DeepCollectionEquality()
                    .equals(other.codSource, codSource)) &&
            (identical(other.epurseType, epurseType) ||
                const DeepCollectionEquality()
                    .equals(other.epurseType, epurseType)) &&
            (identical(other.transactionId, transactionId) ||
                const DeepCollectionEquality()
                    .equals(other.transactionId, transactionId)) &&
            (identical(other.codTransactionType, codTransactionType) ||
                const DeepCollectionEquality()
                    .equals(other.codTransactionType, codTransactionType)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.refExternalTransaction, refExternalTransaction) ||
                const DeepCollectionEquality().equals(
                    other.refExternalTransaction, refExternalTransaction)) &&
            (identical(other.transactionResult, transactionResult) ||
                const DeepCollectionEquality()
                    .equals(other.transactionResult, transactionResult)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.ccy, ccy) ||
                const DeepCollectionEquality().equals(other.ccy, ccy)) &&
            (identical(other.creditAmount, creditAmount) ||
                const DeepCollectionEquality()
                    .equals(other.creditAmount, creditAmount)) &&
            (identical(other.paymentMethod, paymentMethod) ||
                const DeepCollectionEquality()
                    .equals(other.paymentMethod, paymentMethod)) &&
            (identical(other.creditNotes, creditNotes) ||
                const DeepCollectionEquality()
                    .equals(other.creditNotes, creditNotes)) &&
            (identical(other.numDiscountPerc, numDiscountPerc) ||
                const DeepCollectionEquality()
                    .equals(other.numDiscountPerc, numDiscountPerc)) &&
            (identical(other.numDiscountAmount, numDiscountAmount) ||
                const DeepCollectionEquality()
                    .equals(other.numDiscountAmount, numDiscountAmount)) &&
            (identical(other.strDiscountNotes, strDiscountNotes) ||
                const DeepCollectionEquality()
                    .equals(other.strDiscountNotes, strDiscountNotes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(epurseId) ^
      const DeepCollectionEquality().hash(refPartyOwner) ^
      const DeepCollectionEquality().hash(codStatus) ^
      const DeepCollectionEquality().hash(codOwnerType) ^
      const DeepCollectionEquality().hash(workstationUpdate) ^
      const DeepCollectionEquality().hash(operatorUpdate) ^
      const DeepCollectionEquality().hash(codSource) ^
      const DeepCollectionEquality().hash(epurseType) ^
      const DeepCollectionEquality().hash(transactionId) ^
      const DeepCollectionEquality().hash(codTransactionType) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(refExternalTransaction) ^
      const DeepCollectionEquality().hash(transactionResult) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(ccy) ^
      const DeepCollectionEquality().hash(creditAmount) ^
      const DeepCollectionEquality().hash(paymentMethod) ^
      const DeepCollectionEquality().hash(creditNotes) ^
      const DeepCollectionEquality().hash(numDiscountPerc) ^
      const DeepCollectionEquality().hash(numDiscountAmount) ^
      const DeepCollectionEquality().hash(strDiscountNotes) ^
      runtimeType.hashCode;
}

extension $TransactionTopUpResponseExtension on TransactionTopUpResponse {
  TransactionTopUpResponse copyWith(
      {String? epurseId,
      String? refPartyOwner,
      String? codStatus,
      String? codOwnerType,
      String? workstationUpdate,
      String? operatorUpdate,
      String? codSource,
      String? epurseType,
      String? transactionId,
      String? codTransactionType,
      String? note,
      String? refExternalTransaction,
      String? transactionResult,
      String? token,
      double? amount,
      String? ccy,
      double? creditAmount,
      enums.PaymentTypeEnum? paymentMethod,
      String? creditNotes,
      double? numDiscountPerc,
      double? numDiscountAmount,
      String? strDiscountNotes}) {
    return TransactionTopUpResponse(
        epurseId: epurseId ?? this.epurseId,
        refPartyOwner: refPartyOwner ?? this.refPartyOwner,
        codStatus: codStatus ?? this.codStatus,
        codOwnerType: codOwnerType ?? this.codOwnerType,
        workstationUpdate: workstationUpdate ?? this.workstationUpdate,
        operatorUpdate: operatorUpdate ?? this.operatorUpdate,
        codSource: codSource ?? this.codSource,
        epurseType: epurseType ?? this.epurseType,
        transactionId: transactionId ?? this.transactionId,
        codTransactionType: codTransactionType ?? this.codTransactionType,
        note: note ?? this.note,
        refExternalTransaction:
            refExternalTransaction ?? this.refExternalTransaction,
        transactionResult: transactionResult ?? this.transactionResult,
        token: token ?? this.token,
        amount: amount ?? this.amount,
        ccy: ccy ?? this.ccy,
        creditAmount: creditAmount ?? this.creditAmount,
        paymentMethod: paymentMethod ?? this.paymentMethod,
        creditNotes: creditNotes ?? this.creditNotes,
        numDiscountPerc: numDiscountPerc ?? this.numDiscountPerc,
        numDiscountAmount: numDiscountAmount ?? this.numDiscountAmount,
        strDiscountNotes: strDiscountNotes ?? this.strDiscountNotes);
  }

  TransactionTopUpResponse copyWithWrapped(
      {Wrapped<String?>? epurseId,
      Wrapped<String?>? refPartyOwner,
      Wrapped<String?>? codStatus,
      Wrapped<String?>? codOwnerType,
      Wrapped<String?>? workstationUpdate,
      Wrapped<String?>? operatorUpdate,
      Wrapped<String?>? codSource,
      Wrapped<String?>? epurseType,
      Wrapped<String?>? transactionId,
      Wrapped<String?>? codTransactionType,
      Wrapped<String?>? note,
      Wrapped<String?>? refExternalTransaction,
      Wrapped<String?>? transactionResult,
      Wrapped<String?>? token,
      Wrapped<double?>? amount,
      Wrapped<String?>? ccy,
      Wrapped<double?>? creditAmount,
      Wrapped<enums.PaymentTypeEnum?>? paymentMethod,
      Wrapped<String?>? creditNotes,
      Wrapped<double?>? numDiscountPerc,
      Wrapped<double?>? numDiscountAmount,
      Wrapped<String?>? strDiscountNotes}) {
    return TransactionTopUpResponse(
        epurseId: (epurseId != null ? epurseId.value : this.epurseId),
        refPartyOwner:
            (refPartyOwner != null ? refPartyOwner.value : this.refPartyOwner),
        codStatus: (codStatus != null ? codStatus.value : this.codStatus),
        codOwnerType:
            (codOwnerType != null ? codOwnerType.value : this.codOwnerType),
        workstationUpdate: (workstationUpdate != null
            ? workstationUpdate.value
            : this.workstationUpdate),
        operatorUpdate: (operatorUpdate != null
            ? operatorUpdate.value
            : this.operatorUpdate),
        codSource: (codSource != null ? codSource.value : this.codSource),
        epurseType: (epurseType != null ? epurseType.value : this.epurseType),
        transactionId:
            (transactionId != null ? transactionId.value : this.transactionId),
        codTransactionType: (codTransactionType != null
            ? codTransactionType.value
            : this.codTransactionType),
        note: (note != null ? note.value : this.note),
        refExternalTransaction: (refExternalTransaction != null
            ? refExternalTransaction.value
            : this.refExternalTransaction),
        transactionResult: (transactionResult != null
            ? transactionResult.value
            : this.transactionResult),
        token: (token != null ? token.value : this.token),
        amount: (amount != null ? amount.value : this.amount),
        ccy: (ccy != null ? ccy.value : this.ccy),
        creditAmount:
            (creditAmount != null ? creditAmount.value : this.creditAmount),
        paymentMethod:
            (paymentMethod != null ? paymentMethod.value : this.paymentMethod),
        creditNotes:
            (creditNotes != null ? creditNotes.value : this.creditNotes),
        numDiscountPerc: (numDiscountPerc != null
            ? numDiscountPerc.value
            : this.numDiscountPerc),
        numDiscountAmount: (numDiscountAmount != null
            ? numDiscountAmount.value
            : this.numDiscountAmount),
        strDiscountNotes: (strDiscountNotes != null
            ? strDiscountNotes.value
            : this.strDiscountNotes));
  }
}

@JsonSerializable(explicitToJson: true)
class Transaction {
  const Transaction({
    this.codTransaction,
    this.transactionResult,
    required this.transactionType,
    this.transactionTime,
    this.customerId,
    this.extCodTransaction,
    this.fareProductType,
    this.infrastructureElements,
    this.relatedTransactions,
    this.workshiftId,
    this.notes,
    this.extraData,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);

  static const toJsonFactory = _$TransactionToJson;
  Map<String, dynamic> toJson() => _$TransactionToJson(this);

  @JsonKey(name: 'codTransaction')
  final String? codTransaction;
  @JsonKey(
    name: 'transactionResult',
    toJson: transactionTransactionResultNullableToJson,
    fromJson: transactionTransactionResultNullableFromJson,
  )
  final enums.TransactionTransactionResult? transactionResult;
  @JsonKey(
    name: 'transactionType',
    toJson: transactionTransactionTypeToJson,
    fromJson: transactionTransactionTypeFromJson,
  )
  final enums.TransactionTransactionType transactionType;
  @JsonKey(name: 'transactionTime')
  final DateTime? transactionTime;
  @JsonKey(name: 'customerId')
  final String? customerId;
  @JsonKey(name: 'extCodTransaction')
  final String? extCodTransaction;
  @JsonKey(
    name: 'fareProductType',
    toJson: transactionFareProductTypeNullableToJson,
    fromJson: transactionFareProductTypeNullableFromJson,
  )
  final enums.TransactionFareProductType? fareProductType;
  @JsonKey(
      name: 'infrastructureElements', defaultValue: <InfrastructureElement>[])
  final List<InfrastructureElement>? infrastructureElements;
  @JsonKey(name: 'relatedTransactions', defaultValue: <CodeTypeElement>[])
  final List<CodeTypeElement>? relatedTransactions;
  @JsonKey(name: 'workshiftId')
  final String? workshiftId;
  @JsonKey(name: 'notes')
  final String? notes;
  @JsonKey(name: 'extraData')
  final String? extraData;
  static const fromJsonFactory = _$TransactionFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Transaction &&
            (identical(other.codTransaction, codTransaction) ||
                const DeepCollectionEquality()
                    .equals(other.codTransaction, codTransaction)) &&
            (identical(other.transactionResult, transactionResult) ||
                const DeepCollectionEquality()
                    .equals(other.transactionResult, transactionResult)) &&
            (identical(other.transactionType, transactionType) ||
                const DeepCollectionEquality()
                    .equals(other.transactionType, transactionType)) &&
            (identical(other.transactionTime, transactionTime) ||
                const DeepCollectionEquality()
                    .equals(other.transactionTime, transactionTime)) &&
            (identical(other.customerId, customerId) ||
                const DeepCollectionEquality()
                    .equals(other.customerId, customerId)) &&
            (identical(other.extCodTransaction, extCodTransaction) ||
                const DeepCollectionEquality()
                    .equals(other.extCodTransaction, extCodTransaction)) &&
            (identical(other.fareProductType, fareProductType) ||
                const DeepCollectionEquality()
                    .equals(other.fareProductType, fareProductType)) &&
            (identical(other.infrastructureElements, infrastructureElements) ||
                const DeepCollectionEquality().equals(
                    other.infrastructureElements, infrastructureElements)) &&
            (identical(other.relatedTransactions, relatedTransactions) ||
                const DeepCollectionEquality()
                    .equals(other.relatedTransactions, relatedTransactions)) &&
            (identical(other.workshiftId, workshiftId) ||
                const DeepCollectionEquality()
                    .equals(other.workshiftId, workshiftId)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.extraData, extraData) ||
                const DeepCollectionEquality()
                    .equals(other.extraData, extraData)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(codTransaction) ^
      const DeepCollectionEquality().hash(transactionResult) ^
      const DeepCollectionEquality().hash(transactionType) ^
      const DeepCollectionEquality().hash(transactionTime) ^
      const DeepCollectionEquality().hash(customerId) ^
      const DeepCollectionEquality().hash(extCodTransaction) ^
      const DeepCollectionEquality().hash(fareProductType) ^
      const DeepCollectionEquality().hash(infrastructureElements) ^
      const DeepCollectionEquality().hash(relatedTransactions) ^
      const DeepCollectionEquality().hash(workshiftId) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(extraData) ^
      runtimeType.hashCode;
}

extension $TransactionExtension on Transaction {
  Transaction copyWith(
      {String? codTransaction,
      enums.TransactionTransactionResult? transactionResult,
      enums.TransactionTransactionType? transactionType,
      DateTime? transactionTime,
      String? customerId,
      String? extCodTransaction,
      enums.TransactionFareProductType? fareProductType,
      List<InfrastructureElement>? infrastructureElements,
      List<CodeTypeElement>? relatedTransactions,
      String? workshiftId,
      String? notes,
      String? extraData}) {
    return Transaction(
        codTransaction: codTransaction ?? this.codTransaction,
        transactionResult: transactionResult ?? this.transactionResult,
        transactionType: transactionType ?? this.transactionType,
        transactionTime: transactionTime ?? this.transactionTime,
        customerId: customerId ?? this.customerId,
        extCodTransaction: extCodTransaction ?? this.extCodTransaction,
        fareProductType: fareProductType ?? this.fareProductType,
        infrastructureElements:
            infrastructureElements ?? this.infrastructureElements,
        relatedTransactions: relatedTransactions ?? this.relatedTransactions,
        workshiftId: workshiftId ?? this.workshiftId,
        notes: notes ?? this.notes,
        extraData: extraData ?? this.extraData);
  }

  Transaction copyWithWrapped(
      {Wrapped<String?>? codTransaction,
      Wrapped<enums.TransactionTransactionResult?>? transactionResult,
      Wrapped<enums.TransactionTransactionType>? transactionType,
      Wrapped<DateTime?>? transactionTime,
      Wrapped<String?>? customerId,
      Wrapped<String?>? extCodTransaction,
      Wrapped<enums.TransactionFareProductType?>? fareProductType,
      Wrapped<List<InfrastructureElement>?>? infrastructureElements,
      Wrapped<List<CodeTypeElement>?>? relatedTransactions,
      Wrapped<String?>? workshiftId,
      Wrapped<String?>? notes,
      Wrapped<String?>? extraData}) {
    return Transaction(
        codTransaction: (codTransaction != null
            ? codTransaction.value
            : this.codTransaction),
        transactionResult: (transactionResult != null
            ? transactionResult.value
            : this.transactionResult),
        transactionType: (transactionType != null
            ? transactionType.value
            : this.transactionType),
        transactionTime: (transactionTime != null
            ? transactionTime.value
            : this.transactionTime),
        customerId: (customerId != null ? customerId.value : this.customerId),
        extCodTransaction: (extCodTransaction != null
            ? extCodTransaction.value
            : this.extCodTransaction),
        fareProductType: (fareProductType != null
            ? fareProductType.value
            : this.fareProductType),
        infrastructureElements: (infrastructureElements != null
            ? infrastructureElements.value
            : this.infrastructureElements),
        relatedTransactions: (relatedTransactions != null
            ? relatedTransactions.value
            : this.relatedTransactions),
        workshiftId:
            (workshiftId != null ? workshiftId.value : this.workshiftId),
        notes: (notes != null ? notes.value : this.notes),
        extraData: (extraData != null ? extraData.value : this.extraData));
  }
}

@JsonSerializable(explicitToJson: true)
class CodeTypeElement {
  const CodeTypeElement({
    this.code,
    this.type,
  });

  factory CodeTypeElement.fromJson(Map<String, dynamic> json) =>
      _$CodeTypeElementFromJson(json);

  static const toJsonFactory = _$CodeTypeElementToJson;
  Map<String, dynamic> toJson() => _$CodeTypeElementToJson(this);

  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'type')
  final String? type;
  static const fromJsonFactory = _$CodeTypeElementFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CodeTypeElement &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $CodeTypeElementExtension on CodeTypeElement {
  CodeTypeElement copyWith({String? code, String? type}) {
    return CodeTypeElement(code: code ?? this.code, type: type ?? this.type);
  }

  CodeTypeElement copyWithWrapped(
      {Wrapped<String?>? code, Wrapped<String?>? type}) {
    return CodeTypeElement(
        code: (code != null ? code.value : this.code),
        type: (type != null ? type.value : this.type));
  }
}

@JsonSerializable(explicitToJson: true)
class MissingPayoutChange {
  const MissingPayoutChange({
    this.missingPayoutChange,
    this.note,
  });

  factory MissingPayoutChange.fromJson(Map<String, dynamic> json) =>
      _$MissingPayoutChangeFromJson(json);

  static const toJsonFactory = _$MissingPayoutChangeToJson;
  Map<String, dynamic> toJson() => _$MissingPayoutChangeToJson(this);

  @JsonKey(name: 'missingPayoutChange')
  final double? missingPayoutChange;
  @JsonKey(name: 'note')
  final String? note;
  static const fromJsonFactory = _$MissingPayoutChangeFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MissingPayoutChange &&
            (identical(other.missingPayoutChange, missingPayoutChange) ||
                const DeepCollectionEquality()
                    .equals(other.missingPayoutChange, missingPayoutChange)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(missingPayoutChange) ^
      const DeepCollectionEquality().hash(note) ^
      runtimeType.hashCode;
}

extension $MissingPayoutChangeExtension on MissingPayoutChange {
  MissingPayoutChange copyWith({double? missingPayoutChange, String? note}) {
    return MissingPayoutChange(
        missingPayoutChange: missingPayoutChange ?? this.missingPayoutChange,
        note: note ?? this.note);
  }

  MissingPayoutChange copyWithWrapped(
      {Wrapped<double?>? missingPayoutChange, Wrapped<String?>? note}) {
    return MissingPayoutChange(
        missingPayoutChange: (missingPayoutChange != null
            ? missingPayoutChange.value
            : this.missingPayoutChange),
        note: (note != null ? note.value : this.note));
  }
}

@JsonSerializable(explicitToJson: true)
class FareTrip {
  const FareTrip({
    required this.tripId,
    required this.bestFare,
  });

  factory FareTrip.fromJson(Map<String, dynamic> json) =>
      _$FareTripFromJson(json);

  static const toJsonFactory = _$FareTripToJson;
  Map<String, dynamic> toJson() => _$FareTripToJson(this);

  @JsonKey(name: 'tripId')
  final String tripId;
  @JsonKey(name: 'bestFare')
  final BestFare bestFare;
  static const fromJsonFactory = _$FareTripFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FareTrip &&
            (identical(other.tripId, tripId) ||
                const DeepCollectionEquality().equals(other.tripId, tripId)) &&
            (identical(other.bestFare, bestFare) ||
                const DeepCollectionEquality()
                    .equals(other.bestFare, bestFare)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tripId) ^
      const DeepCollectionEquality().hash(bestFare) ^
      runtimeType.hashCode;
}

extension $FareTripExtension on FareTrip {
  FareTrip copyWith({String? tripId, BestFare? bestFare}) {
    return FareTrip(
        tripId: tripId ?? this.tripId, bestFare: bestFare ?? this.bestFare);
  }

  FareTrip copyWithWrapped(
      {Wrapped<String>? tripId, Wrapped<BestFare>? bestFare}) {
    return FareTrip(
        tripId: (tripId != null ? tripId.value : this.tripId),
        bestFare: (bestFare != null ? bestFare.value : this.bestFare));
  }
}

@JsonSerializable(explicitToJson: true)
class BestFare {
  const BestFare({
    required this.legsBlocks,
    required this.tripPrice,
    required this.ccyPrice,
  });

  factory BestFare.fromJson(Map<String, dynamic> json) =>
      _$BestFareFromJson(json);

  static const toJsonFactory = _$BestFareToJson;
  Map<String, dynamic> toJson() => _$BestFareToJson(this);

  @JsonKey(name: 'legsBlocks', defaultValue: <LegsBlock>[])
  final List<LegsBlock> legsBlocks;
  @JsonKey(name: 'tripPrice')
  final double tripPrice;
  @JsonKey(name: 'ccyPrice')
  final String ccyPrice;
  static const fromJsonFactory = _$BestFareFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BestFare &&
            (identical(other.legsBlocks, legsBlocks) ||
                const DeepCollectionEquality()
                    .equals(other.legsBlocks, legsBlocks)) &&
            (identical(other.tripPrice, tripPrice) ||
                const DeepCollectionEquality()
                    .equals(other.tripPrice, tripPrice)) &&
            (identical(other.ccyPrice, ccyPrice) ||
                const DeepCollectionEquality()
                    .equals(other.ccyPrice, ccyPrice)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(legsBlocks) ^
      const DeepCollectionEquality().hash(tripPrice) ^
      const DeepCollectionEquality().hash(ccyPrice) ^
      runtimeType.hashCode;
}

extension $BestFareExtension on BestFare {
  BestFare copyWith(
      {List<LegsBlock>? legsBlocks, double? tripPrice, String? ccyPrice}) {
    return BestFare(
        legsBlocks: legsBlocks ?? this.legsBlocks,
        tripPrice: tripPrice ?? this.tripPrice,
        ccyPrice: ccyPrice ?? this.ccyPrice);
  }

  BestFare copyWithWrapped(
      {Wrapped<List<LegsBlock>>? legsBlocks,
      Wrapped<double>? tripPrice,
      Wrapped<String>? ccyPrice}) {
    return BestFare(
        legsBlocks: (legsBlocks != null ? legsBlocks.value : this.legsBlocks),
        tripPrice: (tripPrice != null ? tripPrice.value : this.tripPrice),
        ccyPrice: (ccyPrice != null ? ccyPrice.value : this.ccyPrice));
  }
}

@JsonSerializable(explicitToJson: true)
class LegsBlock {
  const LegsBlock({
    required this.legsBlockPrice,
    required this.ccyPriceBlock,
    required this.legsId,
    this.fareProducts,
    this.salesPackages,
  });

  factory LegsBlock.fromJson(Map<String, dynamic> json) =>
      _$LegsBlockFromJson(json);

  static const toJsonFactory = _$LegsBlockToJson;
  Map<String, dynamic> toJson() => _$LegsBlockToJson(this);

  @JsonKey(name: 'legsBlockPrice')
  final double legsBlockPrice;
  @JsonKey(name: 'ccyPriceBlock')
  final String ccyPriceBlock;
  @JsonKey(name: 'legsId', defaultValue: <String>[])
  final List<String> legsId;
  @JsonKey(name: 'fareProducts', defaultValue: <Product>[])
  final List<Product>? fareProducts;
  @JsonKey(name: 'salesPackages', defaultValue: <SalesPackage>[])
  final List<SalesPackage>? salesPackages;
  static const fromJsonFactory = _$LegsBlockFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LegsBlock &&
            (identical(other.legsBlockPrice, legsBlockPrice) ||
                const DeepCollectionEquality()
                    .equals(other.legsBlockPrice, legsBlockPrice)) &&
            (identical(other.ccyPriceBlock, ccyPriceBlock) ||
                const DeepCollectionEquality()
                    .equals(other.ccyPriceBlock, ccyPriceBlock)) &&
            (identical(other.legsId, legsId) ||
                const DeepCollectionEquality().equals(other.legsId, legsId)) &&
            (identical(other.fareProducts, fareProducts) ||
                const DeepCollectionEquality()
                    .equals(other.fareProducts, fareProducts)) &&
            (identical(other.salesPackages, salesPackages) ||
                const DeepCollectionEquality()
                    .equals(other.salesPackages, salesPackages)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(legsBlockPrice) ^
      const DeepCollectionEquality().hash(ccyPriceBlock) ^
      const DeepCollectionEquality().hash(legsId) ^
      const DeepCollectionEquality().hash(fareProducts) ^
      const DeepCollectionEquality().hash(salesPackages) ^
      runtimeType.hashCode;
}

extension $LegsBlockExtension on LegsBlock {
  LegsBlock copyWith(
      {double? legsBlockPrice,
      String? ccyPriceBlock,
      List<String>? legsId,
      List<Product>? fareProducts,
      List<SalesPackage>? salesPackages}) {
    return LegsBlock(
        legsBlockPrice: legsBlockPrice ?? this.legsBlockPrice,
        ccyPriceBlock: ccyPriceBlock ?? this.ccyPriceBlock,
        legsId: legsId ?? this.legsId,
        fareProducts: fareProducts ?? this.fareProducts,
        salesPackages: salesPackages ?? this.salesPackages);
  }

  LegsBlock copyWithWrapped(
      {Wrapped<double>? legsBlockPrice,
      Wrapped<String>? ccyPriceBlock,
      Wrapped<List<String>>? legsId,
      Wrapped<List<Product>?>? fareProducts,
      Wrapped<List<SalesPackage>?>? salesPackages}) {
    return LegsBlock(
        legsBlockPrice: (legsBlockPrice != null
            ? legsBlockPrice.value
            : this.legsBlockPrice),
        ccyPriceBlock:
            (ccyPriceBlock != null ? ccyPriceBlock.value : this.ccyPriceBlock),
        legsId: (legsId != null ? legsId.value : this.legsId),
        fareProducts:
            (fareProducts != null ? fareProducts.value : this.fareProducts),
        salesPackages:
            (salesPackages != null ? salesPackages.value : this.salesPackages));
  }
}

@JsonSerializable(explicitToJson: true)
class TripProducts {
  const TripProducts({
    required this.tripId,
    required this.liteLegsBlock,
  });

  factory TripProducts.fromJson(Map<String, dynamic> json) =>
      _$TripProductsFromJson(json);

  static const toJsonFactory = _$TripProductsToJson;
  Map<String, dynamic> toJson() => _$TripProductsToJson(this);

  @JsonKey(name: 'tripId')
  final String tripId;
  @JsonKey(name: 'liteLegsBlock')
  final LiteLegsBlock liteLegsBlock;
  static const fromJsonFactory = _$TripProductsFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TripProducts &&
            (identical(other.tripId, tripId) ||
                const DeepCollectionEquality().equals(other.tripId, tripId)) &&
            (identical(other.liteLegsBlock, liteLegsBlock) ||
                const DeepCollectionEquality()
                    .equals(other.liteLegsBlock, liteLegsBlock)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tripId) ^
      const DeepCollectionEquality().hash(liteLegsBlock) ^
      runtimeType.hashCode;
}

extension $TripProductsExtension on TripProducts {
  TripProducts copyWith({String? tripId, LiteLegsBlock? liteLegsBlock}) {
    return TripProducts(
        tripId: tripId ?? this.tripId,
        liteLegsBlock: liteLegsBlock ?? this.liteLegsBlock);
  }

  TripProducts copyWithWrapped(
      {Wrapped<String>? tripId, Wrapped<LiteLegsBlock>? liteLegsBlock}) {
    return TripProducts(
        tripId: (tripId != null ? tripId.value : this.tripId),
        liteLegsBlock:
            (liteLegsBlock != null ? liteLegsBlock.value : this.liteLegsBlock));
  }
}

@JsonSerializable(explicitToJson: true)
class LiteLegsBlock {
  const LiteLegsBlock({
    required this.legsId,
    this.fareProducts,
    this.salesPackages,
  });

  factory LiteLegsBlock.fromJson(Map<String, dynamic> json) =>
      _$LiteLegsBlockFromJson(json);

  static const toJsonFactory = _$LiteLegsBlockToJson;
  Map<String, dynamic> toJson() => _$LiteLegsBlockToJson(this);

  @JsonKey(name: 'legsId', defaultValue: <String>[])
  final List<String> legsId;
  @JsonKey(name: 'fareProducts', defaultValue: <Product>[])
  final List<Product>? fareProducts;
  @JsonKey(name: 'salesPackages', defaultValue: <SalesPackage>[])
  final List<SalesPackage>? salesPackages;
  static const fromJsonFactory = _$LiteLegsBlockFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LiteLegsBlock &&
            (identical(other.legsId, legsId) ||
                const DeepCollectionEquality().equals(other.legsId, legsId)) &&
            (identical(other.fareProducts, fareProducts) ||
                const DeepCollectionEquality()
                    .equals(other.fareProducts, fareProducts)) &&
            (identical(other.salesPackages, salesPackages) ||
                const DeepCollectionEquality()
                    .equals(other.salesPackages, salesPackages)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(legsId) ^
      const DeepCollectionEquality().hash(fareProducts) ^
      const DeepCollectionEquality().hash(salesPackages) ^
      runtimeType.hashCode;
}

extension $LiteLegsBlockExtension on LiteLegsBlock {
  LiteLegsBlock copyWith(
      {List<String>? legsId,
      List<Product>? fareProducts,
      List<SalesPackage>? salesPackages}) {
    return LiteLegsBlock(
        legsId: legsId ?? this.legsId,
        fareProducts: fareProducts ?? this.fareProducts,
        salesPackages: salesPackages ?? this.salesPackages);
  }

  LiteLegsBlock copyWithWrapped(
      {Wrapped<List<String>>? legsId,
      Wrapped<List<Product>?>? fareProducts,
      Wrapped<List<SalesPackage>?>? salesPackages}) {
    return LiteLegsBlock(
        legsId: (legsId != null ? legsId.value : this.legsId),
        fareProducts:
            (fareProducts != null ? fareProducts.value : this.fareProducts),
        salesPackages:
            (salesPackages != null ? salesPackages.value : this.salesPackages));
  }
}

@JsonSerializable(explicitToJson: true)
class FineNotification {
  const FineNotification({
    this.fineId,
    this.dateOfNotification,
    this.inspectorDesc,
    this.inspectorCode,
    this.mainIndividual,
    this.finePaymentStatus,
    this.typeOfInfringementId,
    this.flagNotified,
    this.inspectorNote,
    this.offenderStatements,
    this.inspectionTransactionReference,
    this.statusCode,
    this.servicesAffected,
    this.ticketPrice,
    this.currencyCode,
    this.ticketInspectorReference,
    this.workshiftReference,
    this.touchpointReference,
    this.touchpointType,
    this.infringementCost,
  });

  factory FineNotification.fromJson(Map<String, dynamic> json) =>
      _$FineNotificationFromJson(json);

  static const toJsonFactory = _$FineNotificationToJson;
  Map<String, dynamic> toJson() => _$FineNotificationToJson(this);

  @JsonKey(name: 'fineId')
  final String? fineId;
  @JsonKey(name: 'dateOfNotification')
  final DateTime? dateOfNotification;
  @JsonKey(name: 'inspectorDesc')
  final String? inspectorDesc;
  @JsonKey(name: 'inspectorCode')
  final String? inspectorCode;
  @JsonKey(name: 'mainIndividual')
  final IndividualWithRelation? mainIndividual;
  @JsonKey(name: 'finePaymentStatus')
  final FinePaymentStatus? finePaymentStatus;
  @JsonKey(name: 'typeOfInfringementId')
  final String? typeOfInfringementId;
  @JsonKey(name: 'flagNotified')
  final double? flagNotified;
  @JsonKey(name: 'inspectorNote')
  final String? inspectorNote;
  @JsonKey(name: 'offenderStatements')
  final String? offenderStatements;
  @JsonKey(name: 'inspectionTransactionReference')
  final String? inspectionTransactionReference;
  @JsonKey(
    name: 'statusCode',
    toJson: notificationStatusEnumNullableToJson,
    fromJson: notificationStatusEnumNullableFromJson,
  )
  final enums.NotificationStatusEnum? statusCode;
  @JsonKey(name: 'servicesAffected')
  final ServicesAffected? servicesAffected;
  @JsonKey(name: 'ticketPrice')
  final double? ticketPrice;
  @JsonKey(name: 'currencyCode')
  final String? currencyCode;
  @JsonKey(name: 'ticketInspectorReference')
  final String? ticketInspectorReference;
  @JsonKey(name: 'workshiftReference')
  final String? workshiftReference;
  @JsonKey(name: 'touchpointReference')
  final String? touchpointReference;
  @JsonKey(
    name: 'touchpointType',
    toJson: touchpointEnumNullableToJson,
    fromJson: touchpointEnumNullableFromJson,
  )
  final enums.TouchpointEnum? touchpointType;
  @JsonKey(name: 'infringementCost', defaultValue: <Object>[])
  final List<Object>? infringementCost;
  static const fromJsonFactory = _$FineNotificationFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FineNotification &&
            (identical(other.fineId, fineId) ||
                const DeepCollectionEquality().equals(other.fineId, fineId)) &&
            (identical(other.dateOfNotification, dateOfNotification) ||
                const DeepCollectionEquality()
                    .equals(other.dateOfNotification, dateOfNotification)) &&
            (identical(other.inspectorDesc, inspectorDesc) ||
                const DeepCollectionEquality()
                    .equals(other.inspectorDesc, inspectorDesc)) &&
            (identical(other.inspectorCode, inspectorCode) ||
                const DeepCollectionEquality()
                    .equals(other.inspectorCode, inspectorCode)) &&
            (identical(other.mainIndividual, mainIndividual) ||
                const DeepCollectionEquality()
                    .equals(other.mainIndividual, mainIndividual)) &&
            (identical(other.finePaymentStatus, finePaymentStatus) ||
                const DeepCollectionEquality()
                    .equals(other.finePaymentStatus, finePaymentStatus)) &&
            (identical(other.typeOfInfringementId, typeOfInfringementId) ||
                const DeepCollectionEquality().equals(
                    other.typeOfInfringementId, typeOfInfringementId)) &&
            (identical(other.flagNotified, flagNotified) ||
                const DeepCollectionEquality()
                    .equals(other.flagNotified, flagNotified)) &&
            (identical(other.inspectorNote, inspectorNote) ||
                const DeepCollectionEquality()
                    .equals(other.inspectorNote, inspectorNote)) &&
            (identical(other.offenderStatements, offenderStatements) ||
                const DeepCollectionEquality()
                    .equals(other.offenderStatements, offenderStatements)) &&
            (identical(other.inspectionTransactionReference, inspectionTransactionReference) ||
                const DeepCollectionEquality().equals(
                    other.inspectionTransactionReference,
                    inspectionTransactionReference)) &&
            (identical(other.statusCode, statusCode) ||
                const DeepCollectionEquality()
                    .equals(other.statusCode, statusCode)) &&
            (identical(other.servicesAffected, servicesAffected) ||
                const DeepCollectionEquality()
                    .equals(other.servicesAffected, servicesAffected)) &&
            (identical(other.ticketPrice, ticketPrice) ||
                const DeepCollectionEquality()
                    .equals(other.ticketPrice, ticketPrice)) &&
            (identical(other.currencyCode, currencyCode) ||
                const DeepCollectionEquality()
                    .equals(other.currencyCode, currencyCode)) &&
            (identical(other.ticketInspectorReference, ticketInspectorReference) ||
                const DeepCollectionEquality().equals(
                    other.ticketInspectorReference,
                    ticketInspectorReference)) &&
            (identical(other.workshiftReference, workshiftReference) ||
                const DeepCollectionEquality()
                    .equals(other.workshiftReference, workshiftReference)) &&
            (identical(other.touchpointReference, touchpointReference) ||
                const DeepCollectionEquality()
                    .equals(other.touchpointReference, touchpointReference)) &&
            (identical(other.touchpointType, touchpointType) ||
                const DeepCollectionEquality().equals(other.touchpointType, touchpointType)) &&
            (identical(other.infringementCost, infringementCost) || const DeepCollectionEquality().equals(other.infringementCost, infringementCost)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(fineId) ^
      const DeepCollectionEquality().hash(dateOfNotification) ^
      const DeepCollectionEquality().hash(inspectorDesc) ^
      const DeepCollectionEquality().hash(inspectorCode) ^
      const DeepCollectionEquality().hash(mainIndividual) ^
      const DeepCollectionEquality().hash(finePaymentStatus) ^
      const DeepCollectionEquality().hash(typeOfInfringementId) ^
      const DeepCollectionEquality().hash(flagNotified) ^
      const DeepCollectionEquality().hash(inspectorNote) ^
      const DeepCollectionEquality().hash(offenderStatements) ^
      const DeepCollectionEquality().hash(inspectionTransactionReference) ^
      const DeepCollectionEquality().hash(statusCode) ^
      const DeepCollectionEquality().hash(servicesAffected) ^
      const DeepCollectionEquality().hash(ticketPrice) ^
      const DeepCollectionEquality().hash(currencyCode) ^
      const DeepCollectionEquality().hash(ticketInspectorReference) ^
      const DeepCollectionEquality().hash(workshiftReference) ^
      const DeepCollectionEquality().hash(touchpointReference) ^
      const DeepCollectionEquality().hash(touchpointType) ^
      const DeepCollectionEquality().hash(infringementCost) ^
      runtimeType.hashCode;
}

extension $FineNotificationExtension on FineNotification {
  FineNotification copyWith(
      {String? fineId,
      DateTime? dateOfNotification,
      String? inspectorDesc,
      String? inspectorCode,
      IndividualWithRelation? mainIndividual,
      FinePaymentStatus? finePaymentStatus,
      String? typeOfInfringementId,
      double? flagNotified,
      String? inspectorNote,
      String? offenderStatements,
      String? inspectionTransactionReference,
      enums.NotificationStatusEnum? statusCode,
      ServicesAffected? servicesAffected,
      double? ticketPrice,
      String? currencyCode,
      String? ticketInspectorReference,
      String? workshiftReference,
      String? touchpointReference,
      enums.TouchpointEnum? touchpointType,
      List<Object>? infringementCost}) {
    return FineNotification(
        fineId: fineId ?? this.fineId,
        dateOfNotification: dateOfNotification ?? this.dateOfNotification,
        inspectorDesc: inspectorDesc ?? this.inspectorDesc,
        inspectorCode: inspectorCode ?? this.inspectorCode,
        mainIndividual: mainIndividual ?? this.mainIndividual,
        finePaymentStatus: finePaymentStatus ?? this.finePaymentStatus,
        typeOfInfringementId: typeOfInfringementId ?? this.typeOfInfringementId,
        flagNotified: flagNotified ?? this.flagNotified,
        inspectorNote: inspectorNote ?? this.inspectorNote,
        offenderStatements: offenderStatements ?? this.offenderStatements,
        inspectionTransactionReference: inspectionTransactionReference ??
            this.inspectionTransactionReference,
        statusCode: statusCode ?? this.statusCode,
        servicesAffected: servicesAffected ?? this.servicesAffected,
        ticketPrice: ticketPrice ?? this.ticketPrice,
        currencyCode: currencyCode ?? this.currencyCode,
        ticketInspectorReference:
            ticketInspectorReference ?? this.ticketInspectorReference,
        workshiftReference: workshiftReference ?? this.workshiftReference,
        touchpointReference: touchpointReference ?? this.touchpointReference,
        touchpointType: touchpointType ?? this.touchpointType,
        infringementCost: infringementCost ?? this.infringementCost);
  }

  FineNotification copyWithWrapped(
      {Wrapped<String?>? fineId,
      Wrapped<DateTime?>? dateOfNotification,
      Wrapped<String?>? inspectorDesc,
      Wrapped<String?>? inspectorCode,
      Wrapped<IndividualWithRelation?>? mainIndividual,
      Wrapped<FinePaymentStatus?>? finePaymentStatus,
      Wrapped<String?>? typeOfInfringementId,
      Wrapped<double?>? flagNotified,
      Wrapped<String?>? inspectorNote,
      Wrapped<String?>? offenderStatements,
      Wrapped<String?>? inspectionTransactionReference,
      Wrapped<enums.NotificationStatusEnum?>? statusCode,
      Wrapped<ServicesAffected?>? servicesAffected,
      Wrapped<double?>? ticketPrice,
      Wrapped<String?>? currencyCode,
      Wrapped<String?>? ticketInspectorReference,
      Wrapped<String?>? workshiftReference,
      Wrapped<String?>? touchpointReference,
      Wrapped<enums.TouchpointEnum?>? touchpointType,
      Wrapped<List<Object>?>? infringementCost}) {
    return FineNotification(
        fineId: (fineId != null ? fineId.value : this.fineId),
        dateOfNotification: (dateOfNotification != null
            ? dateOfNotification.value
            : this.dateOfNotification),
        inspectorDesc:
            (inspectorDesc != null ? inspectorDesc.value : this.inspectorDesc),
        inspectorCode:
            (inspectorCode != null ? inspectorCode.value : this.inspectorCode),
        mainIndividual: (mainIndividual != null
            ? mainIndividual.value
            : this.mainIndividual),
        finePaymentStatus: (finePaymentStatus != null
            ? finePaymentStatus.value
            : this.finePaymentStatus),
        typeOfInfringementId: (typeOfInfringementId != null
            ? typeOfInfringementId.value
            : this.typeOfInfringementId),
        flagNotified:
            (flagNotified != null ? flagNotified.value : this.flagNotified),
        inspectorNote:
            (inspectorNote != null ? inspectorNote.value : this.inspectorNote),
        offenderStatements: (offenderStatements != null
            ? offenderStatements.value
            : this.offenderStatements),
        inspectionTransactionReference: (inspectionTransactionReference != null
            ? inspectionTransactionReference.value
            : this.inspectionTransactionReference),
        statusCode: (statusCode != null ? statusCode.value : this.statusCode),
        servicesAffected: (servicesAffected != null
            ? servicesAffected.value
            : this.servicesAffected),
        ticketPrice:
            (ticketPrice != null ? ticketPrice.value : this.ticketPrice),
        currencyCode:
            (currencyCode != null ? currencyCode.value : this.currencyCode),
        ticketInspectorReference: (ticketInspectorReference != null
            ? ticketInspectorReference.value
            : this.ticketInspectorReference),
        workshiftReference: (workshiftReference != null
            ? workshiftReference.value
            : this.workshiftReference),
        touchpointReference: (touchpointReference != null
            ? touchpointReference.value
            : this.touchpointReference),
        touchpointType: (touchpointType != null
            ? touchpointType.value
            : this.touchpointType),
        infringementCost: (infringementCost != null
            ? infringementCost.value
            : this.infringementCost));
  }
}

@JsonSerializable(explicitToJson: true)
class Individual {
  const Individual({
    this.individualId,
    required this.dateOfBirth,
    this.legalSexType,
    this.language,
    this.nationalCountryCode,
    this.taxCode,
    this.nationalCountryDesc,
    required this.partyNamePart1,
    this.partyNamePart2,
    required this.partyNamePart3,
    this.addresses,
    this.emails,
    this.phones,
    this.documents,
  });

  factory Individual.fromJson(Map<String, dynamic> json) =>
      _$IndividualFromJson(json);

  static const toJsonFactory = _$IndividualToJson;
  Map<String, dynamic> toJson() => _$IndividualToJson(this);

  @JsonKey(name: 'individualId')
  final String? individualId;
  @JsonKey(name: 'dateOfBirth', toJson: _dateToJson)
  final DateTime dateOfBirth;
  @JsonKey(name: 'legalSexType')
  final String? legalSexType;
  @JsonKey(name: 'language')
  final String? language;
  @JsonKey(name: 'nationalCountryCode')
  final String? nationalCountryCode;
  @JsonKey(name: 'taxCode')
  final String? taxCode;
  @JsonKey(name: 'nationalCountryDesc')
  final String? nationalCountryDesc;
  @JsonKey(name: 'partyNamePart1')
  final String partyNamePart1;
  @JsonKey(name: 'partyNamePart2')
  final String? partyNamePart2;
  @JsonKey(name: 'partyNamePart3')
  final String partyNamePart3;
  @JsonKey(name: 'addresses', defaultValue: <Object>[])
  final List<Object>? addresses;
  @JsonKey(name: 'emails', defaultValue: <Object>[])
  final List<Object>? emails;
  @JsonKey(name: 'phones', defaultValue: <Object>[])
  final List<Object>? phones;
  @JsonKey(name: 'documents', defaultValue: <Object>[])
  final List<Object>? documents;
  static const fromJsonFactory = _$IndividualFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Individual &&
            (identical(other.individualId, individualId) ||
                const DeepCollectionEquality()
                    .equals(other.individualId, individualId)) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                const DeepCollectionEquality()
                    .equals(other.dateOfBirth, dateOfBirth)) &&
            (identical(other.legalSexType, legalSexType) ||
                const DeepCollectionEquality()
                    .equals(other.legalSexType, legalSexType)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.nationalCountryCode, nationalCountryCode) ||
                const DeepCollectionEquality()
                    .equals(other.nationalCountryCode, nationalCountryCode)) &&
            (identical(other.taxCode, taxCode) ||
                const DeepCollectionEquality()
                    .equals(other.taxCode, taxCode)) &&
            (identical(other.nationalCountryDesc, nationalCountryDesc) ||
                const DeepCollectionEquality()
                    .equals(other.nationalCountryDesc, nationalCountryDesc)) &&
            (identical(other.partyNamePart1, partyNamePart1) ||
                const DeepCollectionEquality()
                    .equals(other.partyNamePart1, partyNamePart1)) &&
            (identical(other.partyNamePart2, partyNamePart2) ||
                const DeepCollectionEquality()
                    .equals(other.partyNamePart2, partyNamePart2)) &&
            (identical(other.partyNamePart3, partyNamePart3) ||
                const DeepCollectionEquality()
                    .equals(other.partyNamePart3, partyNamePart3)) &&
            (identical(other.addresses, addresses) ||
                const DeepCollectionEquality()
                    .equals(other.addresses, addresses)) &&
            (identical(other.emails, emails) ||
                const DeepCollectionEquality().equals(other.emails, emails)) &&
            (identical(other.phones, phones) ||
                const DeepCollectionEquality().equals(other.phones, phones)) &&
            (identical(other.documents, documents) ||
                const DeepCollectionEquality()
                    .equals(other.documents, documents)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(individualId) ^
      const DeepCollectionEquality().hash(dateOfBirth) ^
      const DeepCollectionEquality().hash(legalSexType) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(nationalCountryCode) ^
      const DeepCollectionEquality().hash(taxCode) ^
      const DeepCollectionEquality().hash(nationalCountryDesc) ^
      const DeepCollectionEquality().hash(partyNamePart1) ^
      const DeepCollectionEquality().hash(partyNamePart2) ^
      const DeepCollectionEquality().hash(partyNamePart3) ^
      const DeepCollectionEquality().hash(addresses) ^
      const DeepCollectionEquality().hash(emails) ^
      const DeepCollectionEquality().hash(phones) ^
      const DeepCollectionEquality().hash(documents) ^
      runtimeType.hashCode;
}

extension $IndividualExtension on Individual {
  Individual copyWith(
      {String? individualId,
      DateTime? dateOfBirth,
      String? legalSexType,
      String? language,
      String? nationalCountryCode,
      String? taxCode,
      String? nationalCountryDesc,
      String? partyNamePart1,
      String? partyNamePart2,
      String? partyNamePart3,
      List<Object>? addresses,
      List<Object>? emails,
      List<Object>? phones,
      List<Object>? documents}) {
    return Individual(
        individualId: individualId ?? this.individualId,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        legalSexType: legalSexType ?? this.legalSexType,
        language: language ?? this.language,
        nationalCountryCode: nationalCountryCode ?? this.nationalCountryCode,
        taxCode: taxCode ?? this.taxCode,
        nationalCountryDesc: nationalCountryDesc ?? this.nationalCountryDesc,
        partyNamePart1: partyNamePart1 ?? this.partyNamePart1,
        partyNamePart2: partyNamePart2 ?? this.partyNamePart2,
        partyNamePart3: partyNamePart3 ?? this.partyNamePart3,
        addresses: addresses ?? this.addresses,
        emails: emails ?? this.emails,
        phones: phones ?? this.phones,
        documents: documents ?? this.documents);
  }

  Individual copyWithWrapped(
      {Wrapped<String?>? individualId,
      Wrapped<DateTime>? dateOfBirth,
      Wrapped<String?>? legalSexType,
      Wrapped<String?>? language,
      Wrapped<String?>? nationalCountryCode,
      Wrapped<String?>? taxCode,
      Wrapped<String?>? nationalCountryDesc,
      Wrapped<String>? partyNamePart1,
      Wrapped<String?>? partyNamePart2,
      Wrapped<String>? partyNamePart3,
      Wrapped<List<Object>?>? addresses,
      Wrapped<List<Object>?>? emails,
      Wrapped<List<Object>?>? phones,
      Wrapped<List<Object>?>? documents}) {
    return Individual(
        individualId:
            (individualId != null ? individualId.value : this.individualId),
        dateOfBirth:
            (dateOfBirth != null ? dateOfBirth.value : this.dateOfBirth),
        legalSexType:
            (legalSexType != null ? legalSexType.value : this.legalSexType),
        language: (language != null ? language.value : this.language),
        nationalCountryCode: (nationalCountryCode != null
            ? nationalCountryCode.value
            : this.nationalCountryCode),
        taxCode: (taxCode != null ? taxCode.value : this.taxCode),
        nationalCountryDesc: (nationalCountryDesc != null
            ? nationalCountryDesc.value
            : this.nationalCountryDesc),
        partyNamePart1: (partyNamePart1 != null
            ? partyNamePart1.value
            : this.partyNamePart1),
        partyNamePart2: (partyNamePart2 != null
            ? partyNamePart2.value
            : this.partyNamePart2),
        partyNamePart3: (partyNamePart3 != null
            ? partyNamePart3.value
            : this.partyNamePart3),
        addresses: (addresses != null ? addresses.value : this.addresses),
        emails: (emails != null ? emails.value : this.emails),
        phones: (phones != null ? phones.value : this.phones),
        documents: (documents != null ? documents.value : this.documents));
  }
}

@JsonSerializable(explicitToJson: true)
class IndividualWithRelation {
  const IndividualWithRelation({
    this.individualId,
    this.dateOfBirth,
    this.legalSexType,
    this.language,
    this.nationalCountryCode,
    this.taxCode,
    this.nationalCountryDesc,
    this.partyNamePart1,
    this.partyNamePart2,
    this.partyNamePart3,
    this.addresses,
    this.emails,
    this.phones,
    this.documents,
    this.relations,
  });

  factory IndividualWithRelation.fromJson(Map<String, dynamic> json) =>
      _$IndividualWithRelationFromJson(json);

  static const toJsonFactory = _$IndividualWithRelationToJson;
  Map<String, dynamic> toJson() => _$IndividualWithRelationToJson(this);

  @JsonKey(name: 'individualId')
  final String? individualId;
  @JsonKey(name: 'dateOfBirth', toJson: _dateToJson)
  final DateTime? dateOfBirth;
  @JsonKey(name: 'legalSexType')
  final String? legalSexType;
  @JsonKey(name: 'language')
  final String? language;
  @JsonKey(name: 'nationalCountryCode')
  final String? nationalCountryCode;
  @JsonKey(name: 'taxCode')
  final String? taxCode;
  @JsonKey(name: 'nationalCountryDesc')
  final String? nationalCountryDesc;
  @JsonKey(name: 'partyNamePart1')
  final String? partyNamePart1;
  @JsonKey(name: 'partyNamePart2')
  final String? partyNamePart2;
  @JsonKey(name: 'partyNamePart3')
  final String? partyNamePart3;
  @JsonKey(name: 'addresses', defaultValue: <Object>[])
  final List<Object>? addresses;
  @JsonKey(name: 'emails', defaultValue: <Object>[])
  final List<Object>? emails;
  @JsonKey(name: 'phones', defaultValue: <Object>[])
  final List<Object>? phones;
  @JsonKey(name: 'documents', defaultValue: <Object>[])
  final List<Object>? documents;
  @JsonKey(name: 'relations', defaultValue: <Object>[])
  final List<Object>? relations;
  static const fromJsonFactory = _$IndividualWithRelationFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IndividualWithRelation &&
            (identical(other.individualId, individualId) ||
                const DeepCollectionEquality()
                    .equals(other.individualId, individualId)) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                const DeepCollectionEquality()
                    .equals(other.dateOfBirth, dateOfBirth)) &&
            (identical(other.legalSexType, legalSexType) ||
                const DeepCollectionEquality()
                    .equals(other.legalSexType, legalSexType)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.nationalCountryCode, nationalCountryCode) ||
                const DeepCollectionEquality()
                    .equals(other.nationalCountryCode, nationalCountryCode)) &&
            (identical(other.taxCode, taxCode) ||
                const DeepCollectionEquality()
                    .equals(other.taxCode, taxCode)) &&
            (identical(other.nationalCountryDesc, nationalCountryDesc) ||
                const DeepCollectionEquality()
                    .equals(other.nationalCountryDesc, nationalCountryDesc)) &&
            (identical(other.partyNamePart1, partyNamePart1) ||
                const DeepCollectionEquality()
                    .equals(other.partyNamePart1, partyNamePart1)) &&
            (identical(other.partyNamePart2, partyNamePart2) ||
                const DeepCollectionEquality()
                    .equals(other.partyNamePart2, partyNamePart2)) &&
            (identical(other.partyNamePart3, partyNamePart3) ||
                const DeepCollectionEquality()
                    .equals(other.partyNamePart3, partyNamePart3)) &&
            (identical(other.addresses, addresses) ||
                const DeepCollectionEquality()
                    .equals(other.addresses, addresses)) &&
            (identical(other.emails, emails) ||
                const DeepCollectionEquality().equals(other.emails, emails)) &&
            (identical(other.phones, phones) ||
                const DeepCollectionEquality().equals(other.phones, phones)) &&
            (identical(other.documents, documents) ||
                const DeepCollectionEquality()
                    .equals(other.documents, documents)) &&
            (identical(other.relations, relations) ||
                const DeepCollectionEquality()
                    .equals(other.relations, relations)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(individualId) ^
      const DeepCollectionEquality().hash(dateOfBirth) ^
      const DeepCollectionEquality().hash(legalSexType) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(nationalCountryCode) ^
      const DeepCollectionEquality().hash(taxCode) ^
      const DeepCollectionEquality().hash(nationalCountryDesc) ^
      const DeepCollectionEquality().hash(partyNamePart1) ^
      const DeepCollectionEquality().hash(partyNamePart2) ^
      const DeepCollectionEquality().hash(partyNamePart3) ^
      const DeepCollectionEquality().hash(addresses) ^
      const DeepCollectionEquality().hash(emails) ^
      const DeepCollectionEquality().hash(phones) ^
      const DeepCollectionEquality().hash(documents) ^
      const DeepCollectionEquality().hash(relations) ^
      runtimeType.hashCode;
}

extension $IndividualWithRelationExtension on IndividualWithRelation {
  IndividualWithRelation copyWith(
      {String? individualId,
      DateTime? dateOfBirth,
      String? legalSexType,
      String? language,
      String? nationalCountryCode,
      String? taxCode,
      String? nationalCountryDesc,
      String? partyNamePart1,
      String? partyNamePart2,
      String? partyNamePart3,
      List<Object>? addresses,
      List<Object>? emails,
      List<Object>? phones,
      List<Object>? documents,
      List<Object>? relations}) {
    return IndividualWithRelation(
        individualId: individualId ?? this.individualId,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        legalSexType: legalSexType ?? this.legalSexType,
        language: language ?? this.language,
        nationalCountryCode: nationalCountryCode ?? this.nationalCountryCode,
        taxCode: taxCode ?? this.taxCode,
        nationalCountryDesc: nationalCountryDesc ?? this.nationalCountryDesc,
        partyNamePart1: partyNamePart1 ?? this.partyNamePart1,
        partyNamePart2: partyNamePart2 ?? this.partyNamePart2,
        partyNamePart3: partyNamePart3 ?? this.partyNamePart3,
        addresses: addresses ?? this.addresses,
        emails: emails ?? this.emails,
        phones: phones ?? this.phones,
        documents: documents ?? this.documents,
        relations: relations ?? this.relations);
  }

  IndividualWithRelation copyWithWrapped(
      {Wrapped<String?>? individualId,
      Wrapped<DateTime?>? dateOfBirth,
      Wrapped<String?>? legalSexType,
      Wrapped<String?>? language,
      Wrapped<String?>? nationalCountryCode,
      Wrapped<String?>? taxCode,
      Wrapped<String?>? nationalCountryDesc,
      Wrapped<String?>? partyNamePart1,
      Wrapped<String?>? partyNamePart2,
      Wrapped<String?>? partyNamePart3,
      Wrapped<List<Object>?>? addresses,
      Wrapped<List<Object>?>? emails,
      Wrapped<List<Object>?>? phones,
      Wrapped<List<Object>?>? documents,
      Wrapped<List<Object>?>? relations}) {
    return IndividualWithRelation(
        individualId:
            (individualId != null ? individualId.value : this.individualId),
        dateOfBirth:
            (dateOfBirth != null ? dateOfBirth.value : this.dateOfBirth),
        legalSexType:
            (legalSexType != null ? legalSexType.value : this.legalSexType),
        language: (language != null ? language.value : this.language),
        nationalCountryCode: (nationalCountryCode != null
            ? nationalCountryCode.value
            : this.nationalCountryCode),
        taxCode: (taxCode != null ? taxCode.value : this.taxCode),
        nationalCountryDesc: (nationalCountryDesc != null
            ? nationalCountryDesc.value
            : this.nationalCountryDesc),
        partyNamePart1: (partyNamePart1 != null
            ? partyNamePart1.value
            : this.partyNamePart1),
        partyNamePart2: (partyNamePart2 != null
            ? partyNamePart2.value
            : this.partyNamePart2),
        partyNamePart3: (partyNamePart3 != null
            ? partyNamePart3.value
            : this.partyNamePart3),
        addresses: (addresses != null ? addresses.value : this.addresses),
        emails: (emails != null ? emails.value : this.emails),
        phones: (phones != null ? phones.value : this.phones),
        documents: (documents != null ? documents.value : this.documents),
        relations: (relations != null ? relations.value : this.relations));
  }
}

@JsonSerializable(explicitToJson: true)
class SecondaryIndividual {
  const SecondaryIndividual({
    this.individualId,
    this.dateOfBirth,
    this.legalSexType,
    this.language,
    this.nationalCountryCode,
    this.taxCode,
    this.nationalCountryDesc,
    this.partyNamePart1,
    this.partyNamePart2,
    this.partyNamePart3,
    this.addresses,
    this.emails,
    this.phones,
    this.documents,
    this.relations,
  });

  factory SecondaryIndividual.fromJson(Map<String, dynamic> json) =>
      _$SecondaryIndividualFromJson(json);

  static const toJsonFactory = _$SecondaryIndividualToJson;
  Map<String, dynamic> toJson() => _$SecondaryIndividualToJson(this);

  @JsonKey(name: 'individualId')
  final String? individualId;
  @JsonKey(name: 'dateOfBirth', toJson: _dateToJson)
  final DateTime? dateOfBirth;
  @JsonKey(name: 'legalSexType')
  final String? legalSexType;
  @JsonKey(name: 'language')
  final String? language;
  @JsonKey(name: 'nationalCountryCode')
  final String? nationalCountryCode;
  @JsonKey(name: 'taxCode')
  final String? taxCode;
  @JsonKey(name: 'nationalCountryDesc')
  final String? nationalCountryDesc;
  @JsonKey(name: 'partyNamePart1')
  final String? partyNamePart1;
  @JsonKey(name: 'partyNamePart2')
  final String? partyNamePart2;
  @JsonKey(name: 'partyNamePart3')
  final String? partyNamePart3;
  @JsonKey(name: 'addresses', defaultValue: <Object>[])
  final List<Object>? addresses;
  @JsonKey(name: 'emails', defaultValue: <Object>[])
  final List<Object>? emails;
  @JsonKey(name: 'phones', defaultValue: <Object>[])
  final List<Object>? phones;
  @JsonKey(name: 'documents', defaultValue: <Object>[])
  final List<Object>? documents;
  @JsonKey(name: 'relations', defaultValue: <Object>[])
  final List<Object>? relations;
  static const fromJsonFactory = _$SecondaryIndividualFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SecondaryIndividual &&
            (identical(other.individualId, individualId) ||
                const DeepCollectionEquality()
                    .equals(other.individualId, individualId)) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                const DeepCollectionEquality()
                    .equals(other.dateOfBirth, dateOfBirth)) &&
            (identical(other.legalSexType, legalSexType) ||
                const DeepCollectionEquality()
                    .equals(other.legalSexType, legalSexType)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.nationalCountryCode, nationalCountryCode) ||
                const DeepCollectionEquality()
                    .equals(other.nationalCountryCode, nationalCountryCode)) &&
            (identical(other.taxCode, taxCode) ||
                const DeepCollectionEquality()
                    .equals(other.taxCode, taxCode)) &&
            (identical(other.nationalCountryDesc, nationalCountryDesc) ||
                const DeepCollectionEquality()
                    .equals(other.nationalCountryDesc, nationalCountryDesc)) &&
            (identical(other.partyNamePart1, partyNamePart1) ||
                const DeepCollectionEquality()
                    .equals(other.partyNamePart1, partyNamePart1)) &&
            (identical(other.partyNamePart2, partyNamePart2) ||
                const DeepCollectionEquality()
                    .equals(other.partyNamePart2, partyNamePart2)) &&
            (identical(other.partyNamePart3, partyNamePart3) ||
                const DeepCollectionEquality()
                    .equals(other.partyNamePart3, partyNamePart3)) &&
            (identical(other.addresses, addresses) ||
                const DeepCollectionEquality()
                    .equals(other.addresses, addresses)) &&
            (identical(other.emails, emails) ||
                const DeepCollectionEquality().equals(other.emails, emails)) &&
            (identical(other.phones, phones) ||
                const DeepCollectionEquality().equals(other.phones, phones)) &&
            (identical(other.documents, documents) ||
                const DeepCollectionEquality()
                    .equals(other.documents, documents)) &&
            (identical(other.relations, relations) ||
                const DeepCollectionEquality()
                    .equals(other.relations, relations)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(individualId) ^
      const DeepCollectionEquality().hash(dateOfBirth) ^
      const DeepCollectionEquality().hash(legalSexType) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(nationalCountryCode) ^
      const DeepCollectionEquality().hash(taxCode) ^
      const DeepCollectionEquality().hash(nationalCountryDesc) ^
      const DeepCollectionEquality().hash(partyNamePart1) ^
      const DeepCollectionEquality().hash(partyNamePart2) ^
      const DeepCollectionEquality().hash(partyNamePart3) ^
      const DeepCollectionEquality().hash(addresses) ^
      const DeepCollectionEquality().hash(emails) ^
      const DeepCollectionEquality().hash(phones) ^
      const DeepCollectionEquality().hash(documents) ^
      const DeepCollectionEquality().hash(relations) ^
      runtimeType.hashCode;
}

extension $SecondaryIndividualExtension on SecondaryIndividual {
  SecondaryIndividual copyWith(
      {String? individualId,
      DateTime? dateOfBirth,
      String? legalSexType,
      String? language,
      String? nationalCountryCode,
      String? taxCode,
      String? nationalCountryDesc,
      String? partyNamePart1,
      String? partyNamePart2,
      String? partyNamePart3,
      List<Object>? addresses,
      List<Object>? emails,
      List<Object>? phones,
      List<Object>? documents,
      List<Object>? relations}) {
    return SecondaryIndividual(
        individualId: individualId ?? this.individualId,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        legalSexType: legalSexType ?? this.legalSexType,
        language: language ?? this.language,
        nationalCountryCode: nationalCountryCode ?? this.nationalCountryCode,
        taxCode: taxCode ?? this.taxCode,
        nationalCountryDesc: nationalCountryDesc ?? this.nationalCountryDesc,
        partyNamePart1: partyNamePart1 ?? this.partyNamePart1,
        partyNamePart2: partyNamePart2 ?? this.partyNamePart2,
        partyNamePart3: partyNamePart3 ?? this.partyNamePart3,
        addresses: addresses ?? this.addresses,
        emails: emails ?? this.emails,
        phones: phones ?? this.phones,
        documents: documents ?? this.documents,
        relations: relations ?? this.relations);
  }

  SecondaryIndividual copyWithWrapped(
      {Wrapped<String?>? individualId,
      Wrapped<DateTime?>? dateOfBirth,
      Wrapped<String?>? legalSexType,
      Wrapped<String?>? language,
      Wrapped<String?>? nationalCountryCode,
      Wrapped<String?>? taxCode,
      Wrapped<String?>? nationalCountryDesc,
      Wrapped<String?>? partyNamePart1,
      Wrapped<String?>? partyNamePart2,
      Wrapped<String?>? partyNamePart3,
      Wrapped<List<Object>?>? addresses,
      Wrapped<List<Object>?>? emails,
      Wrapped<List<Object>?>? phones,
      Wrapped<List<Object>?>? documents,
      Wrapped<List<Object>?>? relations}) {
    return SecondaryIndividual(
        individualId:
            (individualId != null ? individualId.value : this.individualId),
        dateOfBirth:
            (dateOfBirth != null ? dateOfBirth.value : this.dateOfBirth),
        legalSexType:
            (legalSexType != null ? legalSexType.value : this.legalSexType),
        language: (language != null ? language.value : this.language),
        nationalCountryCode: (nationalCountryCode != null
            ? nationalCountryCode.value
            : this.nationalCountryCode),
        taxCode: (taxCode != null ? taxCode.value : this.taxCode),
        nationalCountryDesc: (nationalCountryDesc != null
            ? nationalCountryDesc.value
            : this.nationalCountryDesc),
        partyNamePart1: (partyNamePart1 != null
            ? partyNamePart1.value
            : this.partyNamePart1),
        partyNamePart2: (partyNamePart2 != null
            ? partyNamePart2.value
            : this.partyNamePart2),
        partyNamePart3: (partyNamePart3 != null
            ? partyNamePart3.value
            : this.partyNamePart3),
        addresses: (addresses != null ? addresses.value : this.addresses),
        emails: (emails != null ? emails.value : this.emails),
        phones: (phones != null ? phones.value : this.phones),
        documents: (documents != null ? documents.value : this.documents),
        relations: (relations != null ? relations.value : this.relations));
  }
}

@JsonSerializable(explicitToJson: true)
class FinePaymentStatus {
  const FinePaymentStatus({
    this.fineId,
    this.typePaymentCode,
    this.paymentDate,
    this.paymentStatusCode,
    this.paymentAmount,
    this.paymentReference,
    this.paymentInstitutionDesc,
    this.flagIsExternal,
    this.currency,
  });

  factory FinePaymentStatus.fromJson(Map<String, dynamic> json) =>
      _$FinePaymentStatusFromJson(json);

  static const toJsonFactory = _$FinePaymentStatusToJson;
  Map<String, dynamic> toJson() => _$FinePaymentStatusToJson(this);

  @JsonKey(name: 'fineId')
  final String? fineId;
  @JsonKey(name: 'typePaymentCode')
  final String? typePaymentCode;
  @JsonKey(name: 'paymentDate')
  final DateTime? paymentDate;
  @JsonKey(
    name: 'paymentStatusCode',
    toJson: paymentStatusEnumNullableToJson,
    fromJson: paymentStatusEnumNullableFromJson,
  )
  final enums.PaymentStatusEnum? paymentStatusCode;
  @JsonKey(name: 'paymentAmount')
  final double? paymentAmount;
  @JsonKey(name: 'paymentReference')
  final String? paymentReference;
  @JsonKey(name: 'paymentInstitutionDesc')
  final String? paymentInstitutionDesc;
  @JsonKey(name: 'flagIsExternal')
  final double? flagIsExternal;
  @JsonKey(name: 'currency')
  final String? currency;
  static const fromJsonFactory = _$FinePaymentStatusFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FinePaymentStatus &&
            (identical(other.fineId, fineId) ||
                const DeepCollectionEquality().equals(other.fineId, fineId)) &&
            (identical(other.typePaymentCode, typePaymentCode) ||
                const DeepCollectionEquality()
                    .equals(other.typePaymentCode, typePaymentCode)) &&
            (identical(other.paymentDate, paymentDate) ||
                const DeepCollectionEquality()
                    .equals(other.paymentDate, paymentDate)) &&
            (identical(other.paymentStatusCode, paymentStatusCode) ||
                const DeepCollectionEquality()
                    .equals(other.paymentStatusCode, paymentStatusCode)) &&
            (identical(other.paymentAmount, paymentAmount) ||
                const DeepCollectionEquality()
                    .equals(other.paymentAmount, paymentAmount)) &&
            (identical(other.paymentReference, paymentReference) ||
                const DeepCollectionEquality()
                    .equals(other.paymentReference, paymentReference)) &&
            (identical(other.paymentInstitutionDesc, paymentInstitutionDesc) ||
                const DeepCollectionEquality().equals(
                    other.paymentInstitutionDesc, paymentInstitutionDesc)) &&
            (identical(other.flagIsExternal, flagIsExternal) ||
                const DeepCollectionEquality()
                    .equals(other.flagIsExternal, flagIsExternal)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(fineId) ^
      const DeepCollectionEquality().hash(typePaymentCode) ^
      const DeepCollectionEquality().hash(paymentDate) ^
      const DeepCollectionEquality().hash(paymentStatusCode) ^
      const DeepCollectionEquality().hash(paymentAmount) ^
      const DeepCollectionEquality().hash(paymentReference) ^
      const DeepCollectionEquality().hash(paymentInstitutionDesc) ^
      const DeepCollectionEquality().hash(flagIsExternal) ^
      const DeepCollectionEquality().hash(currency) ^
      runtimeType.hashCode;
}

extension $FinePaymentStatusExtension on FinePaymentStatus {
  FinePaymentStatus copyWith(
      {String? fineId,
      String? typePaymentCode,
      DateTime? paymentDate,
      enums.PaymentStatusEnum? paymentStatusCode,
      double? paymentAmount,
      String? paymentReference,
      String? paymentInstitutionDesc,
      double? flagIsExternal,
      String? currency}) {
    return FinePaymentStatus(
        fineId: fineId ?? this.fineId,
        typePaymentCode: typePaymentCode ?? this.typePaymentCode,
        paymentDate: paymentDate ?? this.paymentDate,
        paymentStatusCode: paymentStatusCode ?? this.paymentStatusCode,
        paymentAmount: paymentAmount ?? this.paymentAmount,
        paymentReference: paymentReference ?? this.paymentReference,
        paymentInstitutionDesc:
            paymentInstitutionDesc ?? this.paymentInstitutionDesc,
        flagIsExternal: flagIsExternal ?? this.flagIsExternal,
        currency: currency ?? this.currency);
  }

  FinePaymentStatus copyWithWrapped(
      {Wrapped<String?>? fineId,
      Wrapped<String?>? typePaymentCode,
      Wrapped<DateTime?>? paymentDate,
      Wrapped<enums.PaymentStatusEnum?>? paymentStatusCode,
      Wrapped<double?>? paymentAmount,
      Wrapped<String?>? paymentReference,
      Wrapped<String?>? paymentInstitutionDesc,
      Wrapped<double?>? flagIsExternal,
      Wrapped<String?>? currency}) {
    return FinePaymentStatus(
        fineId: (fineId != null ? fineId.value : this.fineId),
        typePaymentCode: (typePaymentCode != null
            ? typePaymentCode.value
            : this.typePaymentCode),
        paymentDate:
            (paymentDate != null ? paymentDate.value : this.paymentDate),
        paymentStatusCode: (paymentStatusCode != null
            ? paymentStatusCode.value
            : this.paymentStatusCode),
        paymentAmount:
            (paymentAmount != null ? paymentAmount.value : this.paymentAmount),
        paymentReference: (paymentReference != null
            ? paymentReference.value
            : this.paymentReference),
        paymentInstitutionDesc: (paymentInstitutionDesc != null
            ? paymentInstitutionDesc.value
            : this.paymentInstitutionDesc),
        flagIsExternal: (flagIsExternal != null
            ? flagIsExternal.value
            : this.flagIsExternal),
        currency: (currency != null ? currency.value : this.currency));
  }
}

@JsonSerializable(explicitToJson: true)
class ServicesAffected {
  const ServicesAffected({
    this.servicesAffectedId,
    required this.serviceTypeCode,
    this.serviceCode,
    this.serviceDesc,
    this.vehicleJourneyReference,
    this.vehicleJourneyDesc,
    this.startPointReference,
    this.startPointDesc,
    this.endPointReference,
    this.endPointDesc,
  });

  factory ServicesAffected.fromJson(Map<String, dynamic> json) =>
      _$ServicesAffectedFromJson(json);

  static const toJsonFactory = _$ServicesAffectedToJson;
  Map<String, dynamic> toJson() => _$ServicesAffectedToJson(this);

  @JsonKey(name: 'servicesAffectedId')
  final String? servicesAffectedId;
  @JsonKey(
    name: 'serviceTypeCode',
    toJson: serviceTypeEnumToJson,
    fromJson: serviceTypeEnumFromJson,
  )
  final enums.ServiceTypeEnum serviceTypeCode;
  @JsonKey(name: 'serviceCode')
  final String? serviceCode;
  @JsonKey(name: 'serviceDesc')
  final String? serviceDesc;
  @JsonKey(name: 'vehicleJourneyReference')
  final String? vehicleJourneyReference;
  @JsonKey(name: 'vehicleJourneyDesc')
  final String? vehicleJourneyDesc;
  @JsonKey(name: 'startPointReference')
  final String? startPointReference;
  @JsonKey(name: 'startPointDesc')
  final String? startPointDesc;
  @JsonKey(name: 'endPointReference')
  final String? endPointReference;
  @JsonKey(name: 'endPointDesc')
  final String? endPointDesc;
  static const fromJsonFactory = _$ServicesAffectedFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ServicesAffected &&
            (identical(other.servicesAffectedId, servicesAffectedId) ||
                const DeepCollectionEquality()
                    .equals(other.servicesAffectedId, servicesAffectedId)) &&
            (identical(other.serviceTypeCode, serviceTypeCode) ||
                const DeepCollectionEquality()
                    .equals(other.serviceTypeCode, serviceTypeCode)) &&
            (identical(other.serviceCode, serviceCode) ||
                const DeepCollectionEquality()
                    .equals(other.serviceCode, serviceCode)) &&
            (identical(other.serviceDesc, serviceDesc) ||
                const DeepCollectionEquality()
                    .equals(other.serviceDesc, serviceDesc)) &&
            (identical(
                    other.vehicleJourneyReference, vehicleJourneyReference) ||
                const DeepCollectionEquality().equals(
                    other.vehicleJourneyReference, vehicleJourneyReference)) &&
            (identical(other.vehicleJourneyDesc, vehicleJourneyDesc) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleJourneyDesc, vehicleJourneyDesc)) &&
            (identical(other.startPointReference, startPointReference) ||
                const DeepCollectionEquality()
                    .equals(other.startPointReference, startPointReference)) &&
            (identical(other.startPointDesc, startPointDesc) ||
                const DeepCollectionEquality()
                    .equals(other.startPointDesc, startPointDesc)) &&
            (identical(other.endPointReference, endPointReference) ||
                const DeepCollectionEquality()
                    .equals(other.endPointReference, endPointReference)) &&
            (identical(other.endPointDesc, endPointDesc) ||
                const DeepCollectionEquality()
                    .equals(other.endPointDesc, endPointDesc)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(servicesAffectedId) ^
      const DeepCollectionEquality().hash(serviceTypeCode) ^
      const DeepCollectionEquality().hash(serviceCode) ^
      const DeepCollectionEquality().hash(serviceDesc) ^
      const DeepCollectionEquality().hash(vehicleJourneyReference) ^
      const DeepCollectionEquality().hash(vehicleJourneyDesc) ^
      const DeepCollectionEquality().hash(startPointReference) ^
      const DeepCollectionEquality().hash(startPointDesc) ^
      const DeepCollectionEquality().hash(endPointReference) ^
      const DeepCollectionEquality().hash(endPointDesc) ^
      runtimeType.hashCode;
}

extension $ServicesAffectedExtension on ServicesAffected {
  ServicesAffected copyWith(
      {String? servicesAffectedId,
      enums.ServiceTypeEnum? serviceTypeCode,
      String? serviceCode,
      String? serviceDesc,
      String? vehicleJourneyReference,
      String? vehicleJourneyDesc,
      String? startPointReference,
      String? startPointDesc,
      String? endPointReference,
      String? endPointDesc}) {
    return ServicesAffected(
        servicesAffectedId: servicesAffectedId ?? this.servicesAffectedId,
        serviceTypeCode: serviceTypeCode ?? this.serviceTypeCode,
        serviceCode: serviceCode ?? this.serviceCode,
        serviceDesc: serviceDesc ?? this.serviceDesc,
        vehicleJourneyReference:
            vehicleJourneyReference ?? this.vehicleJourneyReference,
        vehicleJourneyDesc: vehicleJourneyDesc ?? this.vehicleJourneyDesc,
        startPointReference: startPointReference ?? this.startPointReference,
        startPointDesc: startPointDesc ?? this.startPointDesc,
        endPointReference: endPointReference ?? this.endPointReference,
        endPointDesc: endPointDesc ?? this.endPointDesc);
  }

  ServicesAffected copyWithWrapped(
      {Wrapped<String?>? servicesAffectedId,
      Wrapped<enums.ServiceTypeEnum>? serviceTypeCode,
      Wrapped<String?>? serviceCode,
      Wrapped<String?>? serviceDesc,
      Wrapped<String?>? vehicleJourneyReference,
      Wrapped<String?>? vehicleJourneyDesc,
      Wrapped<String?>? startPointReference,
      Wrapped<String?>? startPointDesc,
      Wrapped<String?>? endPointReference,
      Wrapped<String?>? endPointDesc}) {
    return ServicesAffected(
        servicesAffectedId: (servicesAffectedId != null
            ? servicesAffectedId.value
            : this.servicesAffectedId),
        serviceTypeCode: (serviceTypeCode != null
            ? serviceTypeCode.value
            : this.serviceTypeCode),
        serviceCode:
            (serviceCode != null ? serviceCode.value : this.serviceCode),
        serviceDesc:
            (serviceDesc != null ? serviceDesc.value : this.serviceDesc),
        vehicleJourneyReference: (vehicleJourneyReference != null
            ? vehicleJourneyReference.value
            : this.vehicleJourneyReference),
        vehicleJourneyDesc: (vehicleJourneyDesc != null
            ? vehicleJourneyDesc.value
            : this.vehicleJourneyDesc),
        startPointReference: (startPointReference != null
            ? startPointReference.value
            : this.startPointReference),
        startPointDesc: (startPointDesc != null
            ? startPointDesc.value
            : this.startPointDesc),
        endPointReference: (endPointReference != null
            ? endPointReference.value
            : this.endPointReference),
        endPointDesc:
            (endPointDesc != null ? endPointDesc.value : this.endPointDesc));
  }
}

@JsonSerializable(explicitToJson: true)
class Address {
  const Address({
    this.addressLine1,
    this.addressLine2,
    this.addressLine3,
    this.postalCode,
    this.addressTypeCode,
    this.countryCode,
    this.location,
    this.contactName,
    this.contactNumber,
    this.countryDesc,
    this.cityCode,
    this.cityDesc,
    this.districtCode,
    this.id,
    this.contactTypeCode,
    this.activationDate,
    this.closingDate,
    this.isPrimary,
  });

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  static const toJsonFactory = _$AddressToJson;
  Map<String, dynamic> toJson() => _$AddressToJson(this);

  @JsonKey(name: 'addressLine1')
  final String? addressLine1;
  @JsonKey(name: 'addressLine2')
  final String? addressLine2;
  @JsonKey(name: 'addressLine3')
  final String? addressLine3;
  @JsonKey(name: 'postalCode')
  final String? postalCode;
  @JsonKey(
    name: 'addressTypeCode',
    toJson: postalAddressTypeEnumNullableToJson,
    fromJson: postalAddressTypeEnumNullableFromJson,
  )
  final enums.PostalAddressTypeEnum? addressTypeCode;
  @JsonKey(name: 'countryCode')
  final String? countryCode;
  @JsonKey(name: 'location')
  final Location? location;
  @JsonKey(name: 'contactName')
  final String? contactName;
  @JsonKey(name: 'contactNumber')
  final String? contactNumber;
  @JsonKey(name: 'countryDesc')
  final String? countryDesc;
  @JsonKey(name: 'cityCode')
  final String? cityCode;
  @JsonKey(name: 'cityDesc')
  final String? cityDesc;
  @JsonKey(name: 'districtCode')
  final String? districtCode;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(
    name: 'contactTypeCode',
    toJson: contactTypeEnumNullableToJson,
    fromJson: contactTypeEnumNullableFromJson,
  )
  final enums.ContactTypeEnum? contactTypeCode;
  @JsonKey(name: 'activationDate')
  final DateTime? activationDate;
  @JsonKey(name: 'closingDate')
  final DateTime? closingDate;
  @JsonKey(name: 'isPrimary')
  final double? isPrimary;
  static const fromJsonFactory = _$AddressFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Address &&
            (identical(other.addressLine1, addressLine1) ||
                const DeepCollectionEquality()
                    .equals(other.addressLine1, addressLine1)) &&
            (identical(other.addressLine2, addressLine2) ||
                const DeepCollectionEquality()
                    .equals(other.addressLine2, addressLine2)) &&
            (identical(other.addressLine3, addressLine3) ||
                const DeepCollectionEquality()
                    .equals(other.addressLine3, addressLine3)) &&
            (identical(other.postalCode, postalCode) ||
                const DeepCollectionEquality()
                    .equals(other.postalCode, postalCode)) &&
            (identical(other.addressTypeCode, addressTypeCode) ||
                const DeepCollectionEquality()
                    .equals(other.addressTypeCode, addressTypeCode)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.contactName, contactName) ||
                const DeepCollectionEquality()
                    .equals(other.contactName, contactName)) &&
            (identical(other.contactNumber, contactNumber) ||
                const DeepCollectionEquality()
                    .equals(other.contactNumber, contactNumber)) &&
            (identical(other.countryDesc, countryDesc) ||
                const DeepCollectionEquality()
                    .equals(other.countryDesc, countryDesc)) &&
            (identical(other.cityCode, cityCode) ||
                const DeepCollectionEquality()
                    .equals(other.cityCode, cityCode)) &&
            (identical(other.cityDesc, cityDesc) ||
                const DeepCollectionEquality()
                    .equals(other.cityDesc, cityDesc)) &&
            (identical(other.districtCode, districtCode) ||
                const DeepCollectionEquality()
                    .equals(other.districtCode, districtCode)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.contactTypeCode, contactTypeCode) ||
                const DeepCollectionEquality()
                    .equals(other.contactTypeCode, contactTypeCode)) &&
            (identical(other.activationDate, activationDate) ||
                const DeepCollectionEquality()
                    .equals(other.activationDate, activationDate)) &&
            (identical(other.closingDate, closingDate) ||
                const DeepCollectionEquality()
                    .equals(other.closingDate, closingDate)) &&
            (identical(other.isPrimary, isPrimary) ||
                const DeepCollectionEquality()
                    .equals(other.isPrimary, isPrimary)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(addressLine1) ^
      const DeepCollectionEquality().hash(addressLine2) ^
      const DeepCollectionEquality().hash(addressLine3) ^
      const DeepCollectionEquality().hash(postalCode) ^
      const DeepCollectionEquality().hash(addressTypeCode) ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(contactName) ^
      const DeepCollectionEquality().hash(contactNumber) ^
      const DeepCollectionEquality().hash(countryDesc) ^
      const DeepCollectionEquality().hash(cityCode) ^
      const DeepCollectionEquality().hash(cityDesc) ^
      const DeepCollectionEquality().hash(districtCode) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(contactTypeCode) ^
      const DeepCollectionEquality().hash(activationDate) ^
      const DeepCollectionEquality().hash(closingDate) ^
      const DeepCollectionEquality().hash(isPrimary) ^
      runtimeType.hashCode;
}

extension $AddressExtension on Address {
  Address copyWith(
      {String? addressLine1,
      String? addressLine2,
      String? addressLine3,
      String? postalCode,
      enums.PostalAddressTypeEnum? addressTypeCode,
      String? countryCode,
      Location? location,
      String? contactName,
      String? contactNumber,
      String? countryDesc,
      String? cityCode,
      String? cityDesc,
      String? districtCode,
      String? id,
      enums.ContactTypeEnum? contactTypeCode,
      DateTime? activationDate,
      DateTime? closingDate,
      double? isPrimary}) {
    return Address(
        addressLine1: addressLine1 ?? this.addressLine1,
        addressLine2: addressLine2 ?? this.addressLine2,
        addressLine3: addressLine3 ?? this.addressLine3,
        postalCode: postalCode ?? this.postalCode,
        addressTypeCode: addressTypeCode ?? this.addressTypeCode,
        countryCode: countryCode ?? this.countryCode,
        location: location ?? this.location,
        contactName: contactName ?? this.contactName,
        contactNumber: contactNumber ?? this.contactNumber,
        countryDesc: countryDesc ?? this.countryDesc,
        cityCode: cityCode ?? this.cityCode,
        cityDesc: cityDesc ?? this.cityDesc,
        districtCode: districtCode ?? this.districtCode,
        id: id ?? this.id,
        contactTypeCode: contactTypeCode ?? this.contactTypeCode,
        activationDate: activationDate ?? this.activationDate,
        closingDate: closingDate ?? this.closingDate,
        isPrimary: isPrimary ?? this.isPrimary);
  }

  Address copyWithWrapped(
      {Wrapped<String?>? addressLine1,
      Wrapped<String?>? addressLine2,
      Wrapped<String?>? addressLine3,
      Wrapped<String?>? postalCode,
      Wrapped<enums.PostalAddressTypeEnum?>? addressTypeCode,
      Wrapped<String?>? countryCode,
      Wrapped<Location?>? location,
      Wrapped<String?>? contactName,
      Wrapped<String?>? contactNumber,
      Wrapped<String?>? countryDesc,
      Wrapped<String?>? cityCode,
      Wrapped<String?>? cityDesc,
      Wrapped<String?>? districtCode,
      Wrapped<String?>? id,
      Wrapped<enums.ContactTypeEnum?>? contactTypeCode,
      Wrapped<DateTime?>? activationDate,
      Wrapped<DateTime?>? closingDate,
      Wrapped<double?>? isPrimary}) {
    return Address(
        addressLine1:
            (addressLine1 != null ? addressLine1.value : this.addressLine1),
        addressLine2:
            (addressLine2 != null ? addressLine2.value : this.addressLine2),
        addressLine3:
            (addressLine3 != null ? addressLine3.value : this.addressLine3),
        postalCode: (postalCode != null ? postalCode.value : this.postalCode),
        addressTypeCode: (addressTypeCode != null
            ? addressTypeCode.value
            : this.addressTypeCode),
        countryCode:
            (countryCode != null ? countryCode.value : this.countryCode),
        location: (location != null ? location.value : this.location),
        contactName:
            (contactName != null ? contactName.value : this.contactName),
        contactNumber:
            (contactNumber != null ? contactNumber.value : this.contactNumber),
        countryDesc:
            (countryDesc != null ? countryDesc.value : this.countryDesc),
        cityCode: (cityCode != null ? cityCode.value : this.cityCode),
        cityDesc: (cityDesc != null ? cityDesc.value : this.cityDesc),
        districtCode:
            (districtCode != null ? districtCode.value : this.districtCode),
        id: (id != null ? id.value : this.id),
        contactTypeCode: (contactTypeCode != null
            ? contactTypeCode.value
            : this.contactTypeCode),
        activationDate: (activationDate != null
            ? activationDate.value
            : this.activationDate),
        closingDate:
            (closingDate != null ? closingDate.value : this.closingDate),
        isPrimary: (isPrimary != null ? isPrimary.value : this.isPrimary));
  }
}

@JsonSerializable(explicitToJson: true)
class Contact {
  const Contact({
    this.id,
    this.contactTypeCode,
    this.activationDate,
    this.closingDate,
    this.isPrimary,
  });

  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);

  static const toJsonFactory = _$ContactToJson;
  Map<String, dynamic> toJson() => _$ContactToJson(this);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(
    name: 'contactTypeCode',
    toJson: contactTypeEnumNullableToJson,
    fromJson: contactTypeEnumNullableFromJson,
  )
  final enums.ContactTypeEnum? contactTypeCode;
  @JsonKey(name: 'activationDate')
  final DateTime? activationDate;
  @JsonKey(name: 'closingDate')
  final DateTime? closingDate;
  @JsonKey(name: 'isPrimary')
  final double? isPrimary;
  static const fromJsonFactory = _$ContactFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Contact &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.contactTypeCode, contactTypeCode) ||
                const DeepCollectionEquality()
                    .equals(other.contactTypeCode, contactTypeCode)) &&
            (identical(other.activationDate, activationDate) ||
                const DeepCollectionEquality()
                    .equals(other.activationDate, activationDate)) &&
            (identical(other.closingDate, closingDate) ||
                const DeepCollectionEquality()
                    .equals(other.closingDate, closingDate)) &&
            (identical(other.isPrimary, isPrimary) ||
                const DeepCollectionEquality()
                    .equals(other.isPrimary, isPrimary)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(contactTypeCode) ^
      const DeepCollectionEquality().hash(activationDate) ^
      const DeepCollectionEquality().hash(closingDate) ^
      const DeepCollectionEquality().hash(isPrimary) ^
      runtimeType.hashCode;
}

extension $ContactExtension on Contact {
  Contact copyWith(
      {String? id,
      enums.ContactTypeEnum? contactTypeCode,
      DateTime? activationDate,
      DateTime? closingDate,
      double? isPrimary}) {
    return Contact(
        id: id ?? this.id,
        contactTypeCode: contactTypeCode ?? this.contactTypeCode,
        activationDate: activationDate ?? this.activationDate,
        closingDate: closingDate ?? this.closingDate,
        isPrimary: isPrimary ?? this.isPrimary);
  }

  Contact copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<enums.ContactTypeEnum?>? contactTypeCode,
      Wrapped<DateTime?>? activationDate,
      Wrapped<DateTime?>? closingDate,
      Wrapped<double?>? isPrimary}) {
    return Contact(
        id: (id != null ? id.value : this.id),
        contactTypeCode: (contactTypeCode != null
            ? contactTypeCode.value
            : this.contactTypeCode),
        activationDate: (activationDate != null
            ? activationDate.value
            : this.activationDate),
        closingDate:
            (closingDate != null ? closingDate.value : this.closingDate),
        isPrimary: (isPrimary != null ? isPrimary.value : this.isPrimary));
  }
}

@JsonSerializable(explicitToJson: true)
class Email {
  const Email({
    this.emailAddress,
    this.typeCode,
    this.id,
    this.contactTypeCode,
    this.activationDate,
    this.closingDate,
    this.isPrimary,
  });

  factory Email.fromJson(Map<String, dynamic> json) => _$EmailFromJson(json);

  static const toJsonFactory = _$EmailToJson;
  Map<String, dynamic> toJson() => _$EmailToJson(this);

  @JsonKey(name: 'emailAddress')
  final String? emailAddress;
  @JsonKey(
    name: 'typeCode',
    toJson: postalAddressTypeEnumNullableToJson,
    fromJson: postalAddressTypeEnumNullableFromJson,
  )
  final enums.PostalAddressTypeEnum? typeCode;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(
    name: 'contactTypeCode',
    toJson: contactTypeEnumNullableToJson,
    fromJson: contactTypeEnumNullableFromJson,
  )
  final enums.ContactTypeEnum? contactTypeCode;
  @JsonKey(name: 'activationDate')
  final DateTime? activationDate;
  @JsonKey(name: 'closingDate')
  final DateTime? closingDate;
  @JsonKey(name: 'isPrimary')
  final double? isPrimary;
  static const fromJsonFactory = _$EmailFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Email &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.typeCode, typeCode) ||
                const DeepCollectionEquality()
                    .equals(other.typeCode, typeCode)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.contactTypeCode, contactTypeCode) ||
                const DeepCollectionEquality()
                    .equals(other.contactTypeCode, contactTypeCode)) &&
            (identical(other.activationDate, activationDate) ||
                const DeepCollectionEquality()
                    .equals(other.activationDate, activationDate)) &&
            (identical(other.closingDate, closingDate) ||
                const DeepCollectionEquality()
                    .equals(other.closingDate, closingDate)) &&
            (identical(other.isPrimary, isPrimary) ||
                const DeepCollectionEquality()
                    .equals(other.isPrimary, isPrimary)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(typeCode) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(contactTypeCode) ^
      const DeepCollectionEquality().hash(activationDate) ^
      const DeepCollectionEquality().hash(closingDate) ^
      const DeepCollectionEquality().hash(isPrimary) ^
      runtimeType.hashCode;
}

extension $EmailExtension on Email {
  Email copyWith(
      {String? emailAddress,
      enums.PostalAddressTypeEnum? typeCode,
      String? id,
      enums.ContactTypeEnum? contactTypeCode,
      DateTime? activationDate,
      DateTime? closingDate,
      double? isPrimary}) {
    return Email(
        emailAddress: emailAddress ?? this.emailAddress,
        typeCode: typeCode ?? this.typeCode,
        id: id ?? this.id,
        contactTypeCode: contactTypeCode ?? this.contactTypeCode,
        activationDate: activationDate ?? this.activationDate,
        closingDate: closingDate ?? this.closingDate,
        isPrimary: isPrimary ?? this.isPrimary);
  }

  Email copyWithWrapped(
      {Wrapped<String?>? emailAddress,
      Wrapped<enums.PostalAddressTypeEnum?>? typeCode,
      Wrapped<String?>? id,
      Wrapped<enums.ContactTypeEnum?>? contactTypeCode,
      Wrapped<DateTime?>? activationDate,
      Wrapped<DateTime?>? closingDate,
      Wrapped<double?>? isPrimary}) {
    return Email(
        emailAddress:
            (emailAddress != null ? emailAddress.value : this.emailAddress),
        typeCode: (typeCode != null ? typeCode.value : this.typeCode),
        id: (id != null ? id.value : this.id),
        contactTypeCode: (contactTypeCode != null
            ? contactTypeCode.value
            : this.contactTypeCode),
        activationDate: (activationDate != null
            ? activationDate.value
            : this.activationDate),
        closingDate:
            (closingDate != null ? closingDate.value : this.closingDate),
        isPrimary: (isPrimary != null ? isPrimary.value : this.isPrimary));
  }
}

@JsonSerializable(explicitToJson: true)
class Phone {
  const Phone({
    this.phoneNumber,
    this.phoneTypeCode,
    this.id,
    this.contactTypeCode,
    this.activationDate,
    this.closingDate,
    this.isPrimary,
  });

  factory Phone.fromJson(Map<String, dynamic> json) => _$PhoneFromJson(json);

  static const toJsonFactory = _$PhoneToJson;
  Map<String, dynamic> toJson() => _$PhoneToJson(this);

  @JsonKey(name: 'phoneNumber')
  final String? phoneNumber;
  @JsonKey(
    name: 'phoneTypeCode',
    toJson: postalAddressTypeEnumNullableToJson,
    fromJson: postalAddressTypeEnumNullableFromJson,
  )
  final enums.PostalAddressTypeEnum? phoneTypeCode;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(
    name: 'contactTypeCode',
    toJson: contactTypeEnumNullableToJson,
    fromJson: contactTypeEnumNullableFromJson,
  )
  final enums.ContactTypeEnum? contactTypeCode;
  @JsonKey(name: 'activationDate')
  final DateTime? activationDate;
  @JsonKey(name: 'closingDate')
  final DateTime? closingDate;
  @JsonKey(name: 'isPrimary')
  final double? isPrimary;
  static const fromJsonFactory = _$PhoneFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Phone &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.phoneTypeCode, phoneTypeCode) ||
                const DeepCollectionEquality()
                    .equals(other.phoneTypeCode, phoneTypeCode)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.contactTypeCode, contactTypeCode) ||
                const DeepCollectionEquality()
                    .equals(other.contactTypeCode, contactTypeCode)) &&
            (identical(other.activationDate, activationDate) ||
                const DeepCollectionEquality()
                    .equals(other.activationDate, activationDate)) &&
            (identical(other.closingDate, closingDate) ||
                const DeepCollectionEquality()
                    .equals(other.closingDate, closingDate)) &&
            (identical(other.isPrimary, isPrimary) ||
                const DeepCollectionEquality()
                    .equals(other.isPrimary, isPrimary)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(phoneTypeCode) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(contactTypeCode) ^
      const DeepCollectionEquality().hash(activationDate) ^
      const DeepCollectionEquality().hash(closingDate) ^
      const DeepCollectionEquality().hash(isPrimary) ^
      runtimeType.hashCode;
}

extension $PhoneExtension on Phone {
  Phone copyWith(
      {String? phoneNumber,
      enums.PostalAddressTypeEnum? phoneTypeCode,
      String? id,
      enums.ContactTypeEnum? contactTypeCode,
      DateTime? activationDate,
      DateTime? closingDate,
      double? isPrimary}) {
    return Phone(
        phoneNumber: phoneNumber ?? this.phoneNumber,
        phoneTypeCode: phoneTypeCode ?? this.phoneTypeCode,
        id: id ?? this.id,
        contactTypeCode: contactTypeCode ?? this.contactTypeCode,
        activationDate: activationDate ?? this.activationDate,
        closingDate: closingDate ?? this.closingDate,
        isPrimary: isPrimary ?? this.isPrimary);
  }

  Phone copyWithWrapped(
      {Wrapped<String?>? phoneNumber,
      Wrapped<enums.PostalAddressTypeEnum?>? phoneTypeCode,
      Wrapped<String?>? id,
      Wrapped<enums.ContactTypeEnum?>? contactTypeCode,
      Wrapped<DateTime?>? activationDate,
      Wrapped<DateTime?>? closingDate,
      Wrapped<double?>? isPrimary}) {
    return Phone(
        phoneNumber:
            (phoneNumber != null ? phoneNumber.value : this.phoneNumber),
        phoneTypeCode:
            (phoneTypeCode != null ? phoneTypeCode.value : this.phoneTypeCode),
        id: (id != null ? id.value : this.id),
        contactTypeCode: (contactTypeCode != null
            ? contactTypeCode.value
            : this.contactTypeCode),
        activationDate: (activationDate != null
            ? activationDate.value
            : this.activationDate),
        closingDate:
            (closingDate != null ? closingDate.value : this.closingDate),
        isPrimary: (isPrimary != null ? isPrimary.value : this.isPrimary));
  }
}

@JsonSerializable(explicitToJson: true)
class Document {
  const Document({
    this.documentId,
    this.documentTitle,
    this.flagVerified,
    this.documentTypeCode,
    this.statusCode,
    this.documentNumber,
    this.issuedBy,
    this.dateOfIssue,
    this.dateOfExpiry,
  });

  factory Document.fromJson(Map<String, dynamic> json) =>
      _$DocumentFromJson(json);

  static const toJsonFactory = _$DocumentToJson;
  Map<String, dynamic> toJson() => _$DocumentToJson(this);

  @JsonKey(name: 'documentId')
  final String? documentId;
  @JsonKey(name: 'documentTitle')
  final String? documentTitle;
  @JsonKey(name: 'flagVerified')
  final double? flagVerified;
  @JsonKey(
    name: 'documentTypeCode',
    toJson: documentTypeEnumNullableToJson,
    fromJson: documentTypeEnumNullableFromJson,
  )
  final enums.DocumentTypeEnum? documentTypeCode;
  @JsonKey(name: 'statusCode')
  final String? statusCode;
  @JsonKey(name: 'documentNumber')
  final String? documentNumber;
  @JsonKey(name: 'issuedBy')
  final String? issuedBy;
  @JsonKey(name: 'dateOfIssue', toJson: _dateToJson)
  final DateTime? dateOfIssue;
  @JsonKey(name: 'dateOfExpiry', toJson: _dateToJson)
  final DateTime? dateOfExpiry;
  static const fromJsonFactory = _$DocumentFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Document &&
            (identical(other.documentId, documentId) ||
                const DeepCollectionEquality()
                    .equals(other.documentId, documentId)) &&
            (identical(other.documentTitle, documentTitle) ||
                const DeepCollectionEquality()
                    .equals(other.documentTitle, documentTitle)) &&
            (identical(other.flagVerified, flagVerified) ||
                const DeepCollectionEquality()
                    .equals(other.flagVerified, flagVerified)) &&
            (identical(other.documentTypeCode, documentTypeCode) ||
                const DeepCollectionEquality()
                    .equals(other.documentTypeCode, documentTypeCode)) &&
            (identical(other.statusCode, statusCode) ||
                const DeepCollectionEquality()
                    .equals(other.statusCode, statusCode)) &&
            (identical(other.documentNumber, documentNumber) ||
                const DeepCollectionEquality()
                    .equals(other.documentNumber, documentNumber)) &&
            (identical(other.issuedBy, issuedBy) ||
                const DeepCollectionEquality()
                    .equals(other.issuedBy, issuedBy)) &&
            (identical(other.dateOfIssue, dateOfIssue) ||
                const DeepCollectionEquality()
                    .equals(other.dateOfIssue, dateOfIssue)) &&
            (identical(other.dateOfExpiry, dateOfExpiry) ||
                const DeepCollectionEquality()
                    .equals(other.dateOfExpiry, dateOfExpiry)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(documentId) ^
      const DeepCollectionEquality().hash(documentTitle) ^
      const DeepCollectionEquality().hash(flagVerified) ^
      const DeepCollectionEquality().hash(documentTypeCode) ^
      const DeepCollectionEquality().hash(statusCode) ^
      const DeepCollectionEquality().hash(documentNumber) ^
      const DeepCollectionEquality().hash(issuedBy) ^
      const DeepCollectionEquality().hash(dateOfIssue) ^
      const DeepCollectionEquality().hash(dateOfExpiry) ^
      runtimeType.hashCode;
}

extension $DocumentExtension on Document {
  Document copyWith(
      {String? documentId,
      String? documentTitle,
      double? flagVerified,
      enums.DocumentTypeEnum? documentTypeCode,
      String? statusCode,
      String? documentNumber,
      String? issuedBy,
      DateTime? dateOfIssue,
      DateTime? dateOfExpiry}) {
    return Document(
        documentId: documentId ?? this.documentId,
        documentTitle: documentTitle ?? this.documentTitle,
        flagVerified: flagVerified ?? this.flagVerified,
        documentTypeCode: documentTypeCode ?? this.documentTypeCode,
        statusCode: statusCode ?? this.statusCode,
        documentNumber: documentNumber ?? this.documentNumber,
        issuedBy: issuedBy ?? this.issuedBy,
        dateOfIssue: dateOfIssue ?? this.dateOfIssue,
        dateOfExpiry: dateOfExpiry ?? this.dateOfExpiry);
  }

  Document copyWithWrapped(
      {Wrapped<String?>? documentId,
      Wrapped<String?>? documentTitle,
      Wrapped<double?>? flagVerified,
      Wrapped<enums.DocumentTypeEnum?>? documentTypeCode,
      Wrapped<String?>? statusCode,
      Wrapped<String?>? documentNumber,
      Wrapped<String?>? issuedBy,
      Wrapped<DateTime?>? dateOfIssue,
      Wrapped<DateTime?>? dateOfExpiry}) {
    return Document(
        documentId: (documentId != null ? documentId.value : this.documentId),
        documentTitle:
            (documentTitle != null ? documentTitle.value : this.documentTitle),
        flagVerified:
            (flagVerified != null ? flagVerified.value : this.flagVerified),
        documentTypeCode: (documentTypeCode != null
            ? documentTypeCode.value
            : this.documentTypeCode),
        statusCode: (statusCode != null ? statusCode.value : this.statusCode),
        documentNumber: (documentNumber != null
            ? documentNumber.value
            : this.documentNumber),
        issuedBy: (issuedBy != null ? issuedBy.value : this.issuedBy),
        dateOfIssue:
            (dateOfIssue != null ? dateOfIssue.value : this.dateOfIssue),
        dateOfExpiry:
            (dateOfExpiry != null ? dateOfExpiry.value : this.dateOfExpiry));
  }
}

@JsonSerializable(explicitToJson: true)
class Relation {
  const Relation({
    this.id,
    this.secondaryIndividual,
    this.relationType,
  });

  factory Relation.fromJson(Map<String, dynamic> json) =>
      _$RelationFromJson(json);

  static const toJsonFactory = _$RelationToJson;
  Map<String, dynamic> toJson() => _$RelationToJson(this);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'secondaryIndividual')
  final SecondaryIndividual? secondaryIndividual;
  @JsonKey(
    name: 'relationType',
    toJson: relationTypeEnumNullableToJson,
    fromJson: relationTypeEnumNullableFromJson,
  )
  final enums.RelationTypeEnum? relationType;
  static const fromJsonFactory = _$RelationFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Relation &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.secondaryIndividual, secondaryIndividual) ||
                const DeepCollectionEquality()
                    .equals(other.secondaryIndividual, secondaryIndividual)) &&
            (identical(other.relationType, relationType) ||
                const DeepCollectionEquality()
                    .equals(other.relationType, relationType)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(secondaryIndividual) ^
      const DeepCollectionEquality().hash(relationType) ^
      runtimeType.hashCode;
}

extension $RelationExtension on Relation {
  Relation copyWith(
      {String? id,
      SecondaryIndividual? secondaryIndividual,
      enums.RelationTypeEnum? relationType}) {
    return Relation(
        id: id ?? this.id,
        secondaryIndividual: secondaryIndividual ?? this.secondaryIndividual,
        relationType: relationType ?? this.relationType);
  }

  Relation copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<SecondaryIndividual?>? secondaryIndividual,
      Wrapped<enums.RelationTypeEnum?>? relationType}) {
    return Relation(
        id: (id != null ? id.value : this.id),
        secondaryIndividual: (secondaryIndividual != null
            ? secondaryIndividual.value
            : this.secondaryIndividual),
        relationType:
            (relationType != null ? relationType.value : this.relationType));
  }
}

@JsonSerializable(explicitToJson: true)
class TypeOfInfringement {
  const TypeOfInfringement({
    this.typeOfInfringementId,
    this.typeOfInfringementDescription,
    this.productReference,
    this.startValidityDate,
    this.endValidityDate,
  });

  factory TypeOfInfringement.fromJson(Map<String, dynamic> json) =>
      _$TypeOfInfringementFromJson(json);

  static const toJsonFactory = _$TypeOfInfringementToJson;
  Map<String, dynamic> toJson() => _$TypeOfInfringementToJson(this);

  @JsonKey(name: 'typeOfInfringementId')
  final String? typeOfInfringementId;
  @JsonKey(name: 'typeOfInfringementDescription')
  final String? typeOfInfringementDescription;
  @JsonKey(name: 'productReference')
  final String? productReference;
  @JsonKey(name: 'startValidityDate')
  final DateTime? startValidityDate;
  @JsonKey(name: 'endValidityDate')
  final DateTime? endValidityDate;
  static const fromJsonFactory = _$TypeOfInfringementFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TypeOfInfringement &&
            (identical(other.typeOfInfringementId, typeOfInfringementId) ||
                const DeepCollectionEquality().equals(
                    other.typeOfInfringementId, typeOfInfringementId)) &&
            (identical(other.typeOfInfringementDescription,
                    typeOfInfringementDescription) ||
                const DeepCollectionEquality().equals(
                    other.typeOfInfringementDescription,
                    typeOfInfringementDescription)) &&
            (identical(other.productReference, productReference) ||
                const DeepCollectionEquality()
                    .equals(other.productReference, productReference)) &&
            (identical(other.startValidityDate, startValidityDate) ||
                const DeepCollectionEquality()
                    .equals(other.startValidityDate, startValidityDate)) &&
            (identical(other.endValidityDate, endValidityDate) ||
                const DeepCollectionEquality()
                    .equals(other.endValidityDate, endValidityDate)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(typeOfInfringementId) ^
      const DeepCollectionEquality().hash(typeOfInfringementDescription) ^
      const DeepCollectionEquality().hash(productReference) ^
      const DeepCollectionEquality().hash(startValidityDate) ^
      const DeepCollectionEquality().hash(endValidityDate) ^
      runtimeType.hashCode;
}

extension $TypeOfInfringementExtension on TypeOfInfringement {
  TypeOfInfringement copyWith(
      {String? typeOfInfringementId,
      String? typeOfInfringementDescription,
      String? productReference,
      DateTime? startValidityDate,
      DateTime? endValidityDate}) {
    return TypeOfInfringement(
        typeOfInfringementId: typeOfInfringementId ?? this.typeOfInfringementId,
        typeOfInfringementDescription:
            typeOfInfringementDescription ?? this.typeOfInfringementDescription,
        productReference: productReference ?? this.productReference,
        startValidityDate: startValidityDate ?? this.startValidityDate,
        endValidityDate: endValidityDate ?? this.endValidityDate);
  }

  TypeOfInfringement copyWithWrapped(
      {Wrapped<String?>? typeOfInfringementId,
      Wrapped<String?>? typeOfInfringementDescription,
      Wrapped<String?>? productReference,
      Wrapped<DateTime?>? startValidityDate,
      Wrapped<DateTime?>? endValidityDate}) {
    return TypeOfInfringement(
        typeOfInfringementId: (typeOfInfringementId != null
            ? typeOfInfringementId.value
            : this.typeOfInfringementId),
        typeOfInfringementDescription: (typeOfInfringementDescription != null
            ? typeOfInfringementDescription.value
            : this.typeOfInfringementDescription),
        productReference: (productReference != null
            ? productReference.value
            : this.productReference),
        startValidityDate: (startValidityDate != null
            ? startValidityDate.value
            : this.startValidityDate),
        endValidityDate: (endValidityDate != null
            ? endValidityDate.value
            : this.endValidityDate));
  }
}

@JsonSerializable(explicitToJson: true)
class InfringementCost {
  const InfringementCost({
    this.penaltyAmount,
    this.startValidityDate,
    this.endValidityDate,
    this.numberOfPaidDaysWithin,
    this.flagPlusTicket,
    this.costsOfProceedings,
    this.currencyCode,
  });

  factory InfringementCost.fromJson(Map<String, dynamic> json) =>
      _$InfringementCostFromJson(json);

  static const toJsonFactory = _$InfringementCostToJson;
  Map<String, dynamic> toJson() => _$InfringementCostToJson(this);

  @JsonKey(name: 'penaltyAmount')
  final double? penaltyAmount;
  @JsonKey(name: 'startValidityDate')
  final DateTime? startValidityDate;
  @JsonKey(name: 'endValidityDate')
  final DateTime? endValidityDate;
  @JsonKey(name: 'numberOfPaidDaysWithin')
  final double? numberOfPaidDaysWithin;
  @JsonKey(name: 'flagPlusTicket')
  final double? flagPlusTicket;
  @JsonKey(name: 'costsOfProceedings')
  final double? costsOfProceedings;
  @JsonKey(name: 'currencyCode')
  final String? currencyCode;
  static const fromJsonFactory = _$InfringementCostFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InfringementCost &&
            (identical(other.penaltyAmount, penaltyAmount) ||
                const DeepCollectionEquality()
                    .equals(other.penaltyAmount, penaltyAmount)) &&
            (identical(other.startValidityDate, startValidityDate) ||
                const DeepCollectionEquality()
                    .equals(other.startValidityDate, startValidityDate)) &&
            (identical(other.endValidityDate, endValidityDate) ||
                const DeepCollectionEquality()
                    .equals(other.endValidityDate, endValidityDate)) &&
            (identical(other.numberOfPaidDaysWithin, numberOfPaidDaysWithin) ||
                const DeepCollectionEquality().equals(
                    other.numberOfPaidDaysWithin, numberOfPaidDaysWithin)) &&
            (identical(other.flagPlusTicket, flagPlusTicket) ||
                const DeepCollectionEquality()
                    .equals(other.flagPlusTicket, flagPlusTicket)) &&
            (identical(other.costsOfProceedings, costsOfProceedings) ||
                const DeepCollectionEquality()
                    .equals(other.costsOfProceedings, costsOfProceedings)) &&
            (identical(other.currencyCode, currencyCode) ||
                const DeepCollectionEquality()
                    .equals(other.currencyCode, currencyCode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(penaltyAmount) ^
      const DeepCollectionEquality().hash(startValidityDate) ^
      const DeepCollectionEquality().hash(endValidityDate) ^
      const DeepCollectionEquality().hash(numberOfPaidDaysWithin) ^
      const DeepCollectionEquality().hash(flagPlusTicket) ^
      const DeepCollectionEquality().hash(costsOfProceedings) ^
      const DeepCollectionEquality().hash(currencyCode) ^
      runtimeType.hashCode;
}

extension $InfringementCostExtension on InfringementCost {
  InfringementCost copyWith(
      {double? penaltyAmount,
      DateTime? startValidityDate,
      DateTime? endValidityDate,
      double? numberOfPaidDaysWithin,
      double? flagPlusTicket,
      double? costsOfProceedings,
      String? currencyCode}) {
    return InfringementCost(
        penaltyAmount: penaltyAmount ?? this.penaltyAmount,
        startValidityDate: startValidityDate ?? this.startValidityDate,
        endValidityDate: endValidityDate ?? this.endValidityDate,
        numberOfPaidDaysWithin:
            numberOfPaidDaysWithin ?? this.numberOfPaidDaysWithin,
        flagPlusTicket: flagPlusTicket ?? this.flagPlusTicket,
        costsOfProceedings: costsOfProceedings ?? this.costsOfProceedings,
        currencyCode: currencyCode ?? this.currencyCode);
  }

  InfringementCost copyWithWrapped(
      {Wrapped<double?>? penaltyAmount,
      Wrapped<DateTime?>? startValidityDate,
      Wrapped<DateTime?>? endValidityDate,
      Wrapped<double?>? numberOfPaidDaysWithin,
      Wrapped<double?>? flagPlusTicket,
      Wrapped<double?>? costsOfProceedings,
      Wrapped<String?>? currencyCode}) {
    return InfringementCost(
        penaltyAmount:
            (penaltyAmount != null ? penaltyAmount.value : this.penaltyAmount),
        startValidityDate: (startValidityDate != null
            ? startValidityDate.value
            : this.startValidityDate),
        endValidityDate: (endValidityDate != null
            ? endValidityDate.value
            : this.endValidityDate),
        numberOfPaidDaysWithin: (numberOfPaidDaysWithin != null
            ? numberOfPaidDaysWithin.value
            : this.numberOfPaidDaysWithin),
        flagPlusTicket: (flagPlusTicket != null
            ? flagPlusTicket.value
            : this.flagPlusTicket),
        costsOfProceedings: (costsOfProceedings != null
            ? costsOfProceedings.value
            : this.costsOfProceedings),
        currencyCode:
            (currencyCode != null ? currencyCode.value : this.currencyCode));
  }
}

@JsonSerializable(explicitToJson: true)
class FineInsertInput {
  const FineInsertInput({
    this.fineId,
    required this.dateOfNotification,
    this.inspectorDesc,
    this.inspectorRoleCode,
    required this.mainIndividual,
    this.relationType,
    this.secondaryIndividual,
    required this.typeOfInfringementId,
    this.flagNotified,
    this.inspectorNote,
    this.offenderStatements,
    this.inspectionTransactionReference,
    this.statusCode,
    required this.servicesAffected,
    this.ticketPrice,
    this.currencyCode,
    required this.ticketInspectorReference,
    this.workshiftReference,
    required this.touchpointReference,
    this.touchpointType,
  });

  factory FineInsertInput.fromJson(Map<String, dynamic> json) =>
      _$FineInsertInputFromJson(json);

  static const toJsonFactory = _$FineInsertInputToJson;
  Map<String, dynamic> toJson() => _$FineInsertInputToJson(this);

  @JsonKey(name: 'fineId')
  final String? fineId;
  @JsonKey(name: 'dateOfNotification')
  final DateTime dateOfNotification;
  @JsonKey(name: 'inspectorDesc')
  final String? inspectorDesc;
  @JsonKey(name: 'inspectorRoleCode')
  final String? inspectorRoleCode;
  @JsonKey(name: 'mainIndividual')
  final Individual mainIndividual;
  @JsonKey(
    name: 'relationType',
    toJson: relationTypeEnumNullableToJson,
    fromJson: relationTypeEnumNullableFromJson,
  )
  final enums.RelationTypeEnum? relationType;
  @JsonKey(name: 'secondaryIndividual')
  final Individual? secondaryIndividual;
  @JsonKey(name: 'typeOfInfringementId')
  final String typeOfInfringementId;
  @JsonKey(name: 'flagNotified')
  final bool? flagNotified;
  @JsonKey(name: 'inspectorNote')
  final String? inspectorNote;
  @JsonKey(name: 'offenderStatements')
  final String? offenderStatements;
  @JsonKey(name: 'inspectionTransactionReference')
  final String? inspectionTransactionReference;
  @JsonKey(
    name: 'statusCode',
    toJson: notificationStatusEnumNullableToJson,
    fromJson: notificationStatusEnumNullableFromJson,
  )
  final enums.NotificationStatusEnum? statusCode;
  @JsonKey(name: 'servicesAffected')
  final ServicesAffected servicesAffected;
  @JsonKey(name: 'ticketPrice')
  final double? ticketPrice;
  @JsonKey(name: 'currencyCode')
  final String? currencyCode;
  @JsonKey(name: 'ticketInspectorReference')
  final String ticketInspectorReference;
  @JsonKey(name: 'workshiftReference')
  final String? workshiftReference;
  @JsonKey(name: 'touchpointReference')
  final String touchpointReference;
  @JsonKey(
    name: 'touchpointType',
    toJson: touchpointEnumNullableToJson,
    fromJson: touchpointEnumNullableFromJson,
  )
  final enums.TouchpointEnum? touchpointType;
  static const fromJsonFactory = _$FineInsertInputFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FineInsertInput &&
            (identical(other.fineId, fineId) ||
                const DeepCollectionEquality().equals(other.fineId, fineId)) &&
            (identical(other.dateOfNotification, dateOfNotification) ||
                const DeepCollectionEquality()
                    .equals(other.dateOfNotification, dateOfNotification)) &&
            (identical(other.inspectorDesc, inspectorDesc) ||
                const DeepCollectionEquality()
                    .equals(other.inspectorDesc, inspectorDesc)) &&
            (identical(other.inspectorRoleCode, inspectorRoleCode) ||
                const DeepCollectionEquality()
                    .equals(other.inspectorRoleCode, inspectorRoleCode)) &&
            (identical(other.mainIndividual, mainIndividual) ||
                const DeepCollectionEquality()
                    .equals(other.mainIndividual, mainIndividual)) &&
            (identical(other.relationType, relationType) ||
                const DeepCollectionEquality()
                    .equals(other.relationType, relationType)) &&
            (identical(other.secondaryIndividual, secondaryIndividual) ||
                const DeepCollectionEquality()
                    .equals(other.secondaryIndividual, secondaryIndividual)) &&
            (identical(other.typeOfInfringementId, typeOfInfringementId) ||
                const DeepCollectionEquality().equals(
                    other.typeOfInfringementId, typeOfInfringementId)) &&
            (identical(other.flagNotified, flagNotified) ||
                const DeepCollectionEquality()
                    .equals(other.flagNotified, flagNotified)) &&
            (identical(other.inspectorNote, inspectorNote) ||
                const DeepCollectionEquality()
                    .equals(other.inspectorNote, inspectorNote)) &&
            (identical(other.offenderStatements, offenderStatements) ||
                const DeepCollectionEquality()
                    .equals(other.offenderStatements, offenderStatements)) &&
            (identical(other.inspectionTransactionReference, inspectionTransactionReference) ||
                const DeepCollectionEquality().equals(
                    other.inspectionTransactionReference,
                    inspectionTransactionReference)) &&
            (identical(other.statusCode, statusCode) ||
                const DeepCollectionEquality()
                    .equals(other.statusCode, statusCode)) &&
            (identical(other.servicesAffected, servicesAffected) ||
                const DeepCollectionEquality()
                    .equals(other.servicesAffected, servicesAffected)) &&
            (identical(other.ticketPrice, ticketPrice) ||
                const DeepCollectionEquality()
                    .equals(other.ticketPrice, ticketPrice)) &&
            (identical(other.currencyCode, currencyCode) ||
                const DeepCollectionEquality()
                    .equals(other.currencyCode, currencyCode)) &&
            (identical(other.ticketInspectorReference, ticketInspectorReference) ||
                const DeepCollectionEquality().equals(
                    other.ticketInspectorReference,
                    ticketInspectorReference)) &&
            (identical(other.workshiftReference, workshiftReference) ||
                const DeepCollectionEquality()
                    .equals(other.workshiftReference, workshiftReference)) &&
            (identical(other.touchpointReference, touchpointReference) ||
                const DeepCollectionEquality()
                    .equals(other.touchpointReference, touchpointReference)) &&
            (identical(other.touchpointType, touchpointType) || const DeepCollectionEquality().equals(other.touchpointType, touchpointType)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(fineId) ^
      const DeepCollectionEquality().hash(dateOfNotification) ^
      const DeepCollectionEquality().hash(inspectorDesc) ^
      const DeepCollectionEquality().hash(inspectorRoleCode) ^
      const DeepCollectionEquality().hash(mainIndividual) ^
      const DeepCollectionEquality().hash(relationType) ^
      const DeepCollectionEquality().hash(secondaryIndividual) ^
      const DeepCollectionEquality().hash(typeOfInfringementId) ^
      const DeepCollectionEquality().hash(flagNotified) ^
      const DeepCollectionEquality().hash(inspectorNote) ^
      const DeepCollectionEquality().hash(offenderStatements) ^
      const DeepCollectionEquality().hash(inspectionTransactionReference) ^
      const DeepCollectionEquality().hash(statusCode) ^
      const DeepCollectionEquality().hash(servicesAffected) ^
      const DeepCollectionEquality().hash(ticketPrice) ^
      const DeepCollectionEquality().hash(currencyCode) ^
      const DeepCollectionEquality().hash(ticketInspectorReference) ^
      const DeepCollectionEquality().hash(workshiftReference) ^
      const DeepCollectionEquality().hash(touchpointReference) ^
      const DeepCollectionEquality().hash(touchpointType) ^
      runtimeType.hashCode;
}

extension $FineInsertInputExtension on FineInsertInput {
  FineInsertInput copyWith(
      {String? fineId,
      DateTime? dateOfNotification,
      String? inspectorDesc,
      String? inspectorRoleCode,
      Individual? mainIndividual,
      enums.RelationTypeEnum? relationType,
      Individual? secondaryIndividual,
      String? typeOfInfringementId,
      bool? flagNotified,
      String? inspectorNote,
      String? offenderStatements,
      String? inspectionTransactionReference,
      enums.NotificationStatusEnum? statusCode,
      ServicesAffected? servicesAffected,
      double? ticketPrice,
      String? currencyCode,
      String? ticketInspectorReference,
      String? workshiftReference,
      String? touchpointReference,
      enums.TouchpointEnum? touchpointType}) {
    return FineInsertInput(
        fineId: fineId ?? this.fineId,
        dateOfNotification: dateOfNotification ?? this.dateOfNotification,
        inspectorDesc: inspectorDesc ?? this.inspectorDesc,
        inspectorRoleCode: inspectorRoleCode ?? this.inspectorRoleCode,
        mainIndividual: mainIndividual ?? this.mainIndividual,
        relationType: relationType ?? this.relationType,
        secondaryIndividual: secondaryIndividual ?? this.secondaryIndividual,
        typeOfInfringementId: typeOfInfringementId ?? this.typeOfInfringementId,
        flagNotified: flagNotified ?? this.flagNotified,
        inspectorNote: inspectorNote ?? this.inspectorNote,
        offenderStatements: offenderStatements ?? this.offenderStatements,
        inspectionTransactionReference: inspectionTransactionReference ??
            this.inspectionTransactionReference,
        statusCode: statusCode ?? this.statusCode,
        servicesAffected: servicesAffected ?? this.servicesAffected,
        ticketPrice: ticketPrice ?? this.ticketPrice,
        currencyCode: currencyCode ?? this.currencyCode,
        ticketInspectorReference:
            ticketInspectorReference ?? this.ticketInspectorReference,
        workshiftReference: workshiftReference ?? this.workshiftReference,
        touchpointReference: touchpointReference ?? this.touchpointReference,
        touchpointType: touchpointType ?? this.touchpointType);
  }

  FineInsertInput copyWithWrapped(
      {Wrapped<String?>? fineId,
      Wrapped<DateTime>? dateOfNotification,
      Wrapped<String?>? inspectorDesc,
      Wrapped<String?>? inspectorRoleCode,
      Wrapped<Individual>? mainIndividual,
      Wrapped<enums.RelationTypeEnum?>? relationType,
      Wrapped<Individual?>? secondaryIndividual,
      Wrapped<String>? typeOfInfringementId,
      Wrapped<bool?>? flagNotified,
      Wrapped<String?>? inspectorNote,
      Wrapped<String?>? offenderStatements,
      Wrapped<String?>? inspectionTransactionReference,
      Wrapped<enums.NotificationStatusEnum?>? statusCode,
      Wrapped<ServicesAffected>? servicesAffected,
      Wrapped<double?>? ticketPrice,
      Wrapped<String?>? currencyCode,
      Wrapped<String>? ticketInspectorReference,
      Wrapped<String?>? workshiftReference,
      Wrapped<String>? touchpointReference,
      Wrapped<enums.TouchpointEnum?>? touchpointType}) {
    return FineInsertInput(
        fineId: (fineId != null ? fineId.value : this.fineId),
        dateOfNotification: (dateOfNotification != null
            ? dateOfNotification.value
            : this.dateOfNotification),
        inspectorDesc:
            (inspectorDesc != null ? inspectorDesc.value : this.inspectorDesc),
        inspectorRoleCode: (inspectorRoleCode != null
            ? inspectorRoleCode.value
            : this.inspectorRoleCode),
        mainIndividual: (mainIndividual != null
            ? mainIndividual.value
            : this.mainIndividual),
        relationType:
            (relationType != null ? relationType.value : this.relationType),
        secondaryIndividual: (secondaryIndividual != null
            ? secondaryIndividual.value
            : this.secondaryIndividual),
        typeOfInfringementId: (typeOfInfringementId != null
            ? typeOfInfringementId.value
            : this.typeOfInfringementId),
        flagNotified:
            (flagNotified != null ? flagNotified.value : this.flagNotified),
        inspectorNote:
            (inspectorNote != null ? inspectorNote.value : this.inspectorNote),
        offenderStatements: (offenderStatements != null
            ? offenderStatements.value
            : this.offenderStatements),
        inspectionTransactionReference: (inspectionTransactionReference != null
            ? inspectionTransactionReference.value
            : this.inspectionTransactionReference),
        statusCode: (statusCode != null ? statusCode.value : this.statusCode),
        servicesAffected: (servicesAffected != null
            ? servicesAffected.value
            : this.servicesAffected),
        ticketPrice:
            (ticketPrice != null ? ticketPrice.value : this.ticketPrice),
        currencyCode:
            (currencyCode != null ? currencyCode.value : this.currencyCode),
        ticketInspectorReference: (ticketInspectorReference != null
            ? ticketInspectorReference.value
            : this.ticketInspectorReference),
        workshiftReference: (workshiftReference != null
            ? workshiftReference.value
            : this.workshiftReference),
        touchpointReference: (touchpointReference != null
            ? touchpointReference.value
            : this.touchpointReference),
        touchpointType: (touchpointType != null
            ? touchpointType.value
            : this.touchpointType));
  }
}

@JsonSerializable(explicitToJson: true)
class FineCostData {
  const FineCostData({
    this.amount,
    this.currency,
  });

  factory FineCostData.fromJson(Map<String, dynamic> json) =>
      _$FineCostDataFromJson(json);

  static const toJsonFactory = _$FineCostDataToJson;
  Map<String, dynamic> toJson() => _$FineCostDataToJson(this);

  @JsonKey(name: 'amount')
  final double? amount;
  @JsonKey(name: 'currency')
  final String? currency;
  static const fromJsonFactory = _$FineCostDataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FineCostData &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(currency) ^
      runtimeType.hashCode;
}

extension $FineCostDataExtension on FineCostData {
  FineCostData copyWith({double? amount, String? currency}) {
    return FineCostData(
        amount: amount ?? this.amount, currency: currency ?? this.currency);
  }

  FineCostData copyWithWrapped(
      {Wrapped<double?>? amount, Wrapped<String?>? currency}) {
    return FineCostData(
        amount: (amount != null ? amount.value : this.amount),
        currency: (currency != null ? currency.value : this.currency));
  }
}

@JsonSerializable(explicitToJson: true)
class FinePaymentData {
  const FinePaymentData({
    required this.fineId,
    this.externalTransactionCode,
    required this.paymentAmount,
    required this.ccy,
    required this.paymentType,
    this.codGateway,
    required this.workShiftId,
    required this.paymentDate,
    this.cashAmountEntered,
    this.changeValue,
    this.payoutChange,
    this.missingPayoutChange,
  });

  factory FinePaymentData.fromJson(Map<String, dynamic> json) =>
      _$FinePaymentDataFromJson(json);

  static const toJsonFactory = _$FinePaymentDataToJson;
  Map<String, dynamic> toJson() => _$FinePaymentDataToJson(this);

  @JsonKey(name: 'fineId')
  final String fineId;
  @JsonKey(name: 'externalTransactionCode')
  final String? externalTransactionCode;
  @JsonKey(name: 'paymentAmount')
  final double paymentAmount;
  @JsonKey(name: 'ccy')
  final String ccy;
  @JsonKey(
    name: 'paymentType',
    toJson: paymentTypeEnumToJson,
    fromJson: paymentTypeEnumFromJson,
  )
  final enums.PaymentTypeEnum paymentType;
  @JsonKey(
    name: 'codGateway',
    toJson: paymentGatewayTypeNullableToJson,
    fromJson: paymentGatewayTypeNullableFromJson,
  )
  final enums.PaymentGatewayType? codGateway;
  @JsonKey(name: 'workShiftId')
  final String workShiftId;
  @JsonKey(name: 'paymentDate')
  final DateTime paymentDate;
  @JsonKey(name: 'cashAmountEntered')
  final double? cashAmountEntered;
  @JsonKey(name: 'changeValue')
  final double? changeValue;
  @JsonKey(name: 'payoutChange')
  final double? payoutChange;
  @JsonKey(name: 'missingPayoutChange')
  final double? missingPayoutChange;
  static const fromJsonFactory = _$FinePaymentDataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FinePaymentData &&
            (identical(other.fineId, fineId) ||
                const DeepCollectionEquality().equals(other.fineId, fineId)) &&
            (identical(
                    other.externalTransactionCode, externalTransactionCode) ||
                const DeepCollectionEquality().equals(
                    other.externalTransactionCode, externalTransactionCode)) &&
            (identical(other.paymentAmount, paymentAmount) ||
                const DeepCollectionEquality()
                    .equals(other.paymentAmount, paymentAmount)) &&
            (identical(other.ccy, ccy) ||
                const DeepCollectionEquality().equals(other.ccy, ccy)) &&
            (identical(other.paymentType, paymentType) ||
                const DeepCollectionEquality()
                    .equals(other.paymentType, paymentType)) &&
            (identical(other.codGateway, codGateway) ||
                const DeepCollectionEquality()
                    .equals(other.codGateway, codGateway)) &&
            (identical(other.workShiftId, workShiftId) ||
                const DeepCollectionEquality()
                    .equals(other.workShiftId, workShiftId)) &&
            (identical(other.paymentDate, paymentDate) ||
                const DeepCollectionEquality()
                    .equals(other.paymentDate, paymentDate)) &&
            (identical(other.cashAmountEntered, cashAmountEntered) ||
                const DeepCollectionEquality()
                    .equals(other.cashAmountEntered, cashAmountEntered)) &&
            (identical(other.changeValue, changeValue) ||
                const DeepCollectionEquality()
                    .equals(other.changeValue, changeValue)) &&
            (identical(other.payoutChange, payoutChange) ||
                const DeepCollectionEquality()
                    .equals(other.payoutChange, payoutChange)) &&
            (identical(other.missingPayoutChange, missingPayoutChange) ||
                const DeepCollectionEquality()
                    .equals(other.missingPayoutChange, missingPayoutChange)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(fineId) ^
      const DeepCollectionEquality().hash(externalTransactionCode) ^
      const DeepCollectionEquality().hash(paymentAmount) ^
      const DeepCollectionEquality().hash(ccy) ^
      const DeepCollectionEquality().hash(paymentType) ^
      const DeepCollectionEquality().hash(codGateway) ^
      const DeepCollectionEquality().hash(workShiftId) ^
      const DeepCollectionEquality().hash(paymentDate) ^
      const DeepCollectionEquality().hash(cashAmountEntered) ^
      const DeepCollectionEquality().hash(changeValue) ^
      const DeepCollectionEquality().hash(payoutChange) ^
      const DeepCollectionEquality().hash(missingPayoutChange) ^
      runtimeType.hashCode;
}

extension $FinePaymentDataExtension on FinePaymentData {
  FinePaymentData copyWith(
      {String? fineId,
      String? externalTransactionCode,
      double? paymentAmount,
      String? ccy,
      enums.PaymentTypeEnum? paymentType,
      enums.PaymentGatewayType? codGateway,
      String? workShiftId,
      DateTime? paymentDate,
      double? cashAmountEntered,
      double? changeValue,
      double? payoutChange,
      double? missingPayoutChange}) {
    return FinePaymentData(
        fineId: fineId ?? this.fineId,
        externalTransactionCode:
            externalTransactionCode ?? this.externalTransactionCode,
        paymentAmount: paymentAmount ?? this.paymentAmount,
        ccy: ccy ?? this.ccy,
        paymentType: paymentType ?? this.paymentType,
        codGateway: codGateway ?? this.codGateway,
        workShiftId: workShiftId ?? this.workShiftId,
        paymentDate: paymentDate ?? this.paymentDate,
        cashAmountEntered: cashAmountEntered ?? this.cashAmountEntered,
        changeValue: changeValue ?? this.changeValue,
        payoutChange: payoutChange ?? this.payoutChange,
        missingPayoutChange: missingPayoutChange ?? this.missingPayoutChange);
  }

  FinePaymentData copyWithWrapped(
      {Wrapped<String>? fineId,
      Wrapped<String?>? externalTransactionCode,
      Wrapped<double>? paymentAmount,
      Wrapped<String>? ccy,
      Wrapped<enums.PaymentTypeEnum>? paymentType,
      Wrapped<enums.PaymentGatewayType?>? codGateway,
      Wrapped<String>? workShiftId,
      Wrapped<DateTime>? paymentDate,
      Wrapped<double?>? cashAmountEntered,
      Wrapped<double?>? changeValue,
      Wrapped<double?>? payoutChange,
      Wrapped<double?>? missingPayoutChange}) {
    return FinePaymentData(
        fineId: (fineId != null ? fineId.value : this.fineId),
        externalTransactionCode: (externalTransactionCode != null
            ? externalTransactionCode.value
            : this.externalTransactionCode),
        paymentAmount:
            (paymentAmount != null ? paymentAmount.value : this.paymentAmount),
        ccy: (ccy != null ? ccy.value : this.ccy),
        paymentType:
            (paymentType != null ? paymentType.value : this.paymentType),
        codGateway: (codGateway != null ? codGateway.value : this.codGateway),
        workShiftId:
            (workShiftId != null ? workShiftId.value : this.workShiftId),
        paymentDate:
            (paymentDate != null ? paymentDate.value : this.paymentDate),
        cashAmountEntered: (cashAmountEntered != null
            ? cashAmountEntered.value
            : this.cashAmountEntered),
        changeValue:
            (changeValue != null ? changeValue.value : this.changeValue),
        payoutChange:
            (payoutChange != null ? payoutChange.value : this.payoutChange),
        missingPayoutChange: (missingPayoutChange != null
            ? missingPayoutChange.value
            : this.missingPayoutChange));
  }
}

@JsonSerializable(explicitToJson: true)
class SalesPackage$UsageParameter {
  const SalesPackage$UsageParameter({
    this.validityPeriods,
    this.customerProfiles,
  });

  factory SalesPackage$UsageParameter.fromJson(Map<String, dynamic> json) =>
      _$SalesPackage$UsageParameterFromJson(json);

  static const toJsonFactory = _$SalesPackage$UsageParameterToJson;
  Map<String, dynamic> toJson() => _$SalesPackage$UsageParameterToJson(this);

  @JsonKey(name: 'validityPeriods', defaultValue: <ValidityPeriod>[])
  final List<ValidityPeriod>? validityPeriods;
  @JsonKey(name: 'customerProfiles', defaultValue: <CustomerProfile>[])
  final List<CustomerProfile>? customerProfiles;
  static const fromJsonFactory = _$SalesPackage$UsageParameterFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SalesPackage$UsageParameter &&
            (identical(other.validityPeriods, validityPeriods) ||
                const DeepCollectionEquality()
                    .equals(other.validityPeriods, validityPeriods)) &&
            (identical(other.customerProfiles, customerProfiles) ||
                const DeepCollectionEquality()
                    .equals(other.customerProfiles, customerProfiles)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(validityPeriods) ^
      const DeepCollectionEquality().hash(customerProfiles) ^
      runtimeType.hashCode;
}

extension $SalesPackage$UsageParameterExtension on SalesPackage$UsageParameter {
  SalesPackage$UsageParameter copyWith(
      {List<ValidityPeriod>? validityPeriods,
      List<CustomerProfile>? customerProfiles}) {
    return SalesPackage$UsageParameter(
        validityPeriods: validityPeriods ?? this.validityPeriods,
        customerProfiles: customerProfiles ?? this.customerProfiles);
  }

  SalesPackage$UsageParameter copyWithWrapped(
      {Wrapped<List<ValidityPeriod>?>? validityPeriods,
      Wrapped<List<CustomerProfile>?>? customerProfiles}) {
    return SalesPackage$UsageParameter(
        validityPeriods: (validityPeriods != null
            ? validityPeriods.value
            : this.validityPeriods),
        customerProfiles: (customerProfiles != null
            ? customerProfiles.value
            : this.customerProfiles));
  }
}

String? cardDataModelEncodingTypeNullableToJson(
    enums.CardDataModelEncodingType? cardDataModelEncodingType) {
  return cardDataModelEncodingType?.value;
}

String? cardDataModelEncodingTypeToJson(
    enums.CardDataModelEncodingType cardDataModelEncodingType) {
  return cardDataModelEncodingType.value;
}

enums.CardDataModelEncodingType cardDataModelEncodingTypeFromJson(
  Object? cardDataModelEncodingType, [
  enums.CardDataModelEncodingType? defaultValue,
]) {
  return enums.CardDataModelEncodingType.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          cardDataModelEncodingType?.toString().toLowerCase()) ??
      defaultValue ??
      enums.CardDataModelEncodingType.swaggerGeneratedUnknown;
}

enums.CardDataModelEncodingType? cardDataModelEncodingTypeNullableFromJson(
  Object? cardDataModelEncodingType, [
  enums.CardDataModelEncodingType? defaultValue,
]) {
  if (cardDataModelEncodingType == null) {
    return null;
  }
  return enums.CardDataModelEncodingType.values
          .firstWhereOrNull((e) => e.value == cardDataModelEncodingType) ??
      defaultValue;
}

String cardDataModelEncodingTypeExplodedListToJson(
    List<enums.CardDataModelEncodingType>? cardDataModelEncodingType) {
  return cardDataModelEncodingType?.map((e) => e.value!).join(',') ?? '';
}

List<String> cardDataModelEncodingTypeListToJson(
    List<enums.CardDataModelEncodingType>? cardDataModelEncodingType) {
  if (cardDataModelEncodingType == null) {
    return [];
  }

  return cardDataModelEncodingType.map((e) => e.value!).toList();
}

List<enums.CardDataModelEncodingType> cardDataModelEncodingTypeListFromJson(
  List? cardDataModelEncodingType, [
  List<enums.CardDataModelEncodingType>? defaultValue,
]) {
  if (cardDataModelEncodingType == null) {
    return defaultValue ?? [];
  }

  return cardDataModelEncodingType
      .map((e) => cardDataModelEncodingTypeFromJson(e.toString()))
      .toList();
}

List<enums.CardDataModelEncodingType>?
    cardDataModelEncodingTypeNullableListFromJson(
  List? cardDataModelEncodingType, [
  List<enums.CardDataModelEncodingType>? defaultValue,
]) {
  if (cardDataModelEncodingType == null) {
    return defaultValue;
  }

  return cardDataModelEncodingType
      .map((e) => cardDataModelEncodingTypeFromJson(e.toString()))
      .toList();
}

String? deviceDataStatusNullableToJson(
    enums.DeviceDataStatus? deviceDataStatus) {
  return deviceDataStatus?.value;
}

String? deviceDataStatusToJson(enums.DeviceDataStatus deviceDataStatus) {
  return deviceDataStatus.value;
}

enums.DeviceDataStatus deviceDataStatusFromJson(
  Object? deviceDataStatus, [
  enums.DeviceDataStatus? defaultValue,
]) {
  return enums.DeviceDataStatus.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          deviceDataStatus?.toString().toLowerCase()) ??
      defaultValue ??
      enums.DeviceDataStatus.swaggerGeneratedUnknown;
}

enums.DeviceDataStatus? deviceDataStatusNullableFromJson(
  Object? deviceDataStatus, [
  enums.DeviceDataStatus? defaultValue,
]) {
  if (deviceDataStatus == null) {
    return null;
  }
  return enums.DeviceDataStatus.values
          .firstWhereOrNull((e) => e.value == deviceDataStatus) ??
      defaultValue;
}

String deviceDataStatusExplodedListToJson(
    List<enums.DeviceDataStatus>? deviceDataStatus) {
  return deviceDataStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> deviceDataStatusListToJson(
    List<enums.DeviceDataStatus>? deviceDataStatus) {
  if (deviceDataStatus == null) {
    return [];
  }

  return deviceDataStatus.map((e) => e.value!).toList();
}

List<enums.DeviceDataStatus> deviceDataStatusListFromJson(
  List? deviceDataStatus, [
  List<enums.DeviceDataStatus>? defaultValue,
]) {
  if (deviceDataStatus == null) {
    return defaultValue ?? [];
  }

  return deviceDataStatus
      .map((e) => deviceDataStatusFromJson(e.toString()))
      .toList();
}

List<enums.DeviceDataStatus>? deviceDataStatusNullableListFromJson(
  List? deviceDataStatus, [
  List<enums.DeviceDataStatus>? defaultValue,
]) {
  if (deviceDataStatus == null) {
    return defaultValue;
  }

  return deviceDataStatus
      .map((e) => deviceDataStatusFromJson(e.toString()))
      .toList();
}

String? ticketListDataCodInsertionTypeNullableToJson(
    enums.TicketListDataCodInsertionType? ticketListDataCodInsertionType) {
  return ticketListDataCodInsertionType?.value;
}

String? ticketListDataCodInsertionTypeToJson(
    enums.TicketListDataCodInsertionType ticketListDataCodInsertionType) {
  return ticketListDataCodInsertionType.value;
}

enums.TicketListDataCodInsertionType ticketListDataCodInsertionTypeFromJson(
  Object? ticketListDataCodInsertionType, [
  enums.TicketListDataCodInsertionType? defaultValue,
]) {
  return enums.TicketListDataCodInsertionType.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          ticketListDataCodInsertionType?.toString().toLowerCase()) ??
      defaultValue ??
      enums.TicketListDataCodInsertionType.swaggerGeneratedUnknown;
}

enums.TicketListDataCodInsertionType?
    ticketListDataCodInsertionTypeNullableFromJson(
  Object? ticketListDataCodInsertionType, [
  enums.TicketListDataCodInsertionType? defaultValue,
]) {
  if (ticketListDataCodInsertionType == null) {
    return null;
  }
  return enums.TicketListDataCodInsertionType.values
          .firstWhereOrNull((e) => e.value == ticketListDataCodInsertionType) ??
      defaultValue;
}

String ticketListDataCodInsertionTypeExplodedListToJson(
    List<enums.TicketListDataCodInsertionType>?
        ticketListDataCodInsertionType) {
  return ticketListDataCodInsertionType?.map((e) => e.value!).join(',') ?? '';
}

List<String> ticketListDataCodInsertionTypeListToJson(
    List<enums.TicketListDataCodInsertionType>?
        ticketListDataCodInsertionType) {
  if (ticketListDataCodInsertionType == null) {
    return [];
  }

  return ticketListDataCodInsertionType.map((e) => e.value!).toList();
}

List<enums.TicketListDataCodInsertionType>
    ticketListDataCodInsertionTypeListFromJson(
  List? ticketListDataCodInsertionType, [
  List<enums.TicketListDataCodInsertionType>? defaultValue,
]) {
  if (ticketListDataCodInsertionType == null) {
    return defaultValue ?? [];
  }

  return ticketListDataCodInsertionType
      .map((e) => ticketListDataCodInsertionTypeFromJson(e.toString()))
      .toList();
}

List<enums.TicketListDataCodInsertionType>?
    ticketListDataCodInsertionTypeNullableListFromJson(
  List? ticketListDataCodInsertionType, [
  List<enums.TicketListDataCodInsertionType>? defaultValue,
]) {
  if (ticketListDataCodInsertionType == null) {
    return defaultValue;
  }

  return ticketListDataCodInsertionType
      .map((e) => ticketListDataCodInsertionTypeFromJson(e.toString()))
      .toList();
}

String? eventDataEventTypeNullableToJson(
    enums.EventDataEventType? eventDataEventType) {
  return eventDataEventType?.value;
}

String? eventDataEventTypeToJson(enums.EventDataEventType eventDataEventType) {
  return eventDataEventType.value;
}

enums.EventDataEventType eventDataEventTypeFromJson(
  Object? eventDataEventType, [
  enums.EventDataEventType? defaultValue,
]) {
  return enums.EventDataEventType.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          eventDataEventType?.toString().toLowerCase()) ??
      defaultValue ??
      enums.EventDataEventType.swaggerGeneratedUnknown;
}

enums.EventDataEventType? eventDataEventTypeNullableFromJson(
  Object? eventDataEventType, [
  enums.EventDataEventType? defaultValue,
]) {
  if (eventDataEventType == null) {
    return null;
  }
  return enums.EventDataEventType.values
          .firstWhereOrNull((e) => e.value == eventDataEventType) ??
      defaultValue;
}

String eventDataEventTypeExplodedListToJson(
    List<enums.EventDataEventType>? eventDataEventType) {
  return eventDataEventType?.map((e) => e.value!).join(',') ?? '';
}

List<String> eventDataEventTypeListToJson(
    List<enums.EventDataEventType>? eventDataEventType) {
  if (eventDataEventType == null) {
    return [];
  }

  return eventDataEventType.map((e) => e.value!).toList();
}

List<enums.EventDataEventType> eventDataEventTypeListFromJson(
  List? eventDataEventType, [
  List<enums.EventDataEventType>? defaultValue,
]) {
  if (eventDataEventType == null) {
    return defaultValue ?? [];
  }

  return eventDataEventType
      .map((e) => eventDataEventTypeFromJson(e.toString()))
      .toList();
}

List<enums.EventDataEventType>? eventDataEventTypeNullableListFromJson(
  List? eventDataEventType, [
  List<enums.EventDataEventType>? defaultValue,
]) {
  if (eventDataEventType == null) {
    return defaultValue;
  }

  return eventDataEventType
      .map((e) => eventDataEventTypeFromJson(e.toString()))
      .toList();
}

String? eventDataEventOutcomeNullableToJson(
    enums.EventDataEventOutcome? eventDataEventOutcome) {
  return eventDataEventOutcome?.value;
}

String? eventDataEventOutcomeToJson(
    enums.EventDataEventOutcome eventDataEventOutcome) {
  return eventDataEventOutcome.value;
}

enums.EventDataEventOutcome eventDataEventOutcomeFromJson(
  Object? eventDataEventOutcome, [
  enums.EventDataEventOutcome? defaultValue,
]) {
  return enums.EventDataEventOutcome.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          eventDataEventOutcome?.toString().toLowerCase()) ??
      defaultValue ??
      enums.EventDataEventOutcome.swaggerGeneratedUnknown;
}

enums.EventDataEventOutcome? eventDataEventOutcomeNullableFromJson(
  Object? eventDataEventOutcome, [
  enums.EventDataEventOutcome? defaultValue,
]) {
  if (eventDataEventOutcome == null) {
    return null;
  }
  return enums.EventDataEventOutcome.values
          .firstWhereOrNull((e) => e.value == eventDataEventOutcome) ??
      defaultValue;
}

String eventDataEventOutcomeExplodedListToJson(
    List<enums.EventDataEventOutcome>? eventDataEventOutcome) {
  return eventDataEventOutcome?.map((e) => e.value!).join(',') ?? '';
}

List<String> eventDataEventOutcomeListToJson(
    List<enums.EventDataEventOutcome>? eventDataEventOutcome) {
  if (eventDataEventOutcome == null) {
    return [];
  }

  return eventDataEventOutcome.map((e) => e.value!).toList();
}

List<enums.EventDataEventOutcome> eventDataEventOutcomeListFromJson(
  List? eventDataEventOutcome, [
  List<enums.EventDataEventOutcome>? defaultValue,
]) {
  if (eventDataEventOutcome == null) {
    return defaultValue ?? [];
  }

  return eventDataEventOutcome
      .map((e) => eventDataEventOutcomeFromJson(e.toString()))
      .toList();
}

List<enums.EventDataEventOutcome>? eventDataEventOutcomeNullableListFromJson(
  List? eventDataEventOutcome, [
  List<enums.EventDataEventOutcome>? defaultValue,
]) {
  if (eventDataEventOutcome == null) {
    return defaultValue;
  }

  return eventDataEventOutcome
      .map((e) => eventDataEventOutcomeFromJson(e.toString()))
      .toList();
}

String? purchaseCartPurchaseOutcomeNullableToJson(
    enums.PurchaseCartPurchaseOutcome? purchaseCartPurchaseOutcome) {
  return purchaseCartPurchaseOutcome?.value;
}

String? purchaseCartPurchaseOutcomeToJson(
    enums.PurchaseCartPurchaseOutcome purchaseCartPurchaseOutcome) {
  return purchaseCartPurchaseOutcome.value;
}

enums.PurchaseCartPurchaseOutcome purchaseCartPurchaseOutcomeFromJson(
  Object? purchaseCartPurchaseOutcome, [
  enums.PurchaseCartPurchaseOutcome? defaultValue,
]) {
  return enums.PurchaseCartPurchaseOutcome.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          purchaseCartPurchaseOutcome?.toString().toLowerCase()) ??
      defaultValue ??
      enums.PurchaseCartPurchaseOutcome.swaggerGeneratedUnknown;
}

enums.PurchaseCartPurchaseOutcome? purchaseCartPurchaseOutcomeNullableFromJson(
  Object? purchaseCartPurchaseOutcome, [
  enums.PurchaseCartPurchaseOutcome? defaultValue,
]) {
  if (purchaseCartPurchaseOutcome == null) {
    return null;
  }
  return enums.PurchaseCartPurchaseOutcome.values
          .firstWhereOrNull((e) => e.value == purchaseCartPurchaseOutcome) ??
      defaultValue;
}

String purchaseCartPurchaseOutcomeExplodedListToJson(
    List<enums.PurchaseCartPurchaseOutcome>? purchaseCartPurchaseOutcome) {
  return purchaseCartPurchaseOutcome?.map((e) => e.value!).join(',') ?? '';
}

List<String> purchaseCartPurchaseOutcomeListToJson(
    List<enums.PurchaseCartPurchaseOutcome>? purchaseCartPurchaseOutcome) {
  if (purchaseCartPurchaseOutcome == null) {
    return [];
  }

  return purchaseCartPurchaseOutcome.map((e) => e.value!).toList();
}

List<enums.PurchaseCartPurchaseOutcome> purchaseCartPurchaseOutcomeListFromJson(
  List? purchaseCartPurchaseOutcome, [
  List<enums.PurchaseCartPurchaseOutcome>? defaultValue,
]) {
  if (purchaseCartPurchaseOutcome == null) {
    return defaultValue ?? [];
  }

  return purchaseCartPurchaseOutcome
      .map((e) => purchaseCartPurchaseOutcomeFromJson(e.toString()))
      .toList();
}

List<enums.PurchaseCartPurchaseOutcome>?
    purchaseCartPurchaseOutcomeNullableListFromJson(
  List? purchaseCartPurchaseOutcome, [
  List<enums.PurchaseCartPurchaseOutcome>? defaultValue,
]) {
  if (purchaseCartPurchaseOutcome == null) {
    return defaultValue;
  }

  return purchaseCartPurchaseOutcome
      .map((e) => purchaseCartPurchaseOutcomeFromJson(e.toString()))
      .toList();
}

String? purchaseDataItemTypeNullableToJson(
    enums.PurchaseDataItemType? purchaseDataItemType) {
  return purchaseDataItemType?.value;
}

String? purchaseDataItemTypeToJson(
    enums.PurchaseDataItemType purchaseDataItemType) {
  return purchaseDataItemType.value;
}

enums.PurchaseDataItemType purchaseDataItemTypeFromJson(
  Object? purchaseDataItemType, [
  enums.PurchaseDataItemType? defaultValue,
]) {
  return enums.PurchaseDataItemType.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          purchaseDataItemType?.toString().toLowerCase()) ??
      defaultValue ??
      enums.PurchaseDataItemType.swaggerGeneratedUnknown;
}

enums.PurchaseDataItemType? purchaseDataItemTypeNullableFromJson(
  Object? purchaseDataItemType, [
  enums.PurchaseDataItemType? defaultValue,
]) {
  if (purchaseDataItemType == null) {
    return null;
  }
  return enums.PurchaseDataItemType.values
          .firstWhereOrNull((e) => e.value == purchaseDataItemType) ??
      defaultValue;
}

String purchaseDataItemTypeExplodedListToJson(
    List<enums.PurchaseDataItemType>? purchaseDataItemType) {
  return purchaseDataItemType?.map((e) => e.value!).join(',') ?? '';
}

List<String> purchaseDataItemTypeListToJson(
    List<enums.PurchaseDataItemType>? purchaseDataItemType) {
  if (purchaseDataItemType == null) {
    return [];
  }

  return purchaseDataItemType.map((e) => e.value!).toList();
}

List<enums.PurchaseDataItemType> purchaseDataItemTypeListFromJson(
  List? purchaseDataItemType, [
  List<enums.PurchaseDataItemType>? defaultValue,
]) {
  if (purchaseDataItemType == null) {
    return defaultValue ?? [];
  }

  return purchaseDataItemType
      .map((e) => purchaseDataItemTypeFromJson(e.toString()))
      .toList();
}

List<enums.PurchaseDataItemType>? purchaseDataItemTypeNullableListFromJson(
  List? purchaseDataItemType, [
  List<enums.PurchaseDataItemType>? defaultValue,
]) {
  if (purchaseDataItemType == null) {
    return defaultValue;
  }

  return purchaseDataItemType
      .map((e) => purchaseDataItemTypeFromJson(e.toString()))
      .toList();
}

String? purchaseDataMediaTypeNullableToJson(
    enums.PurchaseDataMediaType? purchaseDataMediaType) {
  return purchaseDataMediaType?.value;
}

String? purchaseDataMediaTypeToJson(
    enums.PurchaseDataMediaType purchaseDataMediaType) {
  return purchaseDataMediaType.value;
}

enums.PurchaseDataMediaType purchaseDataMediaTypeFromJson(
  Object? purchaseDataMediaType, [
  enums.PurchaseDataMediaType? defaultValue,
]) {
  return enums.PurchaseDataMediaType.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          purchaseDataMediaType?.toString().toLowerCase()) ??
      defaultValue ??
      enums.PurchaseDataMediaType.swaggerGeneratedUnknown;
}

enums.PurchaseDataMediaType? purchaseDataMediaTypeNullableFromJson(
  Object? purchaseDataMediaType, [
  enums.PurchaseDataMediaType? defaultValue,
]) {
  if (purchaseDataMediaType == null) {
    return null;
  }
  return enums.PurchaseDataMediaType.values
          .firstWhereOrNull((e) => e.value == purchaseDataMediaType) ??
      defaultValue;
}

String purchaseDataMediaTypeExplodedListToJson(
    List<enums.PurchaseDataMediaType>? purchaseDataMediaType) {
  return purchaseDataMediaType?.map((e) => e.value!).join(',') ?? '';
}

List<String> purchaseDataMediaTypeListToJson(
    List<enums.PurchaseDataMediaType>? purchaseDataMediaType) {
  if (purchaseDataMediaType == null) {
    return [];
  }

  return purchaseDataMediaType.map((e) => e.value!).toList();
}

List<enums.PurchaseDataMediaType> purchaseDataMediaTypeListFromJson(
  List? purchaseDataMediaType, [
  List<enums.PurchaseDataMediaType>? defaultValue,
]) {
  if (purchaseDataMediaType == null) {
    return defaultValue ?? [];
  }

  return purchaseDataMediaType
      .map((e) => purchaseDataMediaTypeFromJson(e.toString()))
      .toList();
}

List<enums.PurchaseDataMediaType>? purchaseDataMediaTypeNullableListFromJson(
  List? purchaseDataMediaType, [
  List<enums.PurchaseDataMediaType>? defaultValue,
]) {
  if (purchaseDataMediaType == null) {
    return defaultValue;
  }

  return purchaseDataMediaType
      .map((e) => purchaseDataMediaTypeFromJson(e.toString()))
      .toList();
}

String? epursePurchaseCartPurchaseOutcomeNullableToJson(
    enums.EpursePurchaseCartPurchaseOutcome?
        epursePurchaseCartPurchaseOutcome) {
  return epursePurchaseCartPurchaseOutcome?.value;
}

String? epursePurchaseCartPurchaseOutcomeToJson(
    enums.EpursePurchaseCartPurchaseOutcome epursePurchaseCartPurchaseOutcome) {
  return epursePurchaseCartPurchaseOutcome.value;
}

enums.EpursePurchaseCartPurchaseOutcome
    epursePurchaseCartPurchaseOutcomeFromJson(
  Object? epursePurchaseCartPurchaseOutcome, [
  enums.EpursePurchaseCartPurchaseOutcome? defaultValue,
]) {
  return enums.EpursePurchaseCartPurchaseOutcome.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          epursePurchaseCartPurchaseOutcome?.toString().toLowerCase()) ??
      defaultValue ??
      enums.EpursePurchaseCartPurchaseOutcome.swaggerGeneratedUnknown;
}

enums.EpursePurchaseCartPurchaseOutcome?
    epursePurchaseCartPurchaseOutcomeNullableFromJson(
  Object? epursePurchaseCartPurchaseOutcome, [
  enums.EpursePurchaseCartPurchaseOutcome? defaultValue,
]) {
  if (epursePurchaseCartPurchaseOutcome == null) {
    return null;
  }
  return enums.EpursePurchaseCartPurchaseOutcome.values.firstWhereOrNull(
          (e) => e.value == epursePurchaseCartPurchaseOutcome) ??
      defaultValue;
}

String epursePurchaseCartPurchaseOutcomeExplodedListToJson(
    List<enums.EpursePurchaseCartPurchaseOutcome>?
        epursePurchaseCartPurchaseOutcome) {
  return epursePurchaseCartPurchaseOutcome?.map((e) => e.value!).join(',') ??
      '';
}

List<String> epursePurchaseCartPurchaseOutcomeListToJson(
    List<enums.EpursePurchaseCartPurchaseOutcome>?
        epursePurchaseCartPurchaseOutcome) {
  if (epursePurchaseCartPurchaseOutcome == null) {
    return [];
  }

  return epursePurchaseCartPurchaseOutcome.map((e) => e.value!).toList();
}

List<enums.EpursePurchaseCartPurchaseOutcome>
    epursePurchaseCartPurchaseOutcomeListFromJson(
  List? epursePurchaseCartPurchaseOutcome, [
  List<enums.EpursePurchaseCartPurchaseOutcome>? defaultValue,
]) {
  if (epursePurchaseCartPurchaseOutcome == null) {
    return defaultValue ?? [];
  }

  return epursePurchaseCartPurchaseOutcome
      .map((e) => epursePurchaseCartPurchaseOutcomeFromJson(e.toString()))
      .toList();
}

List<enums.EpursePurchaseCartPurchaseOutcome>?
    epursePurchaseCartPurchaseOutcomeNullableListFromJson(
  List? epursePurchaseCartPurchaseOutcome, [
  List<enums.EpursePurchaseCartPurchaseOutcome>? defaultValue,
]) {
  if (epursePurchaseCartPurchaseOutcome == null) {
    return defaultValue;
  }

  return epursePurchaseCartPurchaseOutcome
      .map((e) => epursePurchaseCartPurchaseOutcomeFromJson(e.toString()))
      .toList();
}

String? validationDataCodeValidationEventNullableToJson(
    enums.ValidationDataCodeValidationEvent?
        validationDataCodeValidationEvent) {
  return validationDataCodeValidationEvent?.value;
}

String? validationDataCodeValidationEventToJson(
    enums.ValidationDataCodeValidationEvent validationDataCodeValidationEvent) {
  return validationDataCodeValidationEvent.value;
}

enums.ValidationDataCodeValidationEvent
    validationDataCodeValidationEventFromJson(
  Object? validationDataCodeValidationEvent, [
  enums.ValidationDataCodeValidationEvent? defaultValue,
]) {
  return enums.ValidationDataCodeValidationEvent.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          validationDataCodeValidationEvent?.toString().toLowerCase()) ??
      defaultValue ??
      enums.ValidationDataCodeValidationEvent.swaggerGeneratedUnknown;
}

enums.ValidationDataCodeValidationEvent?
    validationDataCodeValidationEventNullableFromJson(
  Object? validationDataCodeValidationEvent, [
  enums.ValidationDataCodeValidationEvent? defaultValue,
]) {
  if (validationDataCodeValidationEvent == null) {
    return null;
  }
  return enums.ValidationDataCodeValidationEvent.values.firstWhereOrNull(
          (e) => e.value == validationDataCodeValidationEvent) ??
      defaultValue;
}

String validationDataCodeValidationEventExplodedListToJson(
    List<enums.ValidationDataCodeValidationEvent>?
        validationDataCodeValidationEvent) {
  return validationDataCodeValidationEvent?.map((e) => e.value!).join(',') ??
      '';
}

List<String> validationDataCodeValidationEventListToJson(
    List<enums.ValidationDataCodeValidationEvent>?
        validationDataCodeValidationEvent) {
  if (validationDataCodeValidationEvent == null) {
    return [];
  }

  return validationDataCodeValidationEvent.map((e) => e.value!).toList();
}

List<enums.ValidationDataCodeValidationEvent>
    validationDataCodeValidationEventListFromJson(
  List? validationDataCodeValidationEvent, [
  List<enums.ValidationDataCodeValidationEvent>? defaultValue,
]) {
  if (validationDataCodeValidationEvent == null) {
    return defaultValue ?? [];
  }

  return validationDataCodeValidationEvent
      .map((e) => validationDataCodeValidationEventFromJson(e.toString()))
      .toList();
}

List<enums.ValidationDataCodeValidationEvent>?
    validationDataCodeValidationEventNullableListFromJson(
  List? validationDataCodeValidationEvent, [
  List<enums.ValidationDataCodeValidationEvent>? defaultValue,
]) {
  if (validationDataCodeValidationEvent == null) {
    return defaultValue;
  }

  return validationDataCodeValidationEvent
      .map((e) => validationDataCodeValidationEventFromJson(e.toString()))
      .toList();
}

String? validationDataServiceTypeNullableToJson(
    enums.ValidationDataServiceType? validationDataServiceType) {
  return validationDataServiceType?.value;
}

String? validationDataServiceTypeToJson(
    enums.ValidationDataServiceType validationDataServiceType) {
  return validationDataServiceType.value;
}

enums.ValidationDataServiceType validationDataServiceTypeFromJson(
  Object? validationDataServiceType, [
  enums.ValidationDataServiceType? defaultValue,
]) {
  return enums.ValidationDataServiceType.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          validationDataServiceType?.toString().toLowerCase()) ??
      defaultValue ??
      enums.ValidationDataServiceType.swaggerGeneratedUnknown;
}

enums.ValidationDataServiceType? validationDataServiceTypeNullableFromJson(
  Object? validationDataServiceType, [
  enums.ValidationDataServiceType? defaultValue,
]) {
  if (validationDataServiceType == null) {
    return null;
  }
  return enums.ValidationDataServiceType.values
          .firstWhereOrNull((e) => e.value == validationDataServiceType) ??
      defaultValue;
}

String validationDataServiceTypeExplodedListToJson(
    List<enums.ValidationDataServiceType>? validationDataServiceType) {
  return validationDataServiceType?.map((e) => e.value!).join(',') ?? '';
}

List<String> validationDataServiceTypeListToJson(
    List<enums.ValidationDataServiceType>? validationDataServiceType) {
  if (validationDataServiceType == null) {
    return [];
  }

  return validationDataServiceType.map((e) => e.value!).toList();
}

List<enums.ValidationDataServiceType> validationDataServiceTypeListFromJson(
  List? validationDataServiceType, [
  List<enums.ValidationDataServiceType>? defaultValue,
]) {
  if (validationDataServiceType == null) {
    return defaultValue ?? [];
  }

  return validationDataServiceType
      .map((e) => validationDataServiceTypeFromJson(e.toString()))
      .toList();
}

List<enums.ValidationDataServiceType>?
    validationDataServiceTypeNullableListFromJson(
  List? validationDataServiceType, [
  List<enums.ValidationDataServiceType>? defaultValue,
]) {
  if (validationDataServiceType == null) {
    return defaultValue;
  }

  return validationDataServiceType
      .map((e) => validationDataServiceTypeFromJson(e.toString()))
      .toList();
}

String? transactionChangeCompensationTransactionResultNullableToJson(
    enums.TransactionChangeCompensationTransactionResult?
        transactionChangeCompensationTransactionResult) {
  return transactionChangeCompensationTransactionResult?.value;
}

String? transactionChangeCompensationTransactionResultToJson(
    enums.TransactionChangeCompensationTransactionResult
        transactionChangeCompensationTransactionResult) {
  return transactionChangeCompensationTransactionResult.value;
}

enums.TransactionChangeCompensationTransactionResult
    transactionChangeCompensationTransactionResultFromJson(
  Object? transactionChangeCompensationTransactionResult, [
  enums.TransactionChangeCompensationTransactionResult? defaultValue,
]) {
  return enums.TransactionChangeCompensationTransactionResult.values
          .firstWhereOrNull((e) =>
              e.value.toString().toLowerCase() ==
              transactionChangeCompensationTransactionResult
                  ?.toString()
                  .toLowerCase()) ??
      defaultValue ??
      enums.TransactionChangeCompensationTransactionResult
          .swaggerGeneratedUnknown;
}

enums.TransactionChangeCompensationTransactionResult?
    transactionChangeCompensationTransactionResultNullableFromJson(
  Object? transactionChangeCompensationTransactionResult, [
  enums.TransactionChangeCompensationTransactionResult? defaultValue,
]) {
  if (transactionChangeCompensationTransactionResult == null) {
    return null;
  }
  return enums.TransactionChangeCompensationTransactionResult.values
          .firstWhereOrNull((e) =>
              e.value == transactionChangeCompensationTransactionResult) ??
      defaultValue;
}

String transactionChangeCompensationTransactionResultExplodedListToJson(
    List<enums.TransactionChangeCompensationTransactionResult>?
        transactionChangeCompensationTransactionResult) {
  return transactionChangeCompensationTransactionResult
          ?.map((e) => e.value!)
          .join(',') ??
      '';
}

List<String> transactionChangeCompensationTransactionResultListToJson(
    List<enums.TransactionChangeCompensationTransactionResult>?
        transactionChangeCompensationTransactionResult) {
  if (transactionChangeCompensationTransactionResult == null) {
    return [];
  }

  return transactionChangeCompensationTransactionResult
      .map((e) => e.value!)
      .toList();
}

List<enums.TransactionChangeCompensationTransactionResult>
    transactionChangeCompensationTransactionResultListFromJson(
  List? transactionChangeCompensationTransactionResult, [
  List<enums.TransactionChangeCompensationTransactionResult>? defaultValue,
]) {
  if (transactionChangeCompensationTransactionResult == null) {
    return defaultValue ?? [];
  }

  return transactionChangeCompensationTransactionResult
      .map((e) =>
          transactionChangeCompensationTransactionResultFromJson(e.toString()))
      .toList();
}

List<enums.TransactionChangeCompensationTransactionResult>?
    transactionChangeCompensationTransactionResultNullableListFromJson(
  List? transactionChangeCompensationTransactionResult, [
  List<enums.TransactionChangeCompensationTransactionResult>? defaultValue,
]) {
  if (transactionChangeCompensationTransactionResult == null) {
    return defaultValue;
  }

  return transactionChangeCompensationTransactionResult
      .map((e) =>
          transactionChangeCompensationTransactionResultFromJson(e.toString()))
      .toList();
}

String? transactionChangeCompensationTransactionTypeNullableToJson(
    enums.TransactionChangeCompensationTransactionType?
        transactionChangeCompensationTransactionType) {
  return transactionChangeCompensationTransactionType?.value;
}

String? transactionChangeCompensationTransactionTypeToJson(
    enums.TransactionChangeCompensationTransactionType
        transactionChangeCompensationTransactionType) {
  return transactionChangeCompensationTransactionType.value;
}

enums.TransactionChangeCompensationTransactionType
    transactionChangeCompensationTransactionTypeFromJson(
  Object? transactionChangeCompensationTransactionType, [
  enums.TransactionChangeCompensationTransactionType? defaultValue,
]) {
  return enums.TransactionChangeCompensationTransactionType.values
          .firstWhereOrNull((e) =>
              e.value.toString().toLowerCase() ==
              transactionChangeCompensationTransactionType
                  ?.toString()
                  .toLowerCase()) ??
      defaultValue ??
      enums
          .TransactionChangeCompensationTransactionType.swaggerGeneratedUnknown;
}

enums.TransactionChangeCompensationTransactionType?
    transactionChangeCompensationTransactionTypeNullableFromJson(
  Object? transactionChangeCompensationTransactionType, [
  enums.TransactionChangeCompensationTransactionType? defaultValue,
]) {
  if (transactionChangeCompensationTransactionType == null) {
    return null;
  }
  return enums.TransactionChangeCompensationTransactionType.values
          .firstWhereOrNull(
              (e) => e.value == transactionChangeCompensationTransactionType) ??
      defaultValue;
}

String transactionChangeCompensationTransactionTypeExplodedListToJson(
    List<enums.TransactionChangeCompensationTransactionType>?
        transactionChangeCompensationTransactionType) {
  return transactionChangeCompensationTransactionType
          ?.map((e) => e.value!)
          .join(',') ??
      '';
}

List<String> transactionChangeCompensationTransactionTypeListToJson(
    List<enums.TransactionChangeCompensationTransactionType>?
        transactionChangeCompensationTransactionType) {
  if (transactionChangeCompensationTransactionType == null) {
    return [];
  }

  return transactionChangeCompensationTransactionType
      .map((e) => e.value!)
      .toList();
}

List<enums.TransactionChangeCompensationTransactionType>
    transactionChangeCompensationTransactionTypeListFromJson(
  List? transactionChangeCompensationTransactionType, [
  List<enums.TransactionChangeCompensationTransactionType>? defaultValue,
]) {
  if (transactionChangeCompensationTransactionType == null) {
    return defaultValue ?? [];
  }

  return transactionChangeCompensationTransactionType
      .map((e) =>
          transactionChangeCompensationTransactionTypeFromJson(e.toString()))
      .toList();
}

List<enums.TransactionChangeCompensationTransactionType>?
    transactionChangeCompensationTransactionTypeNullableListFromJson(
  List? transactionChangeCompensationTransactionType, [
  List<enums.TransactionChangeCompensationTransactionType>? defaultValue,
]) {
  if (transactionChangeCompensationTransactionType == null) {
    return defaultValue;
  }

  return transactionChangeCompensationTransactionType
      .map((e) =>
          transactionChangeCompensationTransactionTypeFromJson(e.toString()))
      .toList();
}

String? transactionChangeCompensationFareProductTypeNullableToJson(
    enums.TransactionChangeCompensationFareProductType?
        transactionChangeCompensationFareProductType) {
  return transactionChangeCompensationFareProductType?.value;
}

String? transactionChangeCompensationFareProductTypeToJson(
    enums.TransactionChangeCompensationFareProductType
        transactionChangeCompensationFareProductType) {
  return transactionChangeCompensationFareProductType.value;
}

enums.TransactionChangeCompensationFareProductType
    transactionChangeCompensationFareProductTypeFromJson(
  Object? transactionChangeCompensationFareProductType, [
  enums.TransactionChangeCompensationFareProductType? defaultValue,
]) {
  return enums.TransactionChangeCompensationFareProductType.values
          .firstWhereOrNull((e) =>
              e.value.toString().toLowerCase() ==
              transactionChangeCompensationFareProductType
                  ?.toString()
                  .toLowerCase()) ??
      defaultValue ??
      enums
          .TransactionChangeCompensationFareProductType.swaggerGeneratedUnknown;
}

enums.TransactionChangeCompensationFareProductType?
    transactionChangeCompensationFareProductTypeNullableFromJson(
  Object? transactionChangeCompensationFareProductType, [
  enums.TransactionChangeCompensationFareProductType? defaultValue,
]) {
  if (transactionChangeCompensationFareProductType == null) {
    return null;
  }
  return enums.TransactionChangeCompensationFareProductType.values
          .firstWhereOrNull(
              (e) => e.value == transactionChangeCompensationFareProductType) ??
      defaultValue;
}

String transactionChangeCompensationFareProductTypeExplodedListToJson(
    List<enums.TransactionChangeCompensationFareProductType>?
        transactionChangeCompensationFareProductType) {
  return transactionChangeCompensationFareProductType
          ?.map((e) => e.value!)
          .join(',') ??
      '';
}

List<String> transactionChangeCompensationFareProductTypeListToJson(
    List<enums.TransactionChangeCompensationFareProductType>?
        transactionChangeCompensationFareProductType) {
  if (transactionChangeCompensationFareProductType == null) {
    return [];
  }

  return transactionChangeCompensationFareProductType
      .map((e) => e.value!)
      .toList();
}

List<enums.TransactionChangeCompensationFareProductType>
    transactionChangeCompensationFareProductTypeListFromJson(
  List? transactionChangeCompensationFareProductType, [
  List<enums.TransactionChangeCompensationFareProductType>? defaultValue,
]) {
  if (transactionChangeCompensationFareProductType == null) {
    return defaultValue ?? [];
  }

  return transactionChangeCompensationFareProductType
      .map((e) =>
          transactionChangeCompensationFareProductTypeFromJson(e.toString()))
      .toList();
}

List<enums.TransactionChangeCompensationFareProductType>?
    transactionChangeCompensationFareProductTypeNullableListFromJson(
  List? transactionChangeCompensationFareProductType, [
  List<enums.TransactionChangeCompensationFareProductType>? defaultValue,
]) {
  if (transactionChangeCompensationFareProductType == null) {
    return defaultValue;
  }

  return transactionChangeCompensationFareProductType
      .map((e) =>
          transactionChangeCompensationFareProductTypeFromJson(e.toString()))
      .toList();
}

String? ticketDataMediaTypeNullableToJson(
    enums.TicketDataMediaType? ticketDataMediaType) {
  return ticketDataMediaType?.value;
}

String? ticketDataMediaTypeToJson(
    enums.TicketDataMediaType ticketDataMediaType) {
  return ticketDataMediaType.value;
}

enums.TicketDataMediaType ticketDataMediaTypeFromJson(
  Object? ticketDataMediaType, [
  enums.TicketDataMediaType? defaultValue,
]) {
  return enums.TicketDataMediaType.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          ticketDataMediaType?.toString().toLowerCase()) ??
      defaultValue ??
      enums.TicketDataMediaType.swaggerGeneratedUnknown;
}

enums.TicketDataMediaType? ticketDataMediaTypeNullableFromJson(
  Object? ticketDataMediaType, [
  enums.TicketDataMediaType? defaultValue,
]) {
  if (ticketDataMediaType == null) {
    return null;
  }
  return enums.TicketDataMediaType.values
          .firstWhereOrNull((e) => e.value == ticketDataMediaType) ??
      defaultValue;
}

String ticketDataMediaTypeExplodedListToJson(
    List<enums.TicketDataMediaType>? ticketDataMediaType) {
  return ticketDataMediaType?.map((e) => e.value!).join(',') ?? '';
}

List<String> ticketDataMediaTypeListToJson(
    List<enums.TicketDataMediaType>? ticketDataMediaType) {
  if (ticketDataMediaType == null) {
    return [];
  }

  return ticketDataMediaType.map((e) => e.value!).toList();
}

List<enums.TicketDataMediaType> ticketDataMediaTypeListFromJson(
  List? ticketDataMediaType, [
  List<enums.TicketDataMediaType>? defaultValue,
]) {
  if (ticketDataMediaType == null) {
    return defaultValue ?? [];
  }

  return ticketDataMediaType
      .map((e) => ticketDataMediaTypeFromJson(e.toString()))
      .toList();
}

List<enums.TicketDataMediaType>? ticketDataMediaTypeNullableListFromJson(
  List? ticketDataMediaType, [
  List<enums.TicketDataMediaType>? defaultValue,
]) {
  if (ticketDataMediaType == null) {
    return defaultValue;
  }

  return ticketDataMediaType
      .map((e) => ticketDataMediaTypeFromJson(e.toString()))
      .toList();
}

String? paymentTypeEnumNullableToJson(enums.PaymentTypeEnum? paymentTypeEnum) {
  return paymentTypeEnum?.value;
}

String? paymentTypeEnumToJson(enums.PaymentTypeEnum paymentTypeEnum) {
  return paymentTypeEnum.value;
}

enums.PaymentTypeEnum paymentTypeEnumFromJson(
  Object? paymentTypeEnum, [
  enums.PaymentTypeEnum? defaultValue,
]) {
  return enums.PaymentTypeEnum.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          paymentTypeEnum?.toString().toLowerCase()) ??
      defaultValue ??
      enums.PaymentTypeEnum.swaggerGeneratedUnknown;
}

enums.PaymentTypeEnum? paymentTypeEnumNullableFromJson(
  Object? paymentTypeEnum, [
  enums.PaymentTypeEnum? defaultValue,
]) {
  if (paymentTypeEnum == null) {
    return null;
  }
  return enums.PaymentTypeEnum.values
          .firstWhereOrNull((e) => e.value == paymentTypeEnum) ??
      defaultValue;
}

String paymentTypeEnumExplodedListToJson(
    List<enums.PaymentTypeEnum>? paymentTypeEnum) {
  return paymentTypeEnum?.map((e) => e.value!).join(',') ?? '';
}

List<String> paymentTypeEnumListToJson(
    List<enums.PaymentTypeEnum>? paymentTypeEnum) {
  if (paymentTypeEnum == null) {
    return [];
  }

  return paymentTypeEnum.map((e) => e.value!).toList();
}

List<enums.PaymentTypeEnum> paymentTypeEnumListFromJson(
  List? paymentTypeEnum, [
  List<enums.PaymentTypeEnum>? defaultValue,
]) {
  if (paymentTypeEnum == null) {
    return defaultValue ?? [];
  }

  return paymentTypeEnum
      .map((e) => paymentTypeEnumFromJson(e.toString()))
      .toList();
}

List<enums.PaymentTypeEnum>? paymentTypeEnumNullableListFromJson(
  List? paymentTypeEnum, [
  List<enums.PaymentTypeEnum>? defaultValue,
]) {
  if (paymentTypeEnum == null) {
    return defaultValue;
  }

  return paymentTypeEnum
      .map((e) => paymentTypeEnumFromJson(e.toString()))
      .toList();
}

String? paymentGatewayTypeNullableToJson(
    enums.PaymentGatewayType? paymentGatewayType) {
  return paymentGatewayType?.value;
}

String? paymentGatewayTypeToJson(enums.PaymentGatewayType paymentGatewayType) {
  return paymentGatewayType.value;
}

enums.PaymentGatewayType paymentGatewayTypeFromJson(
  Object? paymentGatewayType, [
  enums.PaymentGatewayType? defaultValue,
]) {
  return enums.PaymentGatewayType.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          paymentGatewayType?.toString().toLowerCase()) ??
      defaultValue ??
      enums.PaymentGatewayType.swaggerGeneratedUnknown;
}

enums.PaymentGatewayType? paymentGatewayTypeNullableFromJson(
  Object? paymentGatewayType, [
  enums.PaymentGatewayType? defaultValue,
]) {
  if (paymentGatewayType == null) {
    return null;
  }
  return enums.PaymentGatewayType.values
          .firstWhereOrNull((e) => e.value == paymentGatewayType) ??
      defaultValue;
}

String paymentGatewayTypeExplodedListToJson(
    List<enums.PaymentGatewayType>? paymentGatewayType) {
  return paymentGatewayType?.map((e) => e.value!).join(',') ?? '';
}

List<String> paymentGatewayTypeListToJson(
    List<enums.PaymentGatewayType>? paymentGatewayType) {
  if (paymentGatewayType == null) {
    return [];
  }

  return paymentGatewayType.map((e) => e.value!).toList();
}

List<enums.PaymentGatewayType> paymentGatewayTypeListFromJson(
  List? paymentGatewayType, [
  List<enums.PaymentGatewayType>? defaultValue,
]) {
  if (paymentGatewayType == null) {
    return defaultValue ?? [];
  }

  return paymentGatewayType
      .map((e) => paymentGatewayTypeFromJson(e.toString()))
      .toList();
}

List<enums.PaymentGatewayType>? paymentGatewayTypeNullableListFromJson(
  List? paymentGatewayType, [
  List<enums.PaymentGatewayType>? defaultValue,
]) {
  if (paymentGatewayType == null) {
    return defaultValue;
  }

  return paymentGatewayType
      .map((e) => paymentGatewayTypeFromJson(e.toString()))
      .toList();
}

String? infrastructureElementTypeNullableToJson(
    enums.InfrastructureElementType? infrastructureElementType) {
  return infrastructureElementType?.value;
}

String? infrastructureElementTypeToJson(
    enums.InfrastructureElementType infrastructureElementType) {
  return infrastructureElementType.value;
}

enums.InfrastructureElementType infrastructureElementTypeFromJson(
  Object? infrastructureElementType, [
  enums.InfrastructureElementType? defaultValue,
]) {
  return enums.InfrastructureElementType.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          infrastructureElementType?.toString().toLowerCase()) ??
      defaultValue ??
      enums.InfrastructureElementType.swaggerGeneratedUnknown;
}

enums.InfrastructureElementType? infrastructureElementTypeNullableFromJson(
  Object? infrastructureElementType, [
  enums.InfrastructureElementType? defaultValue,
]) {
  if (infrastructureElementType == null) {
    return null;
  }
  return enums.InfrastructureElementType.values
          .firstWhereOrNull((e) => e.value == infrastructureElementType) ??
      defaultValue;
}

String infrastructureElementTypeExplodedListToJson(
    List<enums.InfrastructureElementType>? infrastructureElementType) {
  return infrastructureElementType?.map((e) => e.value!).join(',') ?? '';
}

List<String> infrastructureElementTypeListToJson(
    List<enums.InfrastructureElementType>? infrastructureElementType) {
  if (infrastructureElementType == null) {
    return [];
  }

  return infrastructureElementType.map((e) => e.value!).toList();
}

List<enums.InfrastructureElementType> infrastructureElementTypeListFromJson(
  List? infrastructureElementType, [
  List<enums.InfrastructureElementType>? defaultValue,
]) {
  if (infrastructureElementType == null) {
    return defaultValue ?? [];
  }

  return infrastructureElementType
      .map((e) => infrastructureElementTypeFromJson(e.toString()))
      .toList();
}

List<enums.InfrastructureElementType>?
    infrastructureElementTypeNullableListFromJson(
  List? infrastructureElementType, [
  List<enums.InfrastructureElementType>? defaultValue,
]) {
  if (infrastructureElementType == null) {
    return defaultValue;
  }

  return infrastructureElementType
      .map((e) => infrastructureElementTypeFromJson(e.toString()))
      .toList();
}

String? organisationOrganisationTypeCodeNullableToJson(
    enums.OrganisationOrganisationTypeCode? organisationOrganisationTypeCode) {
  return organisationOrganisationTypeCode?.value;
}

String? organisationOrganisationTypeCodeToJson(
    enums.OrganisationOrganisationTypeCode organisationOrganisationTypeCode) {
  return organisationOrganisationTypeCode.value;
}

enums.OrganisationOrganisationTypeCode organisationOrganisationTypeCodeFromJson(
  Object? organisationOrganisationTypeCode, [
  enums.OrganisationOrganisationTypeCode? defaultValue,
]) {
  return enums.OrganisationOrganisationTypeCode.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          organisationOrganisationTypeCode?.toString().toLowerCase()) ??
      defaultValue ??
      enums.OrganisationOrganisationTypeCode.swaggerGeneratedUnknown;
}

enums.OrganisationOrganisationTypeCode?
    organisationOrganisationTypeCodeNullableFromJson(
  Object? organisationOrganisationTypeCode, [
  enums.OrganisationOrganisationTypeCode? defaultValue,
]) {
  if (organisationOrganisationTypeCode == null) {
    return null;
  }
  return enums.OrganisationOrganisationTypeCode.values.firstWhereOrNull(
          (e) => e.value == organisationOrganisationTypeCode) ??
      defaultValue;
}

String organisationOrganisationTypeCodeExplodedListToJson(
    List<enums.OrganisationOrganisationTypeCode>?
        organisationOrganisationTypeCode) {
  return organisationOrganisationTypeCode?.map((e) => e.value!).join(',') ?? '';
}

List<String> organisationOrganisationTypeCodeListToJson(
    List<enums.OrganisationOrganisationTypeCode>?
        organisationOrganisationTypeCode) {
  if (organisationOrganisationTypeCode == null) {
    return [];
  }

  return organisationOrganisationTypeCode.map((e) => e.value!).toList();
}

List<enums.OrganisationOrganisationTypeCode>
    organisationOrganisationTypeCodeListFromJson(
  List? organisationOrganisationTypeCode, [
  List<enums.OrganisationOrganisationTypeCode>? defaultValue,
]) {
  if (organisationOrganisationTypeCode == null) {
    return defaultValue ?? [];
  }

  return organisationOrganisationTypeCode
      .map((e) => organisationOrganisationTypeCodeFromJson(e.toString()))
      .toList();
}

List<enums.OrganisationOrganisationTypeCode>?
    organisationOrganisationTypeCodeNullableListFromJson(
  List? organisationOrganisationTypeCode, [
  List<enums.OrganisationOrganisationTypeCode>? defaultValue,
]) {
  if (organisationOrganisationTypeCode == null) {
    return defaultValue;
  }

  return organisationOrganisationTypeCode
      .map((e) => organisationOrganisationTypeCodeFromJson(e.toString()))
      .toList();
}

String? agreementAgreementTypeNullableToJson(
    enums.AgreementAgreementType? agreementAgreementType) {
  return agreementAgreementType?.value;
}

String? agreementAgreementTypeToJson(
    enums.AgreementAgreementType agreementAgreementType) {
  return agreementAgreementType.value;
}

enums.AgreementAgreementType agreementAgreementTypeFromJson(
  Object? agreementAgreementType, [
  enums.AgreementAgreementType? defaultValue,
]) {
  return enums.AgreementAgreementType.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          agreementAgreementType?.toString().toLowerCase()) ??
      defaultValue ??
      enums.AgreementAgreementType.swaggerGeneratedUnknown;
}

enums.AgreementAgreementType? agreementAgreementTypeNullableFromJson(
  Object? agreementAgreementType, [
  enums.AgreementAgreementType? defaultValue,
]) {
  if (agreementAgreementType == null) {
    return null;
  }
  return enums.AgreementAgreementType.values
          .firstWhereOrNull((e) => e.value == agreementAgreementType) ??
      defaultValue;
}

String agreementAgreementTypeExplodedListToJson(
    List<enums.AgreementAgreementType>? agreementAgreementType) {
  return agreementAgreementType?.map((e) => e.value!).join(',') ?? '';
}

List<String> agreementAgreementTypeListToJson(
    List<enums.AgreementAgreementType>? agreementAgreementType) {
  if (agreementAgreementType == null) {
    return [];
  }

  return agreementAgreementType.map((e) => e.value!).toList();
}

List<enums.AgreementAgreementType> agreementAgreementTypeListFromJson(
  List? agreementAgreementType, [
  List<enums.AgreementAgreementType>? defaultValue,
]) {
  if (agreementAgreementType == null) {
    return defaultValue ?? [];
  }

  return agreementAgreementType
      .map((e) => agreementAgreementTypeFromJson(e.toString()))
      .toList();
}

List<enums.AgreementAgreementType>? agreementAgreementTypeNullableListFromJson(
  List? agreementAgreementType, [
  List<enums.AgreementAgreementType>? defaultValue,
]) {
  if (agreementAgreementType == null) {
    return defaultValue;
  }

  return agreementAgreementType
      .map((e) => agreementAgreementTypeFromJson(e.toString()))
      .toList();
}

String? serviceScopingValidityClassificationCodeNullableToJson(
    enums.ServiceScopingValidityClassificationCode?
        serviceScopingValidityClassificationCode) {
  return serviceScopingValidityClassificationCode?.value;
}

String? serviceScopingValidityClassificationCodeToJson(
    enums.ServiceScopingValidityClassificationCode
        serviceScopingValidityClassificationCode) {
  return serviceScopingValidityClassificationCode.value;
}

enums.ServiceScopingValidityClassificationCode
    serviceScopingValidityClassificationCodeFromJson(
  Object? serviceScopingValidityClassificationCode, [
  enums.ServiceScopingValidityClassificationCode? defaultValue,
]) {
  return enums.ServiceScopingValidityClassificationCode.values.firstWhereOrNull(
          (e) =>
              e.value.toString().toLowerCase() ==
              serviceScopingValidityClassificationCode
                  ?.toString()
                  .toLowerCase()) ??
      defaultValue ??
      enums.ServiceScopingValidityClassificationCode.swaggerGeneratedUnknown;
}

enums.ServiceScopingValidityClassificationCode?
    serviceScopingValidityClassificationCodeNullableFromJson(
  Object? serviceScopingValidityClassificationCode, [
  enums.ServiceScopingValidityClassificationCode? defaultValue,
]) {
  if (serviceScopingValidityClassificationCode == null) {
    return null;
  }
  return enums.ServiceScopingValidityClassificationCode.values.firstWhereOrNull(
          (e) => e.value == serviceScopingValidityClassificationCode) ??
      defaultValue;
}

String serviceScopingValidityClassificationCodeExplodedListToJson(
    List<enums.ServiceScopingValidityClassificationCode>?
        serviceScopingValidityClassificationCode) {
  return serviceScopingValidityClassificationCode
          ?.map((e) => e.value!)
          .join(',') ??
      '';
}

List<String> serviceScopingValidityClassificationCodeListToJson(
    List<enums.ServiceScopingValidityClassificationCode>?
        serviceScopingValidityClassificationCode) {
  if (serviceScopingValidityClassificationCode == null) {
    return [];
  }

  return serviceScopingValidityClassificationCode.map((e) => e.value!).toList();
}

List<enums.ServiceScopingValidityClassificationCode>
    serviceScopingValidityClassificationCodeListFromJson(
  List? serviceScopingValidityClassificationCode, [
  List<enums.ServiceScopingValidityClassificationCode>? defaultValue,
]) {
  if (serviceScopingValidityClassificationCode == null) {
    return defaultValue ?? [];
  }

  return serviceScopingValidityClassificationCode
      .map(
          (e) => serviceScopingValidityClassificationCodeFromJson(e.toString()))
      .toList();
}

List<enums.ServiceScopingValidityClassificationCode>?
    serviceScopingValidityClassificationCodeNullableListFromJson(
  List? serviceScopingValidityClassificationCode, [
  List<enums.ServiceScopingValidityClassificationCode>? defaultValue,
]) {
  if (serviceScopingValidityClassificationCode == null) {
    return defaultValue;
  }

  return serviceScopingValidityClassificationCode
      .map(
          (e) => serviceScopingValidityClassificationCodeFromJson(e.toString()))
      .toList();
}

String? serviceRestrictionRestrictionOnNullableToJson(
    enums.ServiceRestrictionRestrictionOn? serviceRestrictionRestrictionOn) {
  return serviceRestrictionRestrictionOn?.value;
}

String? serviceRestrictionRestrictionOnToJson(
    enums.ServiceRestrictionRestrictionOn serviceRestrictionRestrictionOn) {
  return serviceRestrictionRestrictionOn.value;
}

enums.ServiceRestrictionRestrictionOn serviceRestrictionRestrictionOnFromJson(
  Object? serviceRestrictionRestrictionOn, [
  enums.ServiceRestrictionRestrictionOn? defaultValue,
]) {
  return enums.ServiceRestrictionRestrictionOn.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          serviceRestrictionRestrictionOn?.toString().toLowerCase()) ??
      defaultValue ??
      enums.ServiceRestrictionRestrictionOn.swaggerGeneratedUnknown;
}

enums.ServiceRestrictionRestrictionOn?
    serviceRestrictionRestrictionOnNullableFromJson(
  Object? serviceRestrictionRestrictionOn, [
  enums.ServiceRestrictionRestrictionOn? defaultValue,
]) {
  if (serviceRestrictionRestrictionOn == null) {
    return null;
  }
  return enums.ServiceRestrictionRestrictionOn.values.firstWhereOrNull(
          (e) => e.value == serviceRestrictionRestrictionOn) ??
      defaultValue;
}

String serviceRestrictionRestrictionOnExplodedListToJson(
    List<enums.ServiceRestrictionRestrictionOn>?
        serviceRestrictionRestrictionOn) {
  return serviceRestrictionRestrictionOn?.map((e) => e.value!).join(',') ?? '';
}

List<String> serviceRestrictionRestrictionOnListToJson(
    List<enums.ServiceRestrictionRestrictionOn>?
        serviceRestrictionRestrictionOn) {
  if (serviceRestrictionRestrictionOn == null) {
    return [];
  }

  return serviceRestrictionRestrictionOn.map((e) => e.value!).toList();
}

List<enums.ServiceRestrictionRestrictionOn>
    serviceRestrictionRestrictionOnListFromJson(
  List? serviceRestrictionRestrictionOn, [
  List<enums.ServiceRestrictionRestrictionOn>? defaultValue,
]) {
  if (serviceRestrictionRestrictionOn == null) {
    return defaultValue ?? [];
  }

  return serviceRestrictionRestrictionOn
      .map((e) => serviceRestrictionRestrictionOnFromJson(e.toString()))
      .toList();
}

List<enums.ServiceRestrictionRestrictionOn>?
    serviceRestrictionRestrictionOnNullableListFromJson(
  List? serviceRestrictionRestrictionOn, [
  List<enums.ServiceRestrictionRestrictionOn>? defaultValue,
]) {
  if (serviceRestrictionRestrictionOn == null) {
    return defaultValue;
  }

  return serviceRestrictionRestrictionOn
      .map((e) => serviceRestrictionRestrictionOnFromJson(e.toString()))
      .toList();
}

String? serviceRestrictionRestrictionTypeNullableToJson(
    enums.ServiceRestrictionRestrictionType?
        serviceRestrictionRestrictionType) {
  return serviceRestrictionRestrictionType?.value;
}

String? serviceRestrictionRestrictionTypeToJson(
    enums.ServiceRestrictionRestrictionType serviceRestrictionRestrictionType) {
  return serviceRestrictionRestrictionType.value;
}

enums.ServiceRestrictionRestrictionType
    serviceRestrictionRestrictionTypeFromJson(
  Object? serviceRestrictionRestrictionType, [
  enums.ServiceRestrictionRestrictionType? defaultValue,
]) {
  return enums.ServiceRestrictionRestrictionType.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          serviceRestrictionRestrictionType?.toString().toLowerCase()) ??
      defaultValue ??
      enums.ServiceRestrictionRestrictionType.swaggerGeneratedUnknown;
}

enums.ServiceRestrictionRestrictionType?
    serviceRestrictionRestrictionTypeNullableFromJson(
  Object? serviceRestrictionRestrictionType, [
  enums.ServiceRestrictionRestrictionType? defaultValue,
]) {
  if (serviceRestrictionRestrictionType == null) {
    return null;
  }
  return enums.ServiceRestrictionRestrictionType.values.firstWhereOrNull(
          (e) => e.value == serviceRestrictionRestrictionType) ??
      defaultValue;
}

String serviceRestrictionRestrictionTypeExplodedListToJson(
    List<enums.ServiceRestrictionRestrictionType>?
        serviceRestrictionRestrictionType) {
  return serviceRestrictionRestrictionType?.map((e) => e.value!).join(',') ??
      '';
}

List<String> serviceRestrictionRestrictionTypeListToJson(
    List<enums.ServiceRestrictionRestrictionType>?
        serviceRestrictionRestrictionType) {
  if (serviceRestrictionRestrictionType == null) {
    return [];
  }

  return serviceRestrictionRestrictionType.map((e) => e.value!).toList();
}

List<enums.ServiceRestrictionRestrictionType>
    serviceRestrictionRestrictionTypeListFromJson(
  List? serviceRestrictionRestrictionType, [
  List<enums.ServiceRestrictionRestrictionType>? defaultValue,
]) {
  if (serviceRestrictionRestrictionType == null) {
    return defaultValue ?? [];
  }

  return serviceRestrictionRestrictionType
      .map((e) => serviceRestrictionRestrictionTypeFromJson(e.toString()))
      .toList();
}

List<enums.ServiceRestrictionRestrictionType>?
    serviceRestrictionRestrictionTypeNullableListFromJson(
  List? serviceRestrictionRestrictionType, [
  List<enums.ServiceRestrictionRestrictionType>? defaultValue,
]) {
  if (serviceRestrictionRestrictionType == null) {
    return defaultValue;
  }

  return serviceRestrictionRestrictionType
      .map((e) => serviceRestrictionRestrictionTypeFromJson(e.toString()))
      .toList();
}

String? fareZoneScopingValidityParameterTypeNullableToJson(
    enums.FareZoneScopingValidityParameterType?
        fareZoneScopingValidityParameterType) {
  return fareZoneScopingValidityParameterType?.value;
}

String? fareZoneScopingValidityParameterTypeToJson(
    enums.FareZoneScopingValidityParameterType
        fareZoneScopingValidityParameterType) {
  return fareZoneScopingValidityParameterType.value;
}

enums.FareZoneScopingValidityParameterType
    fareZoneScopingValidityParameterTypeFromJson(
  Object? fareZoneScopingValidityParameterType, [
  enums.FareZoneScopingValidityParameterType? defaultValue,
]) {
  return enums.FareZoneScopingValidityParameterType.values.firstWhereOrNull(
          (e) =>
              e.value.toString().toLowerCase() ==
              fareZoneScopingValidityParameterType?.toString().toLowerCase()) ??
      defaultValue ??
      enums.FareZoneScopingValidityParameterType.swaggerGeneratedUnknown;
}

enums.FareZoneScopingValidityParameterType?
    fareZoneScopingValidityParameterTypeNullableFromJson(
  Object? fareZoneScopingValidityParameterType, [
  enums.FareZoneScopingValidityParameterType? defaultValue,
]) {
  if (fareZoneScopingValidityParameterType == null) {
    return null;
  }
  return enums.FareZoneScopingValidityParameterType.values.firstWhereOrNull(
          (e) => e.value == fareZoneScopingValidityParameterType) ??
      defaultValue;
}

String fareZoneScopingValidityParameterTypeExplodedListToJson(
    List<enums.FareZoneScopingValidityParameterType>?
        fareZoneScopingValidityParameterType) {
  return fareZoneScopingValidityParameterType?.map((e) => e.value!).join(',') ??
      '';
}

List<String> fareZoneScopingValidityParameterTypeListToJson(
    List<enums.FareZoneScopingValidityParameterType>?
        fareZoneScopingValidityParameterType) {
  if (fareZoneScopingValidityParameterType == null) {
    return [];
  }

  return fareZoneScopingValidityParameterType.map((e) => e.value!).toList();
}

List<enums.FareZoneScopingValidityParameterType>
    fareZoneScopingValidityParameterTypeListFromJson(
  List? fareZoneScopingValidityParameterType, [
  List<enums.FareZoneScopingValidityParameterType>? defaultValue,
]) {
  if (fareZoneScopingValidityParameterType == null) {
    return defaultValue ?? [];
  }

  return fareZoneScopingValidityParameterType
      .map((e) => fareZoneScopingValidityParameterTypeFromJson(e.toString()))
      .toList();
}

List<enums.FareZoneScopingValidityParameterType>?
    fareZoneScopingValidityParameterTypeNullableListFromJson(
  List? fareZoneScopingValidityParameterType, [
  List<enums.FareZoneScopingValidityParameterType>? defaultValue,
]) {
  if (fareZoneScopingValidityParameterType == null) {
    return defaultValue;
  }

  return fareZoneScopingValidityParameterType
      .map((e) => fareZoneScopingValidityParameterTypeFromJson(e.toString()))
      .toList();
}

String? fareZoneGroupTypeNullableToJson(
    enums.FareZoneGroupType? fareZoneGroupType) {
  return fareZoneGroupType?.value;
}

String? fareZoneGroupTypeToJson(enums.FareZoneGroupType fareZoneGroupType) {
  return fareZoneGroupType.value;
}

enums.FareZoneGroupType fareZoneGroupTypeFromJson(
  Object? fareZoneGroupType, [
  enums.FareZoneGroupType? defaultValue,
]) {
  return enums.FareZoneGroupType.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          fareZoneGroupType?.toString().toLowerCase()) ??
      defaultValue ??
      enums.FareZoneGroupType.swaggerGeneratedUnknown;
}

enums.FareZoneGroupType? fareZoneGroupTypeNullableFromJson(
  Object? fareZoneGroupType, [
  enums.FareZoneGroupType? defaultValue,
]) {
  if (fareZoneGroupType == null) {
    return null;
  }
  return enums.FareZoneGroupType.values
          .firstWhereOrNull((e) => e.value == fareZoneGroupType) ??
      defaultValue;
}

String fareZoneGroupTypeExplodedListToJson(
    List<enums.FareZoneGroupType>? fareZoneGroupType) {
  return fareZoneGroupType?.map((e) => e.value!).join(',') ?? '';
}

List<String> fareZoneGroupTypeListToJson(
    List<enums.FareZoneGroupType>? fareZoneGroupType) {
  if (fareZoneGroupType == null) {
    return [];
  }

  return fareZoneGroupType.map((e) => e.value!).toList();
}

List<enums.FareZoneGroupType> fareZoneGroupTypeListFromJson(
  List? fareZoneGroupType, [
  List<enums.FareZoneGroupType>? defaultValue,
]) {
  if (fareZoneGroupType == null) {
    return defaultValue ?? [];
  }

  return fareZoneGroupType
      .map((e) => fareZoneGroupTypeFromJson(e.toString()))
      .toList();
}

List<enums.FareZoneGroupType>? fareZoneGroupTypeNullableListFromJson(
  List? fareZoneGroupType, [
  List<enums.FareZoneGroupType>? defaultValue,
]) {
  if (fareZoneGroupType == null) {
    return defaultValue;
  }

  return fareZoneGroupType
      .map((e) => fareZoneGroupTypeFromJson(e.toString()))
      .toList();
}

String? zoneAppliedTariffTypeNullableToJson(
    enums.ZoneAppliedTariffType? zoneAppliedTariffType) {
  return zoneAppliedTariffType?.value;
}

String? zoneAppliedTariffTypeToJson(
    enums.ZoneAppliedTariffType zoneAppliedTariffType) {
  return zoneAppliedTariffType.value;
}

enums.ZoneAppliedTariffType zoneAppliedTariffTypeFromJson(
  Object? zoneAppliedTariffType, [
  enums.ZoneAppliedTariffType? defaultValue,
]) {
  return enums.ZoneAppliedTariffType.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          zoneAppliedTariffType?.toString().toLowerCase()) ??
      defaultValue ??
      enums.ZoneAppliedTariffType.swaggerGeneratedUnknown;
}

enums.ZoneAppliedTariffType? zoneAppliedTariffTypeNullableFromJson(
  Object? zoneAppliedTariffType, [
  enums.ZoneAppliedTariffType? defaultValue,
]) {
  if (zoneAppliedTariffType == null) {
    return null;
  }
  return enums.ZoneAppliedTariffType.values
          .firstWhereOrNull((e) => e.value == zoneAppliedTariffType) ??
      defaultValue;
}

String zoneAppliedTariffTypeExplodedListToJson(
    List<enums.ZoneAppliedTariffType>? zoneAppliedTariffType) {
  return zoneAppliedTariffType?.map((e) => e.value!).join(',') ?? '';
}

List<String> zoneAppliedTariffTypeListToJson(
    List<enums.ZoneAppliedTariffType>? zoneAppliedTariffType) {
  if (zoneAppliedTariffType == null) {
    return [];
  }

  return zoneAppliedTariffType.map((e) => e.value!).toList();
}

List<enums.ZoneAppliedTariffType> zoneAppliedTariffTypeListFromJson(
  List? zoneAppliedTariffType, [
  List<enums.ZoneAppliedTariffType>? defaultValue,
]) {
  if (zoneAppliedTariffType == null) {
    return defaultValue ?? [];
  }

  return zoneAppliedTariffType
      .map((e) => zoneAppliedTariffTypeFromJson(e.toString()))
      .toList();
}

List<enums.ZoneAppliedTariffType>? zoneAppliedTariffTypeNullableListFromJson(
  List? zoneAppliedTariffType, [
  List<enums.ZoneAppliedTariffType>? defaultValue,
]) {
  if (zoneAppliedTariffType == null) {
    return defaultValue;
  }

  return zoneAppliedTariffType
      .map((e) => zoneAppliedTariffTypeFromJson(e.toString()))
      .toList();
}

String? dateTimeBandTypeBandNullableToJson(
    enums.DateTimeBandTypeBand? dateTimeBandTypeBand) {
  return dateTimeBandTypeBand?.value;
}

String? dateTimeBandTypeBandToJson(
    enums.DateTimeBandTypeBand dateTimeBandTypeBand) {
  return dateTimeBandTypeBand.value;
}

enums.DateTimeBandTypeBand dateTimeBandTypeBandFromJson(
  Object? dateTimeBandTypeBand, [
  enums.DateTimeBandTypeBand? defaultValue,
]) {
  return enums.DateTimeBandTypeBand.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          dateTimeBandTypeBand?.toString().toLowerCase()) ??
      defaultValue ??
      enums.DateTimeBandTypeBand.swaggerGeneratedUnknown;
}

enums.DateTimeBandTypeBand? dateTimeBandTypeBandNullableFromJson(
  Object? dateTimeBandTypeBand, [
  enums.DateTimeBandTypeBand? defaultValue,
]) {
  if (dateTimeBandTypeBand == null) {
    return null;
  }
  return enums.DateTimeBandTypeBand.values
          .firstWhereOrNull((e) => e.value == dateTimeBandTypeBand) ??
      defaultValue;
}

String dateTimeBandTypeBandExplodedListToJson(
    List<enums.DateTimeBandTypeBand>? dateTimeBandTypeBand) {
  return dateTimeBandTypeBand?.map((e) => e.value!).join(',') ?? '';
}

List<String> dateTimeBandTypeBandListToJson(
    List<enums.DateTimeBandTypeBand>? dateTimeBandTypeBand) {
  if (dateTimeBandTypeBand == null) {
    return [];
  }

  return dateTimeBandTypeBand.map((e) => e.value!).toList();
}

List<enums.DateTimeBandTypeBand> dateTimeBandTypeBandListFromJson(
  List? dateTimeBandTypeBand, [
  List<enums.DateTimeBandTypeBand>? defaultValue,
]) {
  if (dateTimeBandTypeBand == null) {
    return defaultValue ?? [];
  }

  return dateTimeBandTypeBand
      .map((e) => dateTimeBandTypeBandFromJson(e.toString()))
      .toList();
}

List<enums.DateTimeBandTypeBand>? dateTimeBandTypeBandNullableListFromJson(
  List? dateTimeBandTypeBand, [
  List<enums.DateTimeBandTypeBand>? defaultValue,
]) {
  if (dateTimeBandTypeBand == null) {
    return defaultValue;
  }

  return dateTimeBandTypeBand
      .map((e) => dateTimeBandTypeBandFromJson(e.toString()))
      .toList();
}

String? dateTimeBandBlackOutUseNullableToJson(
    enums.DateTimeBandBlackOutUse? dateTimeBandBlackOutUse) {
  return dateTimeBandBlackOutUse?.value;
}

String? dateTimeBandBlackOutUseToJson(
    enums.DateTimeBandBlackOutUse dateTimeBandBlackOutUse) {
  return dateTimeBandBlackOutUse.value;
}

enums.DateTimeBandBlackOutUse dateTimeBandBlackOutUseFromJson(
  Object? dateTimeBandBlackOutUse, [
  enums.DateTimeBandBlackOutUse? defaultValue,
]) {
  return enums.DateTimeBandBlackOutUse.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          dateTimeBandBlackOutUse?.toString().toLowerCase()) ??
      defaultValue ??
      enums.DateTimeBandBlackOutUse.swaggerGeneratedUnknown;
}

enums.DateTimeBandBlackOutUse? dateTimeBandBlackOutUseNullableFromJson(
  Object? dateTimeBandBlackOutUse, [
  enums.DateTimeBandBlackOutUse? defaultValue,
]) {
  if (dateTimeBandBlackOutUse == null) {
    return null;
  }
  return enums.DateTimeBandBlackOutUse.values
          .firstWhereOrNull((e) => e.value == dateTimeBandBlackOutUse) ??
      defaultValue;
}

String dateTimeBandBlackOutUseExplodedListToJson(
    List<enums.DateTimeBandBlackOutUse>? dateTimeBandBlackOutUse) {
  return dateTimeBandBlackOutUse?.map((e) => e.value!).join(',') ?? '';
}

List<String> dateTimeBandBlackOutUseListToJson(
    List<enums.DateTimeBandBlackOutUse>? dateTimeBandBlackOutUse) {
  if (dateTimeBandBlackOutUse == null) {
    return [];
  }

  return dateTimeBandBlackOutUse.map((e) => e.value!).toList();
}

List<enums.DateTimeBandBlackOutUse> dateTimeBandBlackOutUseListFromJson(
  List? dateTimeBandBlackOutUse, [
  List<enums.DateTimeBandBlackOutUse>? defaultValue,
]) {
  if (dateTimeBandBlackOutUse == null) {
    return defaultValue ?? [];
  }

  return dateTimeBandBlackOutUse
      .map((e) => dateTimeBandBlackOutUseFromJson(e.toString()))
      .toList();
}

List<enums.DateTimeBandBlackOutUse>?
    dateTimeBandBlackOutUseNullableListFromJson(
  List? dateTimeBandBlackOutUse, [
  List<enums.DateTimeBandBlackOutUse>? defaultValue,
]) {
  if (dateTimeBandBlackOutUse == null) {
    return defaultValue;
  }

  return dateTimeBandBlackOutUse
      .map((e) => dateTimeBandBlackOutUseFromJson(e.toString()))
      .toList();
}

String? validityPeriodTypeUsageParameterNullableToJson(
    enums.ValidityPeriodTypeUsageParameter? validityPeriodTypeUsageParameter) {
  return validityPeriodTypeUsageParameter?.value;
}

String? validityPeriodTypeUsageParameterToJson(
    enums.ValidityPeriodTypeUsageParameter validityPeriodTypeUsageParameter) {
  return validityPeriodTypeUsageParameter.value;
}

enums.ValidityPeriodTypeUsageParameter validityPeriodTypeUsageParameterFromJson(
  Object? validityPeriodTypeUsageParameter, [
  enums.ValidityPeriodTypeUsageParameter? defaultValue,
]) {
  return enums.ValidityPeriodTypeUsageParameter.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          validityPeriodTypeUsageParameter?.toString().toLowerCase()) ??
      defaultValue ??
      enums.ValidityPeriodTypeUsageParameter.swaggerGeneratedUnknown;
}

enums.ValidityPeriodTypeUsageParameter?
    validityPeriodTypeUsageParameterNullableFromJson(
  Object? validityPeriodTypeUsageParameter, [
  enums.ValidityPeriodTypeUsageParameter? defaultValue,
]) {
  if (validityPeriodTypeUsageParameter == null) {
    return null;
  }
  return enums.ValidityPeriodTypeUsageParameter.values.firstWhereOrNull(
          (e) => e.value == validityPeriodTypeUsageParameter) ??
      defaultValue;
}

String validityPeriodTypeUsageParameterExplodedListToJson(
    List<enums.ValidityPeriodTypeUsageParameter>?
        validityPeriodTypeUsageParameter) {
  return validityPeriodTypeUsageParameter?.map((e) => e.value!).join(',') ?? '';
}

List<String> validityPeriodTypeUsageParameterListToJson(
    List<enums.ValidityPeriodTypeUsageParameter>?
        validityPeriodTypeUsageParameter) {
  if (validityPeriodTypeUsageParameter == null) {
    return [];
  }

  return validityPeriodTypeUsageParameter.map((e) => e.value!).toList();
}

List<enums.ValidityPeriodTypeUsageParameter>
    validityPeriodTypeUsageParameterListFromJson(
  List? validityPeriodTypeUsageParameter, [
  List<enums.ValidityPeriodTypeUsageParameter>? defaultValue,
]) {
  if (validityPeriodTypeUsageParameter == null) {
    return defaultValue ?? [];
  }

  return validityPeriodTypeUsageParameter
      .map((e) => validityPeriodTypeUsageParameterFromJson(e.toString()))
      .toList();
}

List<enums.ValidityPeriodTypeUsageParameter>?
    validityPeriodTypeUsageParameterNullableListFromJson(
  List? validityPeriodTypeUsageParameter, [
  List<enums.ValidityPeriodTypeUsageParameter>? defaultValue,
]) {
  if (validityPeriodTypeUsageParameter == null) {
    return defaultValue;
  }

  return validityPeriodTypeUsageParameter
      .map((e) => validityPeriodTypeUsageParameterFromJson(e.toString()))
      .toList();
}

String? validityPeriodValidityPeriodTypeNullableToJson(
    enums.ValidityPeriodValidityPeriodType? validityPeriodValidityPeriodType) {
  return validityPeriodValidityPeriodType?.value;
}

String? validityPeriodValidityPeriodTypeToJson(
    enums.ValidityPeriodValidityPeriodType validityPeriodValidityPeriodType) {
  return validityPeriodValidityPeriodType.value;
}

enums.ValidityPeriodValidityPeriodType validityPeriodValidityPeriodTypeFromJson(
  Object? validityPeriodValidityPeriodType, [
  enums.ValidityPeriodValidityPeriodType? defaultValue,
]) {
  return enums.ValidityPeriodValidityPeriodType.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          validityPeriodValidityPeriodType?.toString().toLowerCase()) ??
      defaultValue ??
      enums.ValidityPeriodValidityPeriodType.swaggerGeneratedUnknown;
}

enums.ValidityPeriodValidityPeriodType?
    validityPeriodValidityPeriodTypeNullableFromJson(
  Object? validityPeriodValidityPeriodType, [
  enums.ValidityPeriodValidityPeriodType? defaultValue,
]) {
  if (validityPeriodValidityPeriodType == null) {
    return null;
  }
  return enums.ValidityPeriodValidityPeriodType.values.firstWhereOrNull(
          (e) => e.value == validityPeriodValidityPeriodType) ??
      defaultValue;
}

String validityPeriodValidityPeriodTypeExplodedListToJson(
    List<enums.ValidityPeriodValidityPeriodType>?
        validityPeriodValidityPeriodType) {
  return validityPeriodValidityPeriodType?.map((e) => e.value!).join(',') ?? '';
}

List<String> validityPeriodValidityPeriodTypeListToJson(
    List<enums.ValidityPeriodValidityPeriodType>?
        validityPeriodValidityPeriodType) {
  if (validityPeriodValidityPeriodType == null) {
    return [];
  }

  return validityPeriodValidityPeriodType.map((e) => e.value!).toList();
}

List<enums.ValidityPeriodValidityPeriodType>
    validityPeriodValidityPeriodTypeListFromJson(
  List? validityPeriodValidityPeriodType, [
  List<enums.ValidityPeriodValidityPeriodType>? defaultValue,
]) {
  if (validityPeriodValidityPeriodType == null) {
    return defaultValue ?? [];
  }

  return validityPeriodValidityPeriodType
      .map((e) => validityPeriodValidityPeriodTypeFromJson(e.toString()))
      .toList();
}

List<enums.ValidityPeriodValidityPeriodType>?
    validityPeriodValidityPeriodTypeNullableListFromJson(
  List? validityPeriodValidityPeriodType, [
  List<enums.ValidityPeriodValidityPeriodType>? defaultValue,
]) {
  if (validityPeriodValidityPeriodType == null) {
    return defaultValue;
  }

  return validityPeriodValidityPeriodType
      .map((e) => validityPeriodValidityPeriodTypeFromJson(e.toString()))
      .toList();
}

String? triggerUsageTriggerTypeNullableToJson(
    enums.TriggerUsageTriggerType? triggerUsageTriggerType) {
  return triggerUsageTriggerType?.value;
}

String? triggerUsageTriggerTypeToJson(
    enums.TriggerUsageTriggerType triggerUsageTriggerType) {
  return triggerUsageTriggerType.value;
}

enums.TriggerUsageTriggerType triggerUsageTriggerTypeFromJson(
  Object? triggerUsageTriggerType, [
  enums.TriggerUsageTriggerType? defaultValue,
]) {
  return enums.TriggerUsageTriggerType.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          triggerUsageTriggerType?.toString().toLowerCase()) ??
      defaultValue ??
      enums.TriggerUsageTriggerType.swaggerGeneratedUnknown;
}

enums.TriggerUsageTriggerType? triggerUsageTriggerTypeNullableFromJson(
  Object? triggerUsageTriggerType, [
  enums.TriggerUsageTriggerType? defaultValue,
]) {
  if (triggerUsageTriggerType == null) {
    return null;
  }
  return enums.TriggerUsageTriggerType.values
          .firstWhereOrNull((e) => e.value == triggerUsageTriggerType) ??
      defaultValue;
}

String triggerUsageTriggerTypeExplodedListToJson(
    List<enums.TriggerUsageTriggerType>? triggerUsageTriggerType) {
  return triggerUsageTriggerType?.map((e) => e.value!).join(',') ?? '';
}

List<String> triggerUsageTriggerTypeListToJson(
    List<enums.TriggerUsageTriggerType>? triggerUsageTriggerType) {
  if (triggerUsageTriggerType == null) {
    return [];
  }

  return triggerUsageTriggerType.map((e) => e.value!).toList();
}

List<enums.TriggerUsageTriggerType> triggerUsageTriggerTypeListFromJson(
  List? triggerUsageTriggerType, [
  List<enums.TriggerUsageTriggerType>? defaultValue,
]) {
  if (triggerUsageTriggerType == null) {
    return defaultValue ?? [];
  }

  return triggerUsageTriggerType
      .map((e) => triggerUsageTriggerTypeFromJson(e.toString()))
      .toList();
}

List<enums.TriggerUsageTriggerType>?
    triggerUsageTriggerTypeNullableListFromJson(
  List? triggerUsageTriggerType, [
  List<enums.TriggerUsageTriggerType>? defaultValue,
]) {
  if (triggerUsageTriggerType == null) {
    return defaultValue;
  }

  return triggerUsageTriggerType
      .map((e) => triggerUsageTriggerTypeFromJson(e.toString()))
      .toList();
}

String? travelSummaryDistanceUnitNullableToJson(
    enums.TravelSummaryDistanceUnit? travelSummaryDistanceUnit) {
  return travelSummaryDistanceUnit?.value;
}

String? travelSummaryDistanceUnitToJson(
    enums.TravelSummaryDistanceUnit travelSummaryDistanceUnit) {
  return travelSummaryDistanceUnit.value;
}

enums.TravelSummaryDistanceUnit travelSummaryDistanceUnitFromJson(
  Object? travelSummaryDistanceUnit, [
  enums.TravelSummaryDistanceUnit? defaultValue,
]) {
  return enums.TravelSummaryDistanceUnit.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          travelSummaryDistanceUnit?.toString().toLowerCase()) ??
      defaultValue ??
      enums.TravelSummaryDistanceUnit.swaggerGeneratedUnknown;
}

enums.TravelSummaryDistanceUnit? travelSummaryDistanceUnitNullableFromJson(
  Object? travelSummaryDistanceUnit, [
  enums.TravelSummaryDistanceUnit? defaultValue,
]) {
  if (travelSummaryDistanceUnit == null) {
    return null;
  }
  return enums.TravelSummaryDistanceUnit.values
          .firstWhereOrNull((e) => e.value == travelSummaryDistanceUnit) ??
      defaultValue;
}

String travelSummaryDistanceUnitExplodedListToJson(
    List<enums.TravelSummaryDistanceUnit>? travelSummaryDistanceUnit) {
  return travelSummaryDistanceUnit?.map((e) => e.value!).join(',') ?? '';
}

List<String> travelSummaryDistanceUnitListToJson(
    List<enums.TravelSummaryDistanceUnit>? travelSummaryDistanceUnit) {
  if (travelSummaryDistanceUnit == null) {
    return [];
  }

  return travelSummaryDistanceUnit.map((e) => e.value!).toList();
}

List<enums.TravelSummaryDistanceUnit> travelSummaryDistanceUnitListFromJson(
  List? travelSummaryDistanceUnit, [
  List<enums.TravelSummaryDistanceUnit>? defaultValue,
]) {
  if (travelSummaryDistanceUnit == null) {
    return defaultValue ?? [];
  }

  return travelSummaryDistanceUnit
      .map((e) => travelSummaryDistanceUnitFromJson(e.toString()))
      .toList();
}

List<enums.TravelSummaryDistanceUnit>?
    travelSummaryDistanceUnitNullableListFromJson(
  List? travelSummaryDistanceUnit, [
  List<enums.TravelSummaryDistanceUnit>? defaultValue,
]) {
  if (travelSummaryDistanceUnit == null) {
    return defaultValue;
  }

  return travelSummaryDistanceUnit
      .map((e) => travelSummaryDistanceUnitFromJson(e.toString()))
      .toList();
}

String? travelSummaryDurationUnitNullableToJson(
    enums.TravelSummaryDurationUnit? travelSummaryDurationUnit) {
  return travelSummaryDurationUnit?.value;
}

String? travelSummaryDurationUnitToJson(
    enums.TravelSummaryDurationUnit travelSummaryDurationUnit) {
  return travelSummaryDurationUnit.value;
}

enums.TravelSummaryDurationUnit travelSummaryDurationUnitFromJson(
  Object? travelSummaryDurationUnit, [
  enums.TravelSummaryDurationUnit? defaultValue,
]) {
  return enums.TravelSummaryDurationUnit.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          travelSummaryDurationUnit?.toString().toLowerCase()) ??
      defaultValue ??
      enums.TravelSummaryDurationUnit.swaggerGeneratedUnknown;
}

enums.TravelSummaryDurationUnit? travelSummaryDurationUnitNullableFromJson(
  Object? travelSummaryDurationUnit, [
  enums.TravelSummaryDurationUnit? defaultValue,
]) {
  if (travelSummaryDurationUnit == null) {
    return null;
  }
  return enums.TravelSummaryDurationUnit.values
          .firstWhereOrNull((e) => e.value == travelSummaryDurationUnit) ??
      defaultValue;
}

String travelSummaryDurationUnitExplodedListToJson(
    List<enums.TravelSummaryDurationUnit>? travelSummaryDurationUnit) {
  return travelSummaryDurationUnit?.map((e) => e.value!).join(',') ?? '';
}

List<String> travelSummaryDurationUnitListToJson(
    List<enums.TravelSummaryDurationUnit>? travelSummaryDurationUnit) {
  if (travelSummaryDurationUnit == null) {
    return [];
  }

  return travelSummaryDurationUnit.map((e) => e.value!).toList();
}

List<enums.TravelSummaryDurationUnit> travelSummaryDurationUnitListFromJson(
  List? travelSummaryDurationUnit, [
  List<enums.TravelSummaryDurationUnit>? defaultValue,
]) {
  if (travelSummaryDurationUnit == null) {
    return defaultValue ?? [];
  }

  return travelSummaryDurationUnit
      .map((e) => travelSummaryDurationUnitFromJson(e.toString()))
      .toList();
}

List<enums.TravelSummaryDurationUnit>?
    travelSummaryDurationUnitNullableListFromJson(
  List? travelSummaryDurationUnit, [
  List<enums.TravelSummaryDurationUnit>? defaultValue,
]) {
  if (travelSummaryDurationUnit == null) {
    return defaultValue;
  }

  return travelSummaryDurationUnit
      .map((e) => travelSummaryDurationUnitFromJson(e.toString()))
      .toList();
}

String? customerProfileTypeUsageParameterNullableToJson(
    enums.CustomerProfileTypeUsageParameter?
        customerProfileTypeUsageParameter) {
  return customerProfileTypeUsageParameter?.value;
}

String? customerProfileTypeUsageParameterToJson(
    enums.CustomerProfileTypeUsageParameter customerProfileTypeUsageParameter) {
  return customerProfileTypeUsageParameter.value;
}

enums.CustomerProfileTypeUsageParameter
    customerProfileTypeUsageParameterFromJson(
  Object? customerProfileTypeUsageParameter, [
  enums.CustomerProfileTypeUsageParameter? defaultValue,
]) {
  return enums.CustomerProfileTypeUsageParameter.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          customerProfileTypeUsageParameter?.toString().toLowerCase()) ??
      defaultValue ??
      enums.CustomerProfileTypeUsageParameter.swaggerGeneratedUnknown;
}

enums.CustomerProfileTypeUsageParameter?
    customerProfileTypeUsageParameterNullableFromJson(
  Object? customerProfileTypeUsageParameter, [
  enums.CustomerProfileTypeUsageParameter? defaultValue,
]) {
  if (customerProfileTypeUsageParameter == null) {
    return null;
  }
  return enums.CustomerProfileTypeUsageParameter.values.firstWhereOrNull(
          (e) => e.value == customerProfileTypeUsageParameter) ??
      defaultValue;
}

String customerProfileTypeUsageParameterExplodedListToJson(
    List<enums.CustomerProfileTypeUsageParameter>?
        customerProfileTypeUsageParameter) {
  return customerProfileTypeUsageParameter?.map((e) => e.value!).join(',') ??
      '';
}

List<String> customerProfileTypeUsageParameterListToJson(
    List<enums.CustomerProfileTypeUsageParameter>?
        customerProfileTypeUsageParameter) {
  if (customerProfileTypeUsageParameter == null) {
    return [];
  }

  return customerProfileTypeUsageParameter.map((e) => e.value!).toList();
}

List<enums.CustomerProfileTypeUsageParameter>
    customerProfileTypeUsageParameterListFromJson(
  List? customerProfileTypeUsageParameter, [
  List<enums.CustomerProfileTypeUsageParameter>? defaultValue,
]) {
  if (customerProfileTypeUsageParameter == null) {
    return defaultValue ?? [];
  }

  return customerProfileTypeUsageParameter
      .map((e) => customerProfileTypeUsageParameterFromJson(e.toString()))
      .toList();
}

List<enums.CustomerProfileTypeUsageParameter>?
    customerProfileTypeUsageParameterNullableListFromJson(
  List? customerProfileTypeUsageParameter, [
  List<enums.CustomerProfileTypeUsageParameter>? defaultValue,
]) {
  if (customerProfileTypeUsageParameter == null) {
    return defaultValue;
  }

  return customerProfileTypeUsageParameter
      .map((e) => customerProfileTypeUsageParameterFromJson(e.toString()))
      .toList();
}

String? frequenciesOfUseTypeUsageParameterNullableToJson(
    enums.FrequenciesOfUseTypeUsageParameter?
        frequenciesOfUseTypeUsageParameter) {
  return frequenciesOfUseTypeUsageParameter?.value;
}

String? frequenciesOfUseTypeUsageParameterToJson(
    enums.FrequenciesOfUseTypeUsageParameter
        frequenciesOfUseTypeUsageParameter) {
  return frequenciesOfUseTypeUsageParameter.value;
}

enums.FrequenciesOfUseTypeUsageParameter
    frequenciesOfUseTypeUsageParameterFromJson(
  Object? frequenciesOfUseTypeUsageParameter, [
  enums.FrequenciesOfUseTypeUsageParameter? defaultValue,
]) {
  return enums.FrequenciesOfUseTypeUsageParameter.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          frequenciesOfUseTypeUsageParameter?.toString().toLowerCase()) ??
      defaultValue ??
      enums.FrequenciesOfUseTypeUsageParameter.swaggerGeneratedUnknown;
}

enums.FrequenciesOfUseTypeUsageParameter?
    frequenciesOfUseTypeUsageParameterNullableFromJson(
  Object? frequenciesOfUseTypeUsageParameter, [
  enums.FrequenciesOfUseTypeUsageParameter? defaultValue,
]) {
  if (frequenciesOfUseTypeUsageParameter == null) {
    return null;
  }
  return enums.FrequenciesOfUseTypeUsageParameter.values.firstWhereOrNull(
          (e) => e.value == frequenciesOfUseTypeUsageParameter) ??
      defaultValue;
}

String frequenciesOfUseTypeUsageParameterExplodedListToJson(
    List<enums.FrequenciesOfUseTypeUsageParameter>?
        frequenciesOfUseTypeUsageParameter) {
  return frequenciesOfUseTypeUsageParameter?.map((e) => e.value!).join(',') ??
      '';
}

List<String> frequenciesOfUseTypeUsageParameterListToJson(
    List<enums.FrequenciesOfUseTypeUsageParameter>?
        frequenciesOfUseTypeUsageParameter) {
  if (frequenciesOfUseTypeUsageParameter == null) {
    return [];
  }

  return frequenciesOfUseTypeUsageParameter.map((e) => e.value!).toList();
}

List<enums.FrequenciesOfUseTypeUsageParameter>
    frequenciesOfUseTypeUsageParameterListFromJson(
  List? frequenciesOfUseTypeUsageParameter, [
  List<enums.FrequenciesOfUseTypeUsageParameter>? defaultValue,
]) {
  if (frequenciesOfUseTypeUsageParameter == null) {
    return defaultValue ?? [];
  }

  return frequenciesOfUseTypeUsageParameter
      .map((e) => frequenciesOfUseTypeUsageParameterFromJson(e.toString()))
      .toList();
}

List<enums.FrequenciesOfUseTypeUsageParameter>?
    frequenciesOfUseTypeUsageParameterNullableListFromJson(
  List? frequenciesOfUseTypeUsageParameter, [
  List<enums.FrequenciesOfUseTypeUsageParameter>? defaultValue,
]) {
  if (frequenciesOfUseTypeUsageParameter == null) {
    return defaultValue;
  }

  return frequenciesOfUseTypeUsageParameter
      .map((e) => frequenciesOfUseTypeUsageParameterFromJson(e.toString()))
      .toList();
}

String? luggageSetAllowanceTypeUsageParameterNullableToJson(
    enums.LuggageSetAllowanceTypeUsageParameter?
        luggageSetAllowanceTypeUsageParameter) {
  return luggageSetAllowanceTypeUsageParameter?.value;
}

String? luggageSetAllowanceTypeUsageParameterToJson(
    enums.LuggageSetAllowanceTypeUsageParameter
        luggageSetAllowanceTypeUsageParameter) {
  return luggageSetAllowanceTypeUsageParameter.value;
}

enums.LuggageSetAllowanceTypeUsageParameter
    luggageSetAllowanceTypeUsageParameterFromJson(
  Object? luggageSetAllowanceTypeUsageParameter, [
  enums.LuggageSetAllowanceTypeUsageParameter? defaultValue,
]) {
  return enums.LuggageSetAllowanceTypeUsageParameter.values.firstWhereOrNull(
          (e) =>
              e.value.toString().toLowerCase() ==
              luggageSetAllowanceTypeUsageParameter
                  ?.toString()
                  .toLowerCase()) ??
      defaultValue ??
      enums.LuggageSetAllowanceTypeUsageParameter.swaggerGeneratedUnknown;
}

enums.LuggageSetAllowanceTypeUsageParameter?
    luggageSetAllowanceTypeUsageParameterNullableFromJson(
  Object? luggageSetAllowanceTypeUsageParameter, [
  enums.LuggageSetAllowanceTypeUsageParameter? defaultValue,
]) {
  if (luggageSetAllowanceTypeUsageParameter == null) {
    return null;
  }
  return enums.LuggageSetAllowanceTypeUsageParameter.values.firstWhereOrNull(
          (e) => e.value == luggageSetAllowanceTypeUsageParameter) ??
      defaultValue;
}

String luggageSetAllowanceTypeUsageParameterExplodedListToJson(
    List<enums.LuggageSetAllowanceTypeUsageParameter>?
        luggageSetAllowanceTypeUsageParameter) {
  return luggageSetAllowanceTypeUsageParameter
          ?.map((e) => e.value!)
          .join(',') ??
      '';
}

List<String> luggageSetAllowanceTypeUsageParameterListToJson(
    List<enums.LuggageSetAllowanceTypeUsageParameter>?
        luggageSetAllowanceTypeUsageParameter) {
  if (luggageSetAllowanceTypeUsageParameter == null) {
    return [];
  }

  return luggageSetAllowanceTypeUsageParameter.map((e) => e.value!).toList();
}

List<enums.LuggageSetAllowanceTypeUsageParameter>
    luggageSetAllowanceTypeUsageParameterListFromJson(
  List? luggageSetAllowanceTypeUsageParameter, [
  List<enums.LuggageSetAllowanceTypeUsageParameter>? defaultValue,
]) {
  if (luggageSetAllowanceTypeUsageParameter == null) {
    return defaultValue ?? [];
  }

  return luggageSetAllowanceTypeUsageParameter
      .map((e) => luggageSetAllowanceTypeUsageParameterFromJson(e.toString()))
      .toList();
}

List<enums.LuggageSetAllowanceTypeUsageParameter>?
    luggageSetAllowanceTypeUsageParameterNullableListFromJson(
  List? luggageSetAllowanceTypeUsageParameter, [
  List<enums.LuggageSetAllowanceTypeUsageParameter>? defaultValue,
]) {
  if (luggageSetAllowanceTypeUsageParameter == null) {
    return defaultValue;
  }

  return luggageSetAllowanceTypeUsageParameter
      .map((e) => luggageSetAllowanceTypeUsageParameterFromJson(e.toString()))
      .toList();
}

String? luggageSetAllowanceBaggageTypeNullableToJson(
    enums.LuggageSetAllowanceBaggageType? luggageSetAllowanceBaggageType) {
  return luggageSetAllowanceBaggageType?.value;
}

String? luggageSetAllowanceBaggageTypeToJson(
    enums.LuggageSetAllowanceBaggageType luggageSetAllowanceBaggageType) {
  return luggageSetAllowanceBaggageType.value;
}

enums.LuggageSetAllowanceBaggageType luggageSetAllowanceBaggageTypeFromJson(
  Object? luggageSetAllowanceBaggageType, [
  enums.LuggageSetAllowanceBaggageType? defaultValue,
]) {
  return enums.LuggageSetAllowanceBaggageType.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          luggageSetAllowanceBaggageType?.toString().toLowerCase()) ??
      defaultValue ??
      enums.LuggageSetAllowanceBaggageType.swaggerGeneratedUnknown;
}

enums.LuggageSetAllowanceBaggageType?
    luggageSetAllowanceBaggageTypeNullableFromJson(
  Object? luggageSetAllowanceBaggageType, [
  enums.LuggageSetAllowanceBaggageType? defaultValue,
]) {
  if (luggageSetAllowanceBaggageType == null) {
    return null;
  }
  return enums.LuggageSetAllowanceBaggageType.values
          .firstWhereOrNull((e) => e.value == luggageSetAllowanceBaggageType) ??
      defaultValue;
}

String luggageSetAllowanceBaggageTypeExplodedListToJson(
    List<enums.LuggageSetAllowanceBaggageType>?
        luggageSetAllowanceBaggageType) {
  return luggageSetAllowanceBaggageType?.map((e) => e.value!).join(',') ?? '';
}

List<String> luggageSetAllowanceBaggageTypeListToJson(
    List<enums.LuggageSetAllowanceBaggageType>?
        luggageSetAllowanceBaggageType) {
  if (luggageSetAllowanceBaggageType == null) {
    return [];
  }

  return luggageSetAllowanceBaggageType.map((e) => e.value!).toList();
}

List<enums.LuggageSetAllowanceBaggageType>
    luggageSetAllowanceBaggageTypeListFromJson(
  List? luggageSetAllowanceBaggageType, [
  List<enums.LuggageSetAllowanceBaggageType>? defaultValue,
]) {
  if (luggageSetAllowanceBaggageType == null) {
    return defaultValue ?? [];
  }

  return luggageSetAllowanceBaggageType
      .map((e) => luggageSetAllowanceBaggageTypeFromJson(e.toString()))
      .toList();
}

List<enums.LuggageSetAllowanceBaggageType>?
    luggageSetAllowanceBaggageTypeNullableListFromJson(
  List? luggageSetAllowanceBaggageType, [
  List<enums.LuggageSetAllowanceBaggageType>? defaultValue,
]) {
  if (luggageSetAllowanceBaggageType == null) {
    return defaultValue;
  }

  return luggageSetAllowanceBaggageType
      .map((e) => luggageSetAllowanceBaggageTypeFromJson(e.toString()))
      .toList();
}

String? geographicalIntervalScopingGeographicalTypeNullableToJson(
    enums.GeographicalIntervalScopingGeographicalType?
        geographicalIntervalScopingGeographicalType) {
  return geographicalIntervalScopingGeographicalType?.value;
}

String? geographicalIntervalScopingGeographicalTypeToJson(
    enums.GeographicalIntervalScopingGeographicalType
        geographicalIntervalScopingGeographicalType) {
  return geographicalIntervalScopingGeographicalType.value;
}

enums.GeographicalIntervalScopingGeographicalType
    geographicalIntervalScopingGeographicalTypeFromJson(
  Object? geographicalIntervalScopingGeographicalType, [
  enums.GeographicalIntervalScopingGeographicalType? defaultValue,
]) {
  return enums.GeographicalIntervalScopingGeographicalType.values
          .firstWhereOrNull((e) =>
              e.value.toString().toLowerCase() ==
              geographicalIntervalScopingGeographicalType
                  ?.toString()
                  .toLowerCase()) ??
      defaultValue ??
      enums.GeographicalIntervalScopingGeographicalType.swaggerGeneratedUnknown;
}

enums.GeographicalIntervalScopingGeographicalType?
    geographicalIntervalScopingGeographicalTypeNullableFromJson(
  Object? geographicalIntervalScopingGeographicalType, [
  enums.GeographicalIntervalScopingGeographicalType? defaultValue,
]) {
  if (geographicalIntervalScopingGeographicalType == null) {
    return null;
  }
  return enums.GeographicalIntervalScopingGeographicalType.values
          .firstWhereOrNull(
              (e) => e.value == geographicalIntervalScopingGeographicalType) ??
      defaultValue;
}

String geographicalIntervalScopingGeographicalTypeExplodedListToJson(
    List<enums.GeographicalIntervalScopingGeographicalType>?
        geographicalIntervalScopingGeographicalType) {
  return geographicalIntervalScopingGeographicalType
          ?.map((e) => e.value!)
          .join(',') ??
      '';
}

List<String> geographicalIntervalScopingGeographicalTypeListToJson(
    List<enums.GeographicalIntervalScopingGeographicalType>?
        geographicalIntervalScopingGeographicalType) {
  if (geographicalIntervalScopingGeographicalType == null) {
    return [];
  }

  return geographicalIntervalScopingGeographicalType
      .map((e) => e.value!)
      .toList();
}

List<enums.GeographicalIntervalScopingGeographicalType>
    geographicalIntervalScopingGeographicalTypeListFromJson(
  List? geographicalIntervalScopingGeographicalType, [
  List<enums.GeographicalIntervalScopingGeographicalType>? defaultValue,
]) {
  if (geographicalIntervalScopingGeographicalType == null) {
    return defaultValue ?? [];
  }

  return geographicalIntervalScopingGeographicalType
      .map((e) =>
          geographicalIntervalScopingGeographicalTypeFromJson(e.toString()))
      .toList();
}

List<enums.GeographicalIntervalScopingGeographicalType>?
    geographicalIntervalScopingGeographicalTypeNullableListFromJson(
  List? geographicalIntervalScopingGeographicalType, [
  List<enums.GeographicalIntervalScopingGeographicalType>? defaultValue,
]) {
  if (geographicalIntervalScopingGeographicalType == null) {
    return defaultValue;
  }

  return geographicalIntervalScopingGeographicalType
      .map((e) =>
          geographicalIntervalScopingGeographicalTypeFromJson(e.toString()))
      .toList();
}

String? geographicalIntervalIntervalTypeNullableToJson(
    enums.GeographicalIntervalIntervalType? geographicalIntervalIntervalType) {
  return geographicalIntervalIntervalType?.value;
}

String? geographicalIntervalIntervalTypeToJson(
    enums.GeographicalIntervalIntervalType geographicalIntervalIntervalType) {
  return geographicalIntervalIntervalType.value;
}

enums.GeographicalIntervalIntervalType geographicalIntervalIntervalTypeFromJson(
  Object? geographicalIntervalIntervalType, [
  enums.GeographicalIntervalIntervalType? defaultValue,
]) {
  return enums.GeographicalIntervalIntervalType.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          geographicalIntervalIntervalType?.toString().toLowerCase()) ??
      defaultValue ??
      enums.GeographicalIntervalIntervalType.swaggerGeneratedUnknown;
}

enums.GeographicalIntervalIntervalType?
    geographicalIntervalIntervalTypeNullableFromJson(
  Object? geographicalIntervalIntervalType, [
  enums.GeographicalIntervalIntervalType? defaultValue,
]) {
  if (geographicalIntervalIntervalType == null) {
    return null;
  }
  return enums.GeographicalIntervalIntervalType.values.firstWhereOrNull(
          (e) => e.value == geographicalIntervalIntervalType) ??
      defaultValue;
}

String geographicalIntervalIntervalTypeExplodedListToJson(
    List<enums.GeographicalIntervalIntervalType>?
        geographicalIntervalIntervalType) {
  return geographicalIntervalIntervalType?.map((e) => e.value!).join(',') ?? '';
}

List<String> geographicalIntervalIntervalTypeListToJson(
    List<enums.GeographicalIntervalIntervalType>?
        geographicalIntervalIntervalType) {
  if (geographicalIntervalIntervalType == null) {
    return [];
  }

  return geographicalIntervalIntervalType.map((e) => e.value!).toList();
}

List<enums.GeographicalIntervalIntervalType>
    geographicalIntervalIntervalTypeListFromJson(
  List? geographicalIntervalIntervalType, [
  List<enums.GeographicalIntervalIntervalType>? defaultValue,
]) {
  if (geographicalIntervalIntervalType == null) {
    return defaultValue ?? [];
  }

  return geographicalIntervalIntervalType
      .map((e) => geographicalIntervalIntervalTypeFromJson(e.toString()))
      .toList();
}

List<enums.GeographicalIntervalIntervalType>?
    geographicalIntervalIntervalTypeNullableListFromJson(
  List? geographicalIntervalIntervalType, [
  List<enums.GeographicalIntervalIntervalType>? defaultValue,
]) {
  if (geographicalIntervalIntervalType == null) {
    return defaultValue;
  }

  return geographicalIntervalIntervalType
      .map((e) => geographicalIntervalIntervalTypeFromJson(e.toString()))
      .toList();
}

String? distributionTouchPointDistributionTouchpointTypeNullableToJson(
    enums.DistributionTouchPointDistributionTouchpointType?
        distributionTouchPointDistributionTouchpointType) {
  return distributionTouchPointDistributionTouchpointType?.value;
}

String? distributionTouchPointDistributionTouchpointTypeToJson(
    enums.DistributionTouchPointDistributionTouchpointType
        distributionTouchPointDistributionTouchpointType) {
  return distributionTouchPointDistributionTouchpointType.value;
}

enums.DistributionTouchPointDistributionTouchpointType
    distributionTouchPointDistributionTouchpointTypeFromJson(
  Object? distributionTouchPointDistributionTouchpointType, [
  enums.DistributionTouchPointDistributionTouchpointType? defaultValue,
]) {
  return enums.DistributionTouchPointDistributionTouchpointType.values
          .firstWhereOrNull((e) =>
              e.value.toString().toLowerCase() ==
              distributionTouchPointDistributionTouchpointType
                  ?.toString()
                  .toLowerCase()) ??
      defaultValue ??
      enums.DistributionTouchPointDistributionTouchpointType
          .swaggerGeneratedUnknown;
}

enums.DistributionTouchPointDistributionTouchpointType?
    distributionTouchPointDistributionTouchpointTypeNullableFromJson(
  Object? distributionTouchPointDistributionTouchpointType, [
  enums.DistributionTouchPointDistributionTouchpointType? defaultValue,
]) {
  if (distributionTouchPointDistributionTouchpointType == null) {
    return null;
  }
  return enums.DistributionTouchPointDistributionTouchpointType.values
          .firstWhereOrNull((e) =>
              e.value == distributionTouchPointDistributionTouchpointType) ??
      defaultValue;
}

String distributionTouchPointDistributionTouchpointTypeExplodedListToJson(
    List<enums.DistributionTouchPointDistributionTouchpointType>?
        distributionTouchPointDistributionTouchpointType) {
  return distributionTouchPointDistributionTouchpointType
          ?.map((e) => e.value!)
          .join(',') ??
      '';
}

List<String> distributionTouchPointDistributionTouchpointTypeListToJson(
    List<enums.DistributionTouchPointDistributionTouchpointType>?
        distributionTouchPointDistributionTouchpointType) {
  if (distributionTouchPointDistributionTouchpointType == null) {
    return [];
  }

  return distributionTouchPointDistributionTouchpointType
      .map((e) => e.value!)
      .toList();
}

List<enums.DistributionTouchPointDistributionTouchpointType>
    distributionTouchPointDistributionTouchpointTypeListFromJson(
  List? distributionTouchPointDistributionTouchpointType, [
  List<enums.DistributionTouchPointDistributionTouchpointType>? defaultValue,
]) {
  if (distributionTouchPointDistributionTouchpointType == null) {
    return defaultValue ?? [];
  }

  return distributionTouchPointDistributionTouchpointType
      .map((e) => distributionTouchPointDistributionTouchpointTypeFromJson(
          e.toString()))
      .toList();
}

List<enums.DistributionTouchPointDistributionTouchpointType>?
    distributionTouchPointDistributionTouchpointTypeNullableListFromJson(
  List? distributionTouchPointDistributionTouchpointType, [
  List<enums.DistributionTouchPointDistributionTouchpointType>? defaultValue,
]) {
  if (distributionTouchPointDistributionTouchpointType == null) {
    return defaultValue;
  }

  return distributionTouchPointDistributionTouchpointType
      .map((e) => distributionTouchPointDistributionTouchpointTypeFromJson(
          e.toString()))
      .toList();
}

String? promotionTypePromotionTypeNullableToJson(
    enums.PromotionTypePromotionType? promotionTypePromotionType) {
  return promotionTypePromotionType?.value;
}

String? promotionTypePromotionTypeToJson(
    enums.PromotionTypePromotionType promotionTypePromotionType) {
  return promotionTypePromotionType.value;
}

enums.PromotionTypePromotionType promotionTypePromotionTypeFromJson(
  Object? promotionTypePromotionType, [
  enums.PromotionTypePromotionType? defaultValue,
]) {
  return enums.PromotionTypePromotionType.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          promotionTypePromotionType?.toString().toLowerCase()) ??
      defaultValue ??
      enums.PromotionTypePromotionType.swaggerGeneratedUnknown;
}

enums.PromotionTypePromotionType? promotionTypePromotionTypeNullableFromJson(
  Object? promotionTypePromotionType, [
  enums.PromotionTypePromotionType? defaultValue,
]) {
  if (promotionTypePromotionType == null) {
    return null;
  }
  return enums.PromotionTypePromotionType.values
          .firstWhereOrNull((e) => e.value == promotionTypePromotionType) ??
      defaultValue;
}

String promotionTypePromotionTypeExplodedListToJson(
    List<enums.PromotionTypePromotionType>? promotionTypePromotionType) {
  return promotionTypePromotionType?.map((e) => e.value!).join(',') ?? '';
}

List<String> promotionTypePromotionTypeListToJson(
    List<enums.PromotionTypePromotionType>? promotionTypePromotionType) {
  if (promotionTypePromotionType == null) {
    return [];
  }

  return promotionTypePromotionType.map((e) => e.value!).toList();
}

List<enums.PromotionTypePromotionType> promotionTypePromotionTypeListFromJson(
  List? promotionTypePromotionType, [
  List<enums.PromotionTypePromotionType>? defaultValue,
]) {
  if (promotionTypePromotionType == null) {
    return defaultValue ?? [];
  }

  return promotionTypePromotionType
      .map((e) => promotionTypePromotionTypeFromJson(e.toString()))
      .toList();
}

List<enums.PromotionTypePromotionType>?
    promotionTypePromotionTypeNullableListFromJson(
  List? promotionTypePromotionType, [
  List<enums.PromotionTypePromotionType>? defaultValue,
]) {
  if (promotionTypePromotionType == null) {
    return defaultValue;
  }

  return promotionTypePromotionType
      .map((e) => promotionTypePromotionTypeFromJson(e.toString()))
      .toList();
}

String? touchPointDistributionTouchpointTypeNullableToJson(
    enums.TouchPointDistributionTouchpointType?
        touchPointDistributionTouchpointType) {
  return touchPointDistributionTouchpointType?.value;
}

String? touchPointDistributionTouchpointTypeToJson(
    enums.TouchPointDistributionTouchpointType
        touchPointDistributionTouchpointType) {
  return touchPointDistributionTouchpointType.value;
}

enums.TouchPointDistributionTouchpointType
    touchPointDistributionTouchpointTypeFromJson(
  Object? touchPointDistributionTouchpointType, [
  enums.TouchPointDistributionTouchpointType? defaultValue,
]) {
  return enums.TouchPointDistributionTouchpointType.values.firstWhereOrNull(
          (e) =>
              e.value.toString().toLowerCase() ==
              touchPointDistributionTouchpointType?.toString().toLowerCase()) ??
      defaultValue ??
      enums.TouchPointDistributionTouchpointType.swaggerGeneratedUnknown;
}

enums.TouchPointDistributionTouchpointType?
    touchPointDistributionTouchpointTypeNullableFromJson(
  Object? touchPointDistributionTouchpointType, [
  enums.TouchPointDistributionTouchpointType? defaultValue,
]) {
  if (touchPointDistributionTouchpointType == null) {
    return null;
  }
  return enums.TouchPointDistributionTouchpointType.values.firstWhereOrNull(
          (e) => e.value == touchPointDistributionTouchpointType) ??
      defaultValue;
}

String touchPointDistributionTouchpointTypeExplodedListToJson(
    List<enums.TouchPointDistributionTouchpointType>?
        touchPointDistributionTouchpointType) {
  return touchPointDistributionTouchpointType?.map((e) => e.value!).join(',') ??
      '';
}

List<String> touchPointDistributionTouchpointTypeListToJson(
    List<enums.TouchPointDistributionTouchpointType>?
        touchPointDistributionTouchpointType) {
  if (touchPointDistributionTouchpointType == null) {
    return [];
  }

  return touchPointDistributionTouchpointType.map((e) => e.value!).toList();
}

List<enums.TouchPointDistributionTouchpointType>
    touchPointDistributionTouchpointTypeListFromJson(
  List? touchPointDistributionTouchpointType, [
  List<enums.TouchPointDistributionTouchpointType>? defaultValue,
]) {
  if (touchPointDistributionTouchpointType == null) {
    return defaultValue ?? [];
  }

  return touchPointDistributionTouchpointType
      .map((e) => touchPointDistributionTouchpointTypeFromJson(e.toString()))
      .toList();
}

List<enums.TouchPointDistributionTouchpointType>?
    touchPointDistributionTouchpointTypeNullableListFromJson(
  List? touchPointDistributionTouchpointType, [
  List<enums.TouchPointDistributionTouchpointType>? defaultValue,
]) {
  if (touchPointDistributionTouchpointType == null) {
    return defaultValue;
  }

  return touchPointDistributionTouchpointType
      .map((e) => touchPointDistributionTouchpointTypeFromJson(e.toString()))
      .toList();
}

String? mediaTypeRefMediaTypeNullableToJson(
    enums.MediaTypeRefMediaType? mediaTypeRefMediaType) {
  return mediaTypeRefMediaType?.value;
}

String? mediaTypeRefMediaTypeToJson(
    enums.MediaTypeRefMediaType mediaTypeRefMediaType) {
  return mediaTypeRefMediaType.value;
}

enums.MediaTypeRefMediaType mediaTypeRefMediaTypeFromJson(
  Object? mediaTypeRefMediaType, [
  enums.MediaTypeRefMediaType? defaultValue,
]) {
  return enums.MediaTypeRefMediaType.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          mediaTypeRefMediaType?.toString().toLowerCase()) ??
      defaultValue ??
      enums.MediaTypeRefMediaType.swaggerGeneratedUnknown;
}

enums.MediaTypeRefMediaType? mediaTypeRefMediaTypeNullableFromJson(
  Object? mediaTypeRefMediaType, [
  enums.MediaTypeRefMediaType? defaultValue,
]) {
  if (mediaTypeRefMediaType == null) {
    return null;
  }
  return enums.MediaTypeRefMediaType.values
          .firstWhereOrNull((e) => e.value == mediaTypeRefMediaType) ??
      defaultValue;
}

String mediaTypeRefMediaTypeExplodedListToJson(
    List<enums.MediaTypeRefMediaType>? mediaTypeRefMediaType) {
  return mediaTypeRefMediaType?.map((e) => e.value!).join(',') ?? '';
}

List<String> mediaTypeRefMediaTypeListToJson(
    List<enums.MediaTypeRefMediaType>? mediaTypeRefMediaType) {
  if (mediaTypeRefMediaType == null) {
    return [];
  }

  return mediaTypeRefMediaType.map((e) => e.value!).toList();
}

List<enums.MediaTypeRefMediaType> mediaTypeRefMediaTypeListFromJson(
  List? mediaTypeRefMediaType, [
  List<enums.MediaTypeRefMediaType>? defaultValue,
]) {
  if (mediaTypeRefMediaType == null) {
    return defaultValue ?? [];
  }

  return mediaTypeRefMediaType
      .map((e) => mediaTypeRefMediaTypeFromJson(e.toString()))
      .toList();
}

List<enums.MediaTypeRefMediaType>? mediaTypeRefMediaTypeNullableListFromJson(
  List? mediaTypeRefMediaType, [
  List<enums.MediaTypeRefMediaType>? defaultValue,
]) {
  if (mediaTypeRefMediaType == null) {
    return defaultValue;
  }

  return mediaTypeRefMediaType
      .map((e) => mediaTypeRefMediaTypeFromJson(e.toString()))
      .toList();
}

String? journeyGroupStatusNullableToJson(
    enums.JourneyGroupStatus? journeyGroupStatus) {
  return journeyGroupStatus?.value;
}

String? journeyGroupStatusToJson(enums.JourneyGroupStatus journeyGroupStatus) {
  return journeyGroupStatus.value;
}

enums.JourneyGroupStatus journeyGroupStatusFromJson(
  Object? journeyGroupStatus, [
  enums.JourneyGroupStatus? defaultValue,
]) {
  return enums.JourneyGroupStatus.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          journeyGroupStatus?.toString().toLowerCase()) ??
      defaultValue ??
      enums.JourneyGroupStatus.swaggerGeneratedUnknown;
}

enums.JourneyGroupStatus? journeyGroupStatusNullableFromJson(
  Object? journeyGroupStatus, [
  enums.JourneyGroupStatus? defaultValue,
]) {
  if (journeyGroupStatus == null) {
    return null;
  }
  return enums.JourneyGroupStatus.values
          .firstWhereOrNull((e) => e.value == journeyGroupStatus) ??
      defaultValue;
}

String journeyGroupStatusExplodedListToJson(
    List<enums.JourneyGroupStatus>? journeyGroupStatus) {
  return journeyGroupStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> journeyGroupStatusListToJson(
    List<enums.JourneyGroupStatus>? journeyGroupStatus) {
  if (journeyGroupStatus == null) {
    return [];
  }

  return journeyGroupStatus.map((e) => e.value!).toList();
}

List<enums.JourneyGroupStatus> journeyGroupStatusListFromJson(
  List? journeyGroupStatus, [
  List<enums.JourneyGroupStatus>? defaultValue,
]) {
  if (journeyGroupStatus == null) {
    return defaultValue ?? [];
  }

  return journeyGroupStatus
      .map((e) => journeyGroupStatusFromJson(e.toString()))
      .toList();
}

List<enums.JourneyGroupStatus>? journeyGroupStatusNullableListFromJson(
  List? journeyGroupStatus, [
  List<enums.JourneyGroupStatus>? defaultValue,
]) {
  if (journeyGroupStatus == null) {
    return defaultValue;
  }

  return journeyGroupStatus
      .map((e) => journeyGroupStatusFromJson(e.toString()))
      .toList();
}

String? accountBasedValidationSummaryStatusNullableToJson(
    enums.AccountBasedValidationSummaryStatus?
        accountBasedValidationSummaryStatus) {
  return accountBasedValidationSummaryStatus?.value;
}

String? accountBasedValidationSummaryStatusToJson(
    enums.AccountBasedValidationSummaryStatus
        accountBasedValidationSummaryStatus) {
  return accountBasedValidationSummaryStatus.value;
}

enums.AccountBasedValidationSummaryStatus
    accountBasedValidationSummaryStatusFromJson(
  Object? accountBasedValidationSummaryStatus, [
  enums.AccountBasedValidationSummaryStatus? defaultValue,
]) {
  return enums.AccountBasedValidationSummaryStatus.values.firstWhereOrNull(
          (e) =>
              e.value.toString().toLowerCase() ==
              accountBasedValidationSummaryStatus?.toString().toLowerCase()) ??
      defaultValue ??
      enums.AccountBasedValidationSummaryStatus.swaggerGeneratedUnknown;
}

enums.AccountBasedValidationSummaryStatus?
    accountBasedValidationSummaryStatusNullableFromJson(
  Object? accountBasedValidationSummaryStatus, [
  enums.AccountBasedValidationSummaryStatus? defaultValue,
]) {
  if (accountBasedValidationSummaryStatus == null) {
    return null;
  }
  return enums.AccountBasedValidationSummaryStatus.values.firstWhereOrNull(
          (e) => e.value == accountBasedValidationSummaryStatus) ??
      defaultValue;
}

String accountBasedValidationSummaryStatusExplodedListToJson(
    List<enums.AccountBasedValidationSummaryStatus>?
        accountBasedValidationSummaryStatus) {
  return accountBasedValidationSummaryStatus?.map((e) => e.value!).join(',') ??
      '';
}

List<String> accountBasedValidationSummaryStatusListToJson(
    List<enums.AccountBasedValidationSummaryStatus>?
        accountBasedValidationSummaryStatus) {
  if (accountBasedValidationSummaryStatus == null) {
    return [];
  }

  return accountBasedValidationSummaryStatus.map((e) => e.value!).toList();
}

List<enums.AccountBasedValidationSummaryStatus>
    accountBasedValidationSummaryStatusListFromJson(
  List? accountBasedValidationSummaryStatus, [
  List<enums.AccountBasedValidationSummaryStatus>? defaultValue,
]) {
  if (accountBasedValidationSummaryStatus == null) {
    return defaultValue ?? [];
  }

  return accountBasedValidationSummaryStatus
      .map((e) => accountBasedValidationSummaryStatusFromJson(e.toString()))
      .toList();
}

List<enums.AccountBasedValidationSummaryStatus>?
    accountBasedValidationSummaryStatusNullableListFromJson(
  List? accountBasedValidationSummaryStatus, [
  List<enums.AccountBasedValidationSummaryStatus>? defaultValue,
]) {
  if (accountBasedValidationSummaryStatus == null) {
    return defaultValue;
  }

  return accountBasedValidationSummaryStatus
      .map((e) => accountBasedValidationSummaryStatusFromJson(e.toString()))
      .toList();
}

String? extendedDistanceMatrixServiceModeNullableToJson(
    enums.ExtendedDistanceMatrixServiceMode?
        extendedDistanceMatrixServiceMode) {
  return extendedDistanceMatrixServiceMode?.value;
}

String? extendedDistanceMatrixServiceModeToJson(
    enums.ExtendedDistanceMatrixServiceMode extendedDistanceMatrixServiceMode) {
  return extendedDistanceMatrixServiceMode.value;
}

enums.ExtendedDistanceMatrixServiceMode
    extendedDistanceMatrixServiceModeFromJson(
  Object? extendedDistanceMatrixServiceMode, [
  enums.ExtendedDistanceMatrixServiceMode? defaultValue,
]) {
  return enums.ExtendedDistanceMatrixServiceMode.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          extendedDistanceMatrixServiceMode?.toString().toLowerCase()) ??
      defaultValue ??
      enums.ExtendedDistanceMatrixServiceMode.swaggerGeneratedUnknown;
}

enums.ExtendedDistanceMatrixServiceMode?
    extendedDistanceMatrixServiceModeNullableFromJson(
  Object? extendedDistanceMatrixServiceMode, [
  enums.ExtendedDistanceMatrixServiceMode? defaultValue,
]) {
  if (extendedDistanceMatrixServiceMode == null) {
    return null;
  }
  return enums.ExtendedDistanceMatrixServiceMode.values.firstWhereOrNull(
          (e) => e.value == extendedDistanceMatrixServiceMode) ??
      defaultValue;
}

String extendedDistanceMatrixServiceModeExplodedListToJson(
    List<enums.ExtendedDistanceMatrixServiceMode>?
        extendedDistanceMatrixServiceMode) {
  return extendedDistanceMatrixServiceMode?.map((e) => e.value!).join(',') ??
      '';
}

List<String> extendedDistanceMatrixServiceModeListToJson(
    List<enums.ExtendedDistanceMatrixServiceMode>?
        extendedDistanceMatrixServiceMode) {
  if (extendedDistanceMatrixServiceMode == null) {
    return [];
  }

  return extendedDistanceMatrixServiceMode.map((e) => e.value!).toList();
}

List<enums.ExtendedDistanceMatrixServiceMode>
    extendedDistanceMatrixServiceModeListFromJson(
  List? extendedDistanceMatrixServiceMode, [
  List<enums.ExtendedDistanceMatrixServiceMode>? defaultValue,
]) {
  if (extendedDistanceMatrixServiceMode == null) {
    return defaultValue ?? [];
  }

  return extendedDistanceMatrixServiceMode
      .map((e) => extendedDistanceMatrixServiceModeFromJson(e.toString()))
      .toList();
}

List<enums.ExtendedDistanceMatrixServiceMode>?
    extendedDistanceMatrixServiceModeNullableListFromJson(
  List? extendedDistanceMatrixServiceMode, [
  List<enums.ExtendedDistanceMatrixServiceMode>? defaultValue,
]) {
  if (extendedDistanceMatrixServiceMode == null) {
    return defaultValue;
  }

  return extendedDistanceMatrixServiceMode
      .map((e) => extendedDistanceMatrixServiceModeFromJson(e.toString()))
      .toList();
}

String? geographicalIntervalLimitInfrastructureElementTypeNullableToJson(
    enums.GeographicalIntervalLimitInfrastructureElementType?
        geographicalIntervalLimitInfrastructureElementType) {
  return geographicalIntervalLimitInfrastructureElementType?.value;
}

String? geographicalIntervalLimitInfrastructureElementTypeToJson(
    enums.GeographicalIntervalLimitInfrastructureElementType
        geographicalIntervalLimitInfrastructureElementType) {
  return geographicalIntervalLimitInfrastructureElementType.value;
}

enums.GeographicalIntervalLimitInfrastructureElementType
    geographicalIntervalLimitInfrastructureElementTypeFromJson(
  Object? geographicalIntervalLimitInfrastructureElementType, [
  enums.GeographicalIntervalLimitInfrastructureElementType? defaultValue,
]) {
  return enums.GeographicalIntervalLimitInfrastructureElementType.values
          .firstWhereOrNull((e) =>
              e.value.toString().toLowerCase() ==
              geographicalIntervalLimitInfrastructureElementType
                  ?.toString()
                  .toLowerCase()) ??
      defaultValue ??
      enums.GeographicalIntervalLimitInfrastructureElementType
          .swaggerGeneratedUnknown;
}

enums.GeographicalIntervalLimitInfrastructureElementType?
    geographicalIntervalLimitInfrastructureElementTypeNullableFromJson(
  Object? geographicalIntervalLimitInfrastructureElementType, [
  enums.GeographicalIntervalLimitInfrastructureElementType? defaultValue,
]) {
  if (geographicalIntervalLimitInfrastructureElementType == null) {
    return null;
  }
  return enums.GeographicalIntervalLimitInfrastructureElementType.values
          .firstWhereOrNull((e) =>
              e.value == geographicalIntervalLimitInfrastructureElementType) ??
      defaultValue;
}

String geographicalIntervalLimitInfrastructureElementTypeExplodedListToJson(
    List<enums.GeographicalIntervalLimitInfrastructureElementType>?
        geographicalIntervalLimitInfrastructureElementType) {
  return geographicalIntervalLimitInfrastructureElementType
          ?.map((e) => e.value!)
          .join(',') ??
      '';
}

List<String> geographicalIntervalLimitInfrastructureElementTypeListToJson(
    List<enums.GeographicalIntervalLimitInfrastructureElementType>?
        geographicalIntervalLimitInfrastructureElementType) {
  if (geographicalIntervalLimitInfrastructureElementType == null) {
    return [];
  }

  return geographicalIntervalLimitInfrastructureElementType
      .map((e) => e.value!)
      .toList();
}

List<enums.GeographicalIntervalLimitInfrastructureElementType>
    geographicalIntervalLimitInfrastructureElementTypeListFromJson(
  List? geographicalIntervalLimitInfrastructureElementType, [
  List<enums.GeographicalIntervalLimitInfrastructureElementType>? defaultValue,
]) {
  if (geographicalIntervalLimitInfrastructureElementType == null) {
    return defaultValue ?? [];
  }

  return geographicalIntervalLimitInfrastructureElementType
      .map((e) => geographicalIntervalLimitInfrastructureElementTypeFromJson(
          e.toString()))
      .toList();
}

List<enums.GeographicalIntervalLimitInfrastructureElementType>?
    geographicalIntervalLimitInfrastructureElementTypeNullableListFromJson(
  List? geographicalIntervalLimitInfrastructureElementType, [
  List<enums.GeographicalIntervalLimitInfrastructureElementType>? defaultValue,
]) {
  if (geographicalIntervalLimitInfrastructureElementType == null) {
    return defaultValue;
  }

  return geographicalIntervalLimitInfrastructureElementType
      .map((e) => geographicalIntervalLimitInfrastructureElementTypeFromJson(
          e.toString()))
      .toList();
}

String? prePurchaseConfirmationResultNullableToJson(
    enums.PrePurchaseConfirmationResult? prePurchaseConfirmationResult) {
  return prePurchaseConfirmationResult?.value;
}

String? prePurchaseConfirmationResultToJson(
    enums.PrePurchaseConfirmationResult prePurchaseConfirmationResult) {
  return prePurchaseConfirmationResult.value;
}

enums.PrePurchaseConfirmationResult prePurchaseConfirmationResultFromJson(
  Object? prePurchaseConfirmationResult, [
  enums.PrePurchaseConfirmationResult? defaultValue,
]) {
  return enums.PrePurchaseConfirmationResult.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          prePurchaseConfirmationResult?.toString().toLowerCase()) ??
      defaultValue ??
      enums.PrePurchaseConfirmationResult.swaggerGeneratedUnknown;
}

enums.PrePurchaseConfirmationResult?
    prePurchaseConfirmationResultNullableFromJson(
  Object? prePurchaseConfirmationResult, [
  enums.PrePurchaseConfirmationResult? defaultValue,
]) {
  if (prePurchaseConfirmationResult == null) {
    return null;
  }
  return enums.PrePurchaseConfirmationResult.values
          .firstWhereOrNull((e) => e.value == prePurchaseConfirmationResult) ??
      defaultValue;
}

String prePurchaseConfirmationResultExplodedListToJson(
    List<enums.PrePurchaseConfirmationResult>? prePurchaseConfirmationResult) {
  return prePurchaseConfirmationResult?.map((e) => e.value!).join(',') ?? '';
}

List<String> prePurchaseConfirmationResultListToJson(
    List<enums.PrePurchaseConfirmationResult>? prePurchaseConfirmationResult) {
  if (prePurchaseConfirmationResult == null) {
    return [];
  }

  return prePurchaseConfirmationResult.map((e) => e.value!).toList();
}

List<enums.PrePurchaseConfirmationResult>
    prePurchaseConfirmationResultListFromJson(
  List? prePurchaseConfirmationResult, [
  List<enums.PrePurchaseConfirmationResult>? defaultValue,
]) {
  if (prePurchaseConfirmationResult == null) {
    return defaultValue ?? [];
  }

  return prePurchaseConfirmationResult
      .map((e) => prePurchaseConfirmationResultFromJson(e.toString()))
      .toList();
}

List<enums.PrePurchaseConfirmationResult>?
    prePurchaseConfirmationResultNullableListFromJson(
  List? prePurchaseConfirmationResult, [
  List<enums.PrePurchaseConfirmationResult>? defaultValue,
]) {
  if (prePurchaseConfirmationResult == null) {
    return defaultValue;
  }

  return prePurchaseConfirmationResult
      .map((e) => prePurchaseConfirmationResultFromJson(e.toString()))
      .toList();
}

String? basketItemMediaTypeNullableToJson(
    enums.BasketItemMediaType? basketItemMediaType) {
  return basketItemMediaType?.value;
}

String? basketItemMediaTypeToJson(
    enums.BasketItemMediaType basketItemMediaType) {
  return basketItemMediaType.value;
}

enums.BasketItemMediaType basketItemMediaTypeFromJson(
  Object? basketItemMediaType, [
  enums.BasketItemMediaType? defaultValue,
]) {
  return enums.BasketItemMediaType.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          basketItemMediaType?.toString().toLowerCase()) ??
      defaultValue ??
      enums.BasketItemMediaType.swaggerGeneratedUnknown;
}

enums.BasketItemMediaType? basketItemMediaTypeNullableFromJson(
  Object? basketItemMediaType, [
  enums.BasketItemMediaType? defaultValue,
]) {
  if (basketItemMediaType == null) {
    return null;
  }
  return enums.BasketItemMediaType.values
          .firstWhereOrNull((e) => e.value == basketItemMediaType) ??
      defaultValue;
}

String basketItemMediaTypeExplodedListToJson(
    List<enums.BasketItemMediaType>? basketItemMediaType) {
  return basketItemMediaType?.map((e) => e.value!).join(',') ?? '';
}

List<String> basketItemMediaTypeListToJson(
    List<enums.BasketItemMediaType>? basketItemMediaType) {
  if (basketItemMediaType == null) {
    return [];
  }

  return basketItemMediaType.map((e) => e.value!).toList();
}

List<enums.BasketItemMediaType> basketItemMediaTypeListFromJson(
  List? basketItemMediaType, [
  List<enums.BasketItemMediaType>? defaultValue,
]) {
  if (basketItemMediaType == null) {
    return defaultValue ?? [];
  }

  return basketItemMediaType
      .map((e) => basketItemMediaTypeFromJson(e.toString()))
      .toList();
}

List<enums.BasketItemMediaType>? basketItemMediaTypeNullableListFromJson(
  List? basketItemMediaType, [
  List<enums.BasketItemMediaType>? defaultValue,
]) {
  if (basketItemMediaType == null) {
    return defaultValue;
  }

  return basketItemMediaType
      .map((e) => basketItemMediaTypeFromJson(e.toString()))
      .toList();
}

String? transactionTransactionResultNullableToJson(
    enums.TransactionTransactionResult? transactionTransactionResult) {
  return transactionTransactionResult?.value;
}

String? transactionTransactionResultToJson(
    enums.TransactionTransactionResult transactionTransactionResult) {
  return transactionTransactionResult.value;
}

enums.TransactionTransactionResult transactionTransactionResultFromJson(
  Object? transactionTransactionResult, [
  enums.TransactionTransactionResult? defaultValue,
]) {
  return enums.TransactionTransactionResult.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          transactionTransactionResult?.toString().toLowerCase()) ??
      defaultValue ??
      enums.TransactionTransactionResult.swaggerGeneratedUnknown;
}

enums.TransactionTransactionResult?
    transactionTransactionResultNullableFromJson(
  Object? transactionTransactionResult, [
  enums.TransactionTransactionResult? defaultValue,
]) {
  if (transactionTransactionResult == null) {
    return null;
  }
  return enums.TransactionTransactionResult.values
          .firstWhereOrNull((e) => e.value == transactionTransactionResult) ??
      defaultValue;
}

String transactionTransactionResultExplodedListToJson(
    List<enums.TransactionTransactionResult>? transactionTransactionResult) {
  return transactionTransactionResult?.map((e) => e.value!).join(',') ?? '';
}

List<String> transactionTransactionResultListToJson(
    List<enums.TransactionTransactionResult>? transactionTransactionResult) {
  if (transactionTransactionResult == null) {
    return [];
  }

  return transactionTransactionResult.map((e) => e.value!).toList();
}

List<enums.TransactionTransactionResult>
    transactionTransactionResultListFromJson(
  List? transactionTransactionResult, [
  List<enums.TransactionTransactionResult>? defaultValue,
]) {
  if (transactionTransactionResult == null) {
    return defaultValue ?? [];
  }

  return transactionTransactionResult
      .map((e) => transactionTransactionResultFromJson(e.toString()))
      .toList();
}

List<enums.TransactionTransactionResult>?
    transactionTransactionResultNullableListFromJson(
  List? transactionTransactionResult, [
  List<enums.TransactionTransactionResult>? defaultValue,
]) {
  if (transactionTransactionResult == null) {
    return defaultValue;
  }

  return transactionTransactionResult
      .map((e) => transactionTransactionResultFromJson(e.toString()))
      .toList();
}

String? transactionTransactionTypeNullableToJson(
    enums.TransactionTransactionType? transactionTransactionType) {
  return transactionTransactionType?.value;
}

String? transactionTransactionTypeToJson(
    enums.TransactionTransactionType transactionTransactionType) {
  return transactionTransactionType.value;
}

enums.TransactionTransactionType transactionTransactionTypeFromJson(
  Object? transactionTransactionType, [
  enums.TransactionTransactionType? defaultValue,
]) {
  return enums.TransactionTransactionType.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          transactionTransactionType?.toString().toLowerCase()) ??
      defaultValue ??
      enums.TransactionTransactionType.swaggerGeneratedUnknown;
}

enums.TransactionTransactionType? transactionTransactionTypeNullableFromJson(
  Object? transactionTransactionType, [
  enums.TransactionTransactionType? defaultValue,
]) {
  if (transactionTransactionType == null) {
    return null;
  }
  return enums.TransactionTransactionType.values
          .firstWhereOrNull((e) => e.value == transactionTransactionType) ??
      defaultValue;
}

String transactionTransactionTypeExplodedListToJson(
    List<enums.TransactionTransactionType>? transactionTransactionType) {
  return transactionTransactionType?.map((e) => e.value!).join(',') ?? '';
}

List<String> transactionTransactionTypeListToJson(
    List<enums.TransactionTransactionType>? transactionTransactionType) {
  if (transactionTransactionType == null) {
    return [];
  }

  return transactionTransactionType.map((e) => e.value!).toList();
}

List<enums.TransactionTransactionType> transactionTransactionTypeListFromJson(
  List? transactionTransactionType, [
  List<enums.TransactionTransactionType>? defaultValue,
]) {
  if (transactionTransactionType == null) {
    return defaultValue ?? [];
  }

  return transactionTransactionType
      .map((e) => transactionTransactionTypeFromJson(e.toString()))
      .toList();
}

List<enums.TransactionTransactionType>?
    transactionTransactionTypeNullableListFromJson(
  List? transactionTransactionType, [
  List<enums.TransactionTransactionType>? defaultValue,
]) {
  if (transactionTransactionType == null) {
    return defaultValue;
  }

  return transactionTransactionType
      .map((e) => transactionTransactionTypeFromJson(e.toString()))
      .toList();
}

String? transactionFareProductTypeNullableToJson(
    enums.TransactionFareProductType? transactionFareProductType) {
  return transactionFareProductType?.value;
}

String? transactionFareProductTypeToJson(
    enums.TransactionFareProductType transactionFareProductType) {
  return transactionFareProductType.value;
}

enums.TransactionFareProductType transactionFareProductTypeFromJson(
  Object? transactionFareProductType, [
  enums.TransactionFareProductType? defaultValue,
]) {
  return enums.TransactionFareProductType.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          transactionFareProductType?.toString().toLowerCase()) ??
      defaultValue ??
      enums.TransactionFareProductType.swaggerGeneratedUnknown;
}

enums.TransactionFareProductType? transactionFareProductTypeNullableFromJson(
  Object? transactionFareProductType, [
  enums.TransactionFareProductType? defaultValue,
]) {
  if (transactionFareProductType == null) {
    return null;
  }
  return enums.TransactionFareProductType.values
          .firstWhereOrNull((e) => e.value == transactionFareProductType) ??
      defaultValue;
}

String transactionFareProductTypeExplodedListToJson(
    List<enums.TransactionFareProductType>? transactionFareProductType) {
  return transactionFareProductType?.map((e) => e.value!).join(',') ?? '';
}

List<String> transactionFareProductTypeListToJson(
    List<enums.TransactionFareProductType>? transactionFareProductType) {
  if (transactionFareProductType == null) {
    return [];
  }

  return transactionFareProductType.map((e) => e.value!).toList();
}

List<enums.TransactionFareProductType> transactionFareProductTypeListFromJson(
  List? transactionFareProductType, [
  List<enums.TransactionFareProductType>? defaultValue,
]) {
  if (transactionFareProductType == null) {
    return defaultValue ?? [];
  }

  return transactionFareProductType
      .map((e) => transactionFareProductTypeFromJson(e.toString()))
      .toList();
}

List<enums.TransactionFareProductType>?
    transactionFareProductTypeNullableListFromJson(
  List? transactionFareProductType, [
  List<enums.TransactionFareProductType>? defaultValue,
]) {
  if (transactionFareProductType == null) {
    return defaultValue;
  }

  return transactionFareProductType
      .map((e) => transactionFareProductTypeFromJson(e.toString()))
      .toList();
}

String? ownerTypeEnumNullableToJson(enums.OwnerTypeEnum? ownerTypeEnum) {
  return ownerTypeEnum?.value;
}

String? ownerTypeEnumToJson(enums.OwnerTypeEnum ownerTypeEnum) {
  return ownerTypeEnum.value;
}

enums.OwnerTypeEnum ownerTypeEnumFromJson(
  Object? ownerTypeEnum, [
  enums.OwnerTypeEnum? defaultValue,
]) {
  return enums.OwnerTypeEnum.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          ownerTypeEnum?.toString().toLowerCase()) ??
      defaultValue ??
      enums.OwnerTypeEnum.swaggerGeneratedUnknown;
}

enums.OwnerTypeEnum? ownerTypeEnumNullableFromJson(
  Object? ownerTypeEnum, [
  enums.OwnerTypeEnum? defaultValue,
]) {
  if (ownerTypeEnum == null) {
    return null;
  }
  return enums.OwnerTypeEnum.values
          .firstWhereOrNull((e) => e.value == ownerTypeEnum) ??
      defaultValue;
}

String ownerTypeEnumExplodedListToJson(
    List<enums.OwnerTypeEnum>? ownerTypeEnum) {
  return ownerTypeEnum?.map((e) => e.value!).join(',') ?? '';
}

List<String> ownerTypeEnumListToJson(List<enums.OwnerTypeEnum>? ownerTypeEnum) {
  if (ownerTypeEnum == null) {
    return [];
  }

  return ownerTypeEnum.map((e) => e.value!).toList();
}

List<enums.OwnerTypeEnum> ownerTypeEnumListFromJson(
  List? ownerTypeEnum, [
  List<enums.OwnerTypeEnum>? defaultValue,
]) {
  if (ownerTypeEnum == null) {
    return defaultValue ?? [];
  }

  return ownerTypeEnum.map((e) => ownerTypeEnumFromJson(e.toString())).toList();
}

List<enums.OwnerTypeEnum>? ownerTypeEnumNullableListFromJson(
  List? ownerTypeEnum, [
  List<enums.OwnerTypeEnum>? defaultValue,
]) {
  if (ownerTypeEnum == null) {
    return defaultValue;
  }

  return ownerTypeEnum.map((e) => ownerTypeEnumFromJson(e.toString())).toList();
}

String? epurseStatusEnumNullableToJson(
    enums.EpurseStatusEnum? epurseStatusEnum) {
  return epurseStatusEnum?.value;
}

String? epurseStatusEnumToJson(enums.EpurseStatusEnum epurseStatusEnum) {
  return epurseStatusEnum.value;
}

enums.EpurseStatusEnum epurseStatusEnumFromJson(
  Object? epurseStatusEnum, [
  enums.EpurseStatusEnum? defaultValue,
]) {
  return enums.EpurseStatusEnum.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          epurseStatusEnum?.toString().toLowerCase()) ??
      defaultValue ??
      enums.EpurseStatusEnum.swaggerGeneratedUnknown;
}

enums.EpurseStatusEnum? epurseStatusEnumNullableFromJson(
  Object? epurseStatusEnum, [
  enums.EpurseStatusEnum? defaultValue,
]) {
  if (epurseStatusEnum == null) {
    return null;
  }
  return enums.EpurseStatusEnum.values
          .firstWhereOrNull((e) => e.value == epurseStatusEnum) ??
      defaultValue;
}

String epurseStatusEnumExplodedListToJson(
    List<enums.EpurseStatusEnum>? epurseStatusEnum) {
  return epurseStatusEnum?.map((e) => e.value!).join(',') ?? '';
}

List<String> epurseStatusEnumListToJson(
    List<enums.EpurseStatusEnum>? epurseStatusEnum) {
  if (epurseStatusEnum == null) {
    return [];
  }

  return epurseStatusEnum.map((e) => e.value!).toList();
}

List<enums.EpurseStatusEnum> epurseStatusEnumListFromJson(
  List? epurseStatusEnum, [
  List<enums.EpurseStatusEnum>? defaultValue,
]) {
  if (epurseStatusEnum == null) {
    return defaultValue ?? [];
  }

  return epurseStatusEnum
      .map((e) => epurseStatusEnumFromJson(e.toString()))
      .toList();
}

List<enums.EpurseStatusEnum>? epurseStatusEnumNullableListFromJson(
  List? epurseStatusEnum, [
  List<enums.EpurseStatusEnum>? defaultValue,
]) {
  if (epurseStatusEnum == null) {
    return defaultValue;
  }

  return epurseStatusEnum
      .map((e) => epurseStatusEnumFromJson(e.toString()))
      .toList();
}

String? transactionTypeEnumNullableToJson(
    enums.TransactionTypeEnum? transactionTypeEnum) {
  return transactionTypeEnum?.value;
}

String? transactionTypeEnumToJson(
    enums.TransactionTypeEnum transactionTypeEnum) {
  return transactionTypeEnum.value;
}

enums.TransactionTypeEnum transactionTypeEnumFromJson(
  Object? transactionTypeEnum, [
  enums.TransactionTypeEnum? defaultValue,
]) {
  return enums.TransactionTypeEnum.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          transactionTypeEnum?.toString().toLowerCase()) ??
      defaultValue ??
      enums.TransactionTypeEnum.swaggerGeneratedUnknown;
}

enums.TransactionTypeEnum? transactionTypeEnumNullableFromJson(
  Object? transactionTypeEnum, [
  enums.TransactionTypeEnum? defaultValue,
]) {
  if (transactionTypeEnum == null) {
    return null;
  }
  return enums.TransactionTypeEnum.values
          .firstWhereOrNull((e) => e.value == transactionTypeEnum) ??
      defaultValue;
}

String transactionTypeEnumExplodedListToJson(
    List<enums.TransactionTypeEnum>? transactionTypeEnum) {
  return transactionTypeEnum?.map((e) => e.value!).join(',') ?? '';
}

List<String> transactionTypeEnumListToJson(
    List<enums.TransactionTypeEnum>? transactionTypeEnum) {
  if (transactionTypeEnum == null) {
    return [];
  }

  return transactionTypeEnum.map((e) => e.value!).toList();
}

List<enums.TransactionTypeEnum> transactionTypeEnumListFromJson(
  List? transactionTypeEnum, [
  List<enums.TransactionTypeEnum>? defaultValue,
]) {
  if (transactionTypeEnum == null) {
    return defaultValue ?? [];
  }

  return transactionTypeEnum
      .map((e) => transactionTypeEnumFromJson(e.toString()))
      .toList();
}

List<enums.TransactionTypeEnum>? transactionTypeEnumNullableListFromJson(
  List? transactionTypeEnum, [
  List<enums.TransactionTypeEnum>? defaultValue,
]) {
  if (transactionTypeEnum == null) {
    return defaultValue;
  }

  return transactionTypeEnum
      .map((e) => transactionTypeEnumFromJson(e.toString()))
      .toList();
}

String? transactionResultTypeEnumNullableToJson(
    enums.TransactionResultTypeEnum? transactionResultTypeEnum) {
  return transactionResultTypeEnum?.value;
}

String? transactionResultTypeEnumToJson(
    enums.TransactionResultTypeEnum transactionResultTypeEnum) {
  return transactionResultTypeEnum.value;
}

enums.TransactionResultTypeEnum transactionResultTypeEnumFromJson(
  Object? transactionResultTypeEnum, [
  enums.TransactionResultTypeEnum? defaultValue,
]) {
  return enums.TransactionResultTypeEnum.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          transactionResultTypeEnum?.toString().toLowerCase()) ??
      defaultValue ??
      enums.TransactionResultTypeEnum.swaggerGeneratedUnknown;
}

enums.TransactionResultTypeEnum? transactionResultTypeEnumNullableFromJson(
  Object? transactionResultTypeEnum, [
  enums.TransactionResultTypeEnum? defaultValue,
]) {
  if (transactionResultTypeEnum == null) {
    return null;
  }
  return enums.TransactionResultTypeEnum.values
          .firstWhereOrNull((e) => e.value == transactionResultTypeEnum) ??
      defaultValue;
}

String transactionResultTypeEnumExplodedListToJson(
    List<enums.TransactionResultTypeEnum>? transactionResultTypeEnum) {
  return transactionResultTypeEnum?.map((e) => e.value!).join(',') ?? '';
}

List<String> transactionResultTypeEnumListToJson(
    List<enums.TransactionResultTypeEnum>? transactionResultTypeEnum) {
  if (transactionResultTypeEnum == null) {
    return [];
  }

  return transactionResultTypeEnum.map((e) => e.value!).toList();
}

List<enums.TransactionResultTypeEnum> transactionResultTypeEnumListFromJson(
  List? transactionResultTypeEnum, [
  List<enums.TransactionResultTypeEnum>? defaultValue,
]) {
  if (transactionResultTypeEnum == null) {
    return defaultValue ?? [];
  }

  return transactionResultTypeEnum
      .map((e) => transactionResultTypeEnumFromJson(e.toString()))
      .toList();
}

List<enums.TransactionResultTypeEnum>?
    transactionResultTypeEnumNullableListFromJson(
  List? transactionResultTypeEnum, [
  List<enums.TransactionResultTypeEnum>? defaultValue,
]) {
  if (transactionResultTypeEnum == null) {
    return defaultValue;
  }

  return transactionResultTypeEnum
      .map((e) => transactionResultTypeEnumFromJson(e.toString()))
      .toList();
}

String? listInsertionTypeEnumNullableToJson(
    enums.ListInsertionTypeEnum? listInsertionTypeEnum) {
  return listInsertionTypeEnum?.value;
}

String? listInsertionTypeEnumToJson(
    enums.ListInsertionTypeEnum listInsertionTypeEnum) {
  return listInsertionTypeEnum.value;
}

enums.ListInsertionTypeEnum listInsertionTypeEnumFromJson(
  Object? listInsertionTypeEnum, [
  enums.ListInsertionTypeEnum? defaultValue,
]) {
  return enums.ListInsertionTypeEnum.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          listInsertionTypeEnum?.toString().toLowerCase()) ??
      defaultValue ??
      enums.ListInsertionTypeEnum.swaggerGeneratedUnknown;
}

enums.ListInsertionTypeEnum? listInsertionTypeEnumNullableFromJson(
  Object? listInsertionTypeEnum, [
  enums.ListInsertionTypeEnum? defaultValue,
]) {
  if (listInsertionTypeEnum == null) {
    return null;
  }
  return enums.ListInsertionTypeEnum.values
          .firstWhereOrNull((e) => e.value == listInsertionTypeEnum) ??
      defaultValue;
}

String listInsertionTypeEnumExplodedListToJson(
    List<enums.ListInsertionTypeEnum>? listInsertionTypeEnum) {
  return listInsertionTypeEnum?.map((e) => e.value!).join(',') ?? '';
}

List<String> listInsertionTypeEnumListToJson(
    List<enums.ListInsertionTypeEnum>? listInsertionTypeEnum) {
  if (listInsertionTypeEnum == null) {
    return [];
  }

  return listInsertionTypeEnum.map((e) => e.value!).toList();
}

List<enums.ListInsertionTypeEnum> listInsertionTypeEnumListFromJson(
  List? listInsertionTypeEnum, [
  List<enums.ListInsertionTypeEnum>? defaultValue,
]) {
  if (listInsertionTypeEnum == null) {
    return defaultValue ?? [];
  }

  return listInsertionTypeEnum
      .map((e) => listInsertionTypeEnumFromJson(e.toString()))
      .toList();
}

List<enums.ListInsertionTypeEnum>? listInsertionTypeEnumNullableListFromJson(
  List? listInsertionTypeEnum, [
  List<enums.ListInsertionTypeEnum>? defaultValue,
]) {
  if (listInsertionTypeEnum == null) {
    return defaultValue;
  }

  return listInsertionTypeEnum
      .map((e) => listInsertionTypeEnumFromJson(e.toString()))
      .toList();
}

String? listTypeEnumNullableToJson(enums.ListTypeEnum? listTypeEnum) {
  return listTypeEnum?.value;
}

String? listTypeEnumToJson(enums.ListTypeEnum listTypeEnum) {
  return listTypeEnum.value;
}

enums.ListTypeEnum listTypeEnumFromJson(
  Object? listTypeEnum, [
  enums.ListTypeEnum? defaultValue,
]) {
  return enums.ListTypeEnum.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          listTypeEnum?.toString().toLowerCase()) ??
      defaultValue ??
      enums.ListTypeEnum.swaggerGeneratedUnknown;
}

enums.ListTypeEnum? listTypeEnumNullableFromJson(
  Object? listTypeEnum, [
  enums.ListTypeEnum? defaultValue,
]) {
  if (listTypeEnum == null) {
    return null;
  }
  return enums.ListTypeEnum.values
          .firstWhereOrNull((e) => e.value == listTypeEnum) ??
      defaultValue;
}

String listTypeEnumExplodedListToJson(List<enums.ListTypeEnum>? listTypeEnum) {
  return listTypeEnum?.map((e) => e.value!).join(',') ?? '';
}

List<String> listTypeEnumListToJson(List<enums.ListTypeEnum>? listTypeEnum) {
  if (listTypeEnum == null) {
    return [];
  }

  return listTypeEnum.map((e) => e.value!).toList();
}

List<enums.ListTypeEnum> listTypeEnumListFromJson(
  List? listTypeEnum, [
  List<enums.ListTypeEnum>? defaultValue,
]) {
  if (listTypeEnum == null) {
    return defaultValue ?? [];
  }

  return listTypeEnum.map((e) => listTypeEnumFromJson(e.toString())).toList();
}

List<enums.ListTypeEnum>? listTypeEnumNullableListFromJson(
  List? listTypeEnum, [
  List<enums.ListTypeEnum>? defaultValue,
]) {
  if (listTypeEnum == null) {
    return defaultValue;
  }

  return listTypeEnum.map((e) => listTypeEnumFromJson(e.toString())).toList();
}

String? statusListEnumNullableToJson(enums.StatusListEnum? statusListEnum) {
  return statusListEnum?.value;
}

String? statusListEnumToJson(enums.StatusListEnum statusListEnum) {
  return statusListEnum.value;
}

enums.StatusListEnum statusListEnumFromJson(
  Object? statusListEnum, [
  enums.StatusListEnum? defaultValue,
]) {
  return enums.StatusListEnum.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          statusListEnum?.toString().toLowerCase()) ??
      defaultValue ??
      enums.StatusListEnum.swaggerGeneratedUnknown;
}

enums.StatusListEnum? statusListEnumNullableFromJson(
  Object? statusListEnum, [
  enums.StatusListEnum? defaultValue,
]) {
  if (statusListEnum == null) {
    return null;
  }
  return enums.StatusListEnum.values
          .firstWhereOrNull((e) => e.value == statusListEnum) ??
      defaultValue;
}

String statusListEnumExplodedListToJson(
    List<enums.StatusListEnum>? statusListEnum) {
  return statusListEnum?.map((e) => e.value!).join(',') ?? '';
}

List<String> statusListEnumListToJson(
    List<enums.StatusListEnum>? statusListEnum) {
  if (statusListEnum == null) {
    return [];
  }

  return statusListEnum.map((e) => e.value!).toList();
}

List<enums.StatusListEnum> statusListEnumListFromJson(
  List? statusListEnum, [
  List<enums.StatusListEnum>? defaultValue,
]) {
  if (statusListEnum == null) {
    return defaultValue ?? [];
  }

  return statusListEnum
      .map((e) => statusListEnumFromJson(e.toString()))
      .toList();
}

List<enums.StatusListEnum>? statusListEnumNullableListFromJson(
  List? statusListEnum, [
  List<enums.StatusListEnum>? defaultValue,
]) {
  if (statusListEnum == null) {
    return defaultValue;
  }

  return statusListEnum
      .map((e) => statusListEnumFromJson(e.toString()))
      .toList();
}

String? legDataEnumNullableToJson(enums.LegDataEnum? legDataEnum) {
  return legDataEnum?.value;
}

String? legDataEnumToJson(enums.LegDataEnum legDataEnum) {
  return legDataEnum.value;
}

enums.LegDataEnum legDataEnumFromJson(
  Object? legDataEnum, [
  enums.LegDataEnum? defaultValue,
]) {
  return enums.LegDataEnum.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          legDataEnum?.toString().toLowerCase()) ??
      defaultValue ??
      enums.LegDataEnum.swaggerGeneratedUnknown;
}

enums.LegDataEnum? legDataEnumNullableFromJson(
  Object? legDataEnum, [
  enums.LegDataEnum? defaultValue,
]) {
  if (legDataEnum == null) {
    return null;
  }
  return enums.LegDataEnum.values
          .firstWhereOrNull((e) => e.value == legDataEnum) ??
      defaultValue;
}

String legDataEnumExplodedListToJson(List<enums.LegDataEnum>? legDataEnum) {
  return legDataEnum?.map((e) => e.value!).join(',') ?? '';
}

List<String> legDataEnumListToJson(List<enums.LegDataEnum>? legDataEnum) {
  if (legDataEnum == null) {
    return [];
  }

  return legDataEnum.map((e) => e.value!).toList();
}

List<enums.LegDataEnum> legDataEnumListFromJson(
  List? legDataEnum, [
  List<enums.LegDataEnum>? defaultValue,
]) {
  if (legDataEnum == null) {
    return defaultValue ?? [];
  }

  return legDataEnum.map((e) => legDataEnumFromJson(e.toString())).toList();
}

List<enums.LegDataEnum>? legDataEnumNullableListFromJson(
  List? legDataEnum, [
  List<enums.LegDataEnum>? defaultValue,
]) {
  if (legDataEnum == null) {
    return defaultValue;
  }

  return legDataEnum.map((e) => legDataEnumFromJson(e.toString())).toList();
}

String? relationTypeEnumNullableToJson(
    enums.RelationTypeEnum? relationTypeEnum) {
  return relationTypeEnum?.value;
}

String? relationTypeEnumToJson(enums.RelationTypeEnum relationTypeEnum) {
  return relationTypeEnum.value;
}

enums.RelationTypeEnum relationTypeEnumFromJson(
  Object? relationTypeEnum, [
  enums.RelationTypeEnum? defaultValue,
]) {
  return enums.RelationTypeEnum.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          relationTypeEnum?.toString().toLowerCase()) ??
      defaultValue ??
      enums.RelationTypeEnum.swaggerGeneratedUnknown;
}

enums.RelationTypeEnum? relationTypeEnumNullableFromJson(
  Object? relationTypeEnum, [
  enums.RelationTypeEnum? defaultValue,
]) {
  if (relationTypeEnum == null) {
    return null;
  }
  return enums.RelationTypeEnum.values
          .firstWhereOrNull((e) => e.value == relationTypeEnum) ??
      defaultValue;
}

String relationTypeEnumExplodedListToJson(
    List<enums.RelationTypeEnum>? relationTypeEnum) {
  return relationTypeEnum?.map((e) => e.value!).join(',') ?? '';
}

List<String> relationTypeEnumListToJson(
    List<enums.RelationTypeEnum>? relationTypeEnum) {
  if (relationTypeEnum == null) {
    return [];
  }

  return relationTypeEnum.map((e) => e.value!).toList();
}

List<enums.RelationTypeEnum> relationTypeEnumListFromJson(
  List? relationTypeEnum, [
  List<enums.RelationTypeEnum>? defaultValue,
]) {
  if (relationTypeEnum == null) {
    return defaultValue ?? [];
  }

  return relationTypeEnum
      .map((e) => relationTypeEnumFromJson(e.toString()))
      .toList();
}

List<enums.RelationTypeEnum>? relationTypeEnumNullableListFromJson(
  List? relationTypeEnum, [
  List<enums.RelationTypeEnum>? defaultValue,
]) {
  if (relationTypeEnum == null) {
    return defaultValue;
  }

  return relationTypeEnum
      .map((e) => relationTypeEnumFromJson(e.toString()))
      .toList();
}

String? notificationStatusEnumNullableToJson(
    enums.NotificationStatusEnum? notificationStatusEnum) {
  return notificationStatusEnum?.value;
}

String? notificationStatusEnumToJson(
    enums.NotificationStatusEnum notificationStatusEnum) {
  return notificationStatusEnum.value;
}

enums.NotificationStatusEnum notificationStatusEnumFromJson(
  Object? notificationStatusEnum, [
  enums.NotificationStatusEnum? defaultValue,
]) {
  return enums.NotificationStatusEnum.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          notificationStatusEnum?.toString().toLowerCase()) ??
      defaultValue ??
      enums.NotificationStatusEnum.swaggerGeneratedUnknown;
}

enums.NotificationStatusEnum? notificationStatusEnumNullableFromJson(
  Object? notificationStatusEnum, [
  enums.NotificationStatusEnum? defaultValue,
]) {
  if (notificationStatusEnum == null) {
    return null;
  }
  return enums.NotificationStatusEnum.values
          .firstWhereOrNull((e) => e.value == notificationStatusEnum) ??
      defaultValue;
}

String notificationStatusEnumExplodedListToJson(
    List<enums.NotificationStatusEnum>? notificationStatusEnum) {
  return notificationStatusEnum?.map((e) => e.value!).join(',') ?? '';
}

List<String> notificationStatusEnumListToJson(
    List<enums.NotificationStatusEnum>? notificationStatusEnum) {
  if (notificationStatusEnum == null) {
    return [];
  }

  return notificationStatusEnum.map((e) => e.value!).toList();
}

List<enums.NotificationStatusEnum> notificationStatusEnumListFromJson(
  List? notificationStatusEnum, [
  List<enums.NotificationStatusEnum>? defaultValue,
]) {
  if (notificationStatusEnum == null) {
    return defaultValue ?? [];
  }

  return notificationStatusEnum
      .map((e) => notificationStatusEnumFromJson(e.toString()))
      .toList();
}

List<enums.NotificationStatusEnum>? notificationStatusEnumNullableListFromJson(
  List? notificationStatusEnum, [
  List<enums.NotificationStatusEnum>? defaultValue,
]) {
  if (notificationStatusEnum == null) {
    return defaultValue;
  }

  return notificationStatusEnum
      .map((e) => notificationStatusEnumFromJson(e.toString()))
      .toList();
}

String? postalAddressTypeEnumNullableToJson(
    enums.PostalAddressTypeEnum? postalAddressTypeEnum) {
  return postalAddressTypeEnum?.value;
}

String? postalAddressTypeEnumToJson(
    enums.PostalAddressTypeEnum postalAddressTypeEnum) {
  return postalAddressTypeEnum.value;
}

enums.PostalAddressTypeEnum postalAddressTypeEnumFromJson(
  Object? postalAddressTypeEnum, [
  enums.PostalAddressTypeEnum? defaultValue,
]) {
  return enums.PostalAddressTypeEnum.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          postalAddressTypeEnum?.toString().toLowerCase()) ??
      defaultValue ??
      enums.PostalAddressTypeEnum.swaggerGeneratedUnknown;
}

enums.PostalAddressTypeEnum? postalAddressTypeEnumNullableFromJson(
  Object? postalAddressTypeEnum, [
  enums.PostalAddressTypeEnum? defaultValue,
]) {
  if (postalAddressTypeEnum == null) {
    return null;
  }
  return enums.PostalAddressTypeEnum.values
          .firstWhereOrNull((e) => e.value == postalAddressTypeEnum) ??
      defaultValue;
}

String postalAddressTypeEnumExplodedListToJson(
    List<enums.PostalAddressTypeEnum>? postalAddressTypeEnum) {
  return postalAddressTypeEnum?.map((e) => e.value!).join(',') ?? '';
}

List<String> postalAddressTypeEnumListToJson(
    List<enums.PostalAddressTypeEnum>? postalAddressTypeEnum) {
  if (postalAddressTypeEnum == null) {
    return [];
  }

  return postalAddressTypeEnum.map((e) => e.value!).toList();
}

List<enums.PostalAddressTypeEnum> postalAddressTypeEnumListFromJson(
  List? postalAddressTypeEnum, [
  List<enums.PostalAddressTypeEnum>? defaultValue,
]) {
  if (postalAddressTypeEnum == null) {
    return defaultValue ?? [];
  }

  return postalAddressTypeEnum
      .map((e) => postalAddressTypeEnumFromJson(e.toString()))
      .toList();
}

List<enums.PostalAddressTypeEnum>? postalAddressTypeEnumNullableListFromJson(
  List? postalAddressTypeEnum, [
  List<enums.PostalAddressTypeEnum>? defaultValue,
]) {
  if (postalAddressTypeEnum == null) {
    return defaultValue;
  }

  return postalAddressTypeEnum
      .map((e) => postalAddressTypeEnumFromJson(e.toString()))
      .toList();
}

String? serviceTypeEnumNullableToJson(enums.ServiceTypeEnum? serviceTypeEnum) {
  return serviceTypeEnum?.value;
}

String? serviceTypeEnumToJson(enums.ServiceTypeEnum serviceTypeEnum) {
  return serviceTypeEnum.value;
}

enums.ServiceTypeEnum serviceTypeEnumFromJson(
  Object? serviceTypeEnum, [
  enums.ServiceTypeEnum? defaultValue,
]) {
  return enums.ServiceTypeEnum.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          serviceTypeEnum?.toString().toLowerCase()) ??
      defaultValue ??
      enums.ServiceTypeEnum.swaggerGeneratedUnknown;
}

enums.ServiceTypeEnum? serviceTypeEnumNullableFromJson(
  Object? serviceTypeEnum, [
  enums.ServiceTypeEnum? defaultValue,
]) {
  if (serviceTypeEnum == null) {
    return null;
  }
  return enums.ServiceTypeEnum.values
          .firstWhereOrNull((e) => e.value == serviceTypeEnum) ??
      defaultValue;
}

String serviceTypeEnumExplodedListToJson(
    List<enums.ServiceTypeEnum>? serviceTypeEnum) {
  return serviceTypeEnum?.map((e) => e.value!).join(',') ?? '';
}

List<String> serviceTypeEnumListToJson(
    List<enums.ServiceTypeEnum>? serviceTypeEnum) {
  if (serviceTypeEnum == null) {
    return [];
  }

  return serviceTypeEnum.map((e) => e.value!).toList();
}

List<enums.ServiceTypeEnum> serviceTypeEnumListFromJson(
  List? serviceTypeEnum, [
  List<enums.ServiceTypeEnum>? defaultValue,
]) {
  if (serviceTypeEnum == null) {
    return defaultValue ?? [];
  }

  return serviceTypeEnum
      .map((e) => serviceTypeEnumFromJson(e.toString()))
      .toList();
}

List<enums.ServiceTypeEnum>? serviceTypeEnumNullableListFromJson(
  List? serviceTypeEnum, [
  List<enums.ServiceTypeEnum>? defaultValue,
]) {
  if (serviceTypeEnum == null) {
    return defaultValue;
  }

  return serviceTypeEnum
      .map((e) => serviceTypeEnumFromJson(e.toString()))
      .toList();
}

String? documentTypeEnumNullableToJson(
    enums.DocumentTypeEnum? documentTypeEnum) {
  return documentTypeEnum?.value;
}

String? documentTypeEnumToJson(enums.DocumentTypeEnum documentTypeEnum) {
  return documentTypeEnum.value;
}

enums.DocumentTypeEnum documentTypeEnumFromJson(
  Object? documentTypeEnum, [
  enums.DocumentTypeEnum? defaultValue,
]) {
  return enums.DocumentTypeEnum.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          documentTypeEnum?.toString().toLowerCase()) ??
      defaultValue ??
      enums.DocumentTypeEnum.swaggerGeneratedUnknown;
}

enums.DocumentTypeEnum? documentTypeEnumNullableFromJson(
  Object? documentTypeEnum, [
  enums.DocumentTypeEnum? defaultValue,
]) {
  if (documentTypeEnum == null) {
    return null;
  }
  return enums.DocumentTypeEnum.values
          .firstWhereOrNull((e) => e.value == documentTypeEnum) ??
      defaultValue;
}

String documentTypeEnumExplodedListToJson(
    List<enums.DocumentTypeEnum>? documentTypeEnum) {
  return documentTypeEnum?.map((e) => e.value!).join(',') ?? '';
}

List<String> documentTypeEnumListToJson(
    List<enums.DocumentTypeEnum>? documentTypeEnum) {
  if (documentTypeEnum == null) {
    return [];
  }

  return documentTypeEnum.map((e) => e.value!).toList();
}

List<enums.DocumentTypeEnum> documentTypeEnumListFromJson(
  List? documentTypeEnum, [
  List<enums.DocumentTypeEnum>? defaultValue,
]) {
  if (documentTypeEnum == null) {
    return defaultValue ?? [];
  }

  return documentTypeEnum
      .map((e) => documentTypeEnumFromJson(e.toString()))
      .toList();
}

List<enums.DocumentTypeEnum>? documentTypeEnumNullableListFromJson(
  List? documentTypeEnum, [
  List<enums.DocumentTypeEnum>? defaultValue,
]) {
  if (documentTypeEnum == null) {
    return defaultValue;
  }

  return documentTypeEnum
      .map((e) => documentTypeEnumFromJson(e.toString()))
      .toList();
}

String? paymentStatusEnumNullableToJson(
    enums.PaymentStatusEnum? paymentStatusEnum) {
  return paymentStatusEnum?.value;
}

String? paymentStatusEnumToJson(enums.PaymentStatusEnum paymentStatusEnum) {
  return paymentStatusEnum.value;
}

enums.PaymentStatusEnum paymentStatusEnumFromJson(
  Object? paymentStatusEnum, [
  enums.PaymentStatusEnum? defaultValue,
]) {
  return enums.PaymentStatusEnum.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          paymentStatusEnum?.toString().toLowerCase()) ??
      defaultValue ??
      enums.PaymentStatusEnum.swaggerGeneratedUnknown;
}

enums.PaymentStatusEnum? paymentStatusEnumNullableFromJson(
  Object? paymentStatusEnum, [
  enums.PaymentStatusEnum? defaultValue,
]) {
  if (paymentStatusEnum == null) {
    return null;
  }
  return enums.PaymentStatusEnum.values
          .firstWhereOrNull((e) => e.value == paymentStatusEnum) ??
      defaultValue;
}

String paymentStatusEnumExplodedListToJson(
    List<enums.PaymentStatusEnum>? paymentStatusEnum) {
  return paymentStatusEnum?.map((e) => e.value!).join(',') ?? '';
}

List<String> paymentStatusEnumListToJson(
    List<enums.PaymentStatusEnum>? paymentStatusEnum) {
  if (paymentStatusEnum == null) {
    return [];
  }

  return paymentStatusEnum.map((e) => e.value!).toList();
}

List<enums.PaymentStatusEnum> paymentStatusEnumListFromJson(
  List? paymentStatusEnum, [
  List<enums.PaymentStatusEnum>? defaultValue,
]) {
  if (paymentStatusEnum == null) {
    return defaultValue ?? [];
  }

  return paymentStatusEnum
      .map((e) => paymentStatusEnumFromJson(e.toString()))
      .toList();
}

List<enums.PaymentStatusEnum>? paymentStatusEnumNullableListFromJson(
  List? paymentStatusEnum, [
  List<enums.PaymentStatusEnum>? defaultValue,
]) {
  if (paymentStatusEnum == null) {
    return defaultValue;
  }

  return paymentStatusEnum
      .map((e) => paymentStatusEnumFromJson(e.toString()))
      .toList();
}

String? contactTypeEnumNullableToJson(enums.ContactTypeEnum? contactTypeEnum) {
  return contactTypeEnum?.value;
}

String? contactTypeEnumToJson(enums.ContactTypeEnum contactTypeEnum) {
  return contactTypeEnum.value;
}

enums.ContactTypeEnum contactTypeEnumFromJson(
  Object? contactTypeEnum, [
  enums.ContactTypeEnum? defaultValue,
]) {
  return enums.ContactTypeEnum.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          contactTypeEnum?.toString().toLowerCase()) ??
      defaultValue ??
      enums.ContactTypeEnum.swaggerGeneratedUnknown;
}

enums.ContactTypeEnum? contactTypeEnumNullableFromJson(
  Object? contactTypeEnum, [
  enums.ContactTypeEnum? defaultValue,
]) {
  if (contactTypeEnum == null) {
    return null;
  }
  return enums.ContactTypeEnum.values
          .firstWhereOrNull((e) => e.value == contactTypeEnum) ??
      defaultValue;
}

String contactTypeEnumExplodedListToJson(
    List<enums.ContactTypeEnum>? contactTypeEnum) {
  return contactTypeEnum?.map((e) => e.value!).join(',') ?? '';
}

List<String> contactTypeEnumListToJson(
    List<enums.ContactTypeEnum>? contactTypeEnum) {
  if (contactTypeEnum == null) {
    return [];
  }

  return contactTypeEnum.map((e) => e.value!).toList();
}

List<enums.ContactTypeEnum> contactTypeEnumListFromJson(
  List? contactTypeEnum, [
  List<enums.ContactTypeEnum>? defaultValue,
]) {
  if (contactTypeEnum == null) {
    return defaultValue ?? [];
  }

  return contactTypeEnum
      .map((e) => contactTypeEnumFromJson(e.toString()))
      .toList();
}

List<enums.ContactTypeEnum>? contactTypeEnumNullableListFromJson(
  List? contactTypeEnum, [
  List<enums.ContactTypeEnum>? defaultValue,
]) {
  if (contactTypeEnum == null) {
    return defaultValue;
  }

  return contactTypeEnum
      .map((e) => contactTypeEnumFromJson(e.toString()))
      .toList();
}

String? touchpointEnumNullableToJson(enums.TouchpointEnum? touchpointEnum) {
  return touchpointEnum?.value;
}

String? touchpointEnumToJson(enums.TouchpointEnum touchpointEnum) {
  return touchpointEnum.value;
}

enums.TouchpointEnum touchpointEnumFromJson(
  Object? touchpointEnum, [
  enums.TouchpointEnum? defaultValue,
]) {
  return enums.TouchpointEnum.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          touchpointEnum?.toString().toLowerCase()) ??
      defaultValue ??
      enums.TouchpointEnum.swaggerGeneratedUnknown;
}

enums.TouchpointEnum? touchpointEnumNullableFromJson(
  Object? touchpointEnum, [
  enums.TouchpointEnum? defaultValue,
]) {
  if (touchpointEnum == null) {
    return null;
  }
  return enums.TouchpointEnum.values
          .firstWhereOrNull((e) => e.value == touchpointEnum) ??
      defaultValue;
}

String touchpointEnumExplodedListToJson(
    List<enums.TouchpointEnum>? touchpointEnum) {
  return touchpointEnum?.map((e) => e.value!).join(',') ?? '';
}

List<String> touchpointEnumListToJson(
    List<enums.TouchpointEnum>? touchpointEnum) {
  if (touchpointEnum == null) {
    return [];
  }

  return touchpointEnum.map((e) => e.value!).toList();
}

List<enums.TouchpointEnum> touchpointEnumListFromJson(
  List? touchpointEnum, [
  List<enums.TouchpointEnum>? defaultValue,
]) {
  if (touchpointEnum == null) {
    return defaultValue ?? [];
  }

  return touchpointEnum
      .map((e) => touchpointEnumFromJson(e.toString()))
      .toList();
}

List<enums.TouchpointEnum>? touchpointEnumNullableListFromJson(
  List? touchpointEnum, [
  List<enums.TouchpointEnum>? defaultValue,
]) {
  if (touchpointEnum == null) {
    return defaultValue;
  }

  return touchpointEnum
      .map((e) => touchpointEnumFromJson(e.toString()))
      .toList();
}

String? productsGetOrgTCNullableToJson(
    enums.ProductsGetOrgTC? productsGetOrgTC) {
  return productsGetOrgTC?.value;
}

String? productsGetOrgTCToJson(enums.ProductsGetOrgTC productsGetOrgTC) {
  return productsGetOrgTC.value;
}

enums.ProductsGetOrgTC productsGetOrgTCFromJson(
  Object? productsGetOrgTC, [
  enums.ProductsGetOrgTC? defaultValue,
]) {
  return enums.ProductsGetOrgTC.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          productsGetOrgTC?.toString().toLowerCase()) ??
      defaultValue ??
      enums.ProductsGetOrgTC.swaggerGeneratedUnknown;
}

enums.ProductsGetOrgTC? productsGetOrgTCNullableFromJson(
  Object? productsGetOrgTC, [
  enums.ProductsGetOrgTC? defaultValue,
]) {
  if (productsGetOrgTC == null) {
    return null;
  }
  return enums.ProductsGetOrgTC.values
          .firstWhereOrNull((e) => e.value == productsGetOrgTC) ??
      defaultValue;
}

String productsGetOrgTCExplodedListToJson(
    List<enums.ProductsGetOrgTC>? productsGetOrgTC) {
  return productsGetOrgTC?.map((e) => e.value!).join(',') ?? '';
}

List<String> productsGetOrgTCListToJson(
    List<enums.ProductsGetOrgTC>? productsGetOrgTC) {
  if (productsGetOrgTC == null) {
    return [];
  }

  return productsGetOrgTC.map((e) => e.value!).toList();
}

List<enums.ProductsGetOrgTC> productsGetOrgTCListFromJson(
  List? productsGetOrgTC, [
  List<enums.ProductsGetOrgTC>? defaultValue,
]) {
  if (productsGetOrgTC == null) {
    return defaultValue ?? [];
  }

  return productsGetOrgTC
      .map((e) => productsGetOrgTCFromJson(e.toString()))
      .toList();
}

List<enums.ProductsGetOrgTC>? productsGetOrgTCNullableListFromJson(
  List? productsGetOrgTC, [
  List<enums.ProductsGetOrgTC>? defaultValue,
]) {
  if (productsGetOrgTC == null) {
    return defaultValue;
  }

  return productsGetOrgTC
      .map((e) => productsGetOrgTCFromJson(e.toString()))
      .toList();
}

String? productsGetVldPTNullableToJson(
    enums.ProductsGetVldPT? productsGetVldPT) {
  return productsGetVldPT?.value;
}

String? productsGetVldPTToJson(enums.ProductsGetVldPT productsGetVldPT) {
  return productsGetVldPT.value;
}

enums.ProductsGetVldPT productsGetVldPTFromJson(
  Object? productsGetVldPT, [
  enums.ProductsGetVldPT? defaultValue,
]) {
  return enums.ProductsGetVldPT.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          productsGetVldPT?.toString().toLowerCase()) ??
      defaultValue ??
      enums.ProductsGetVldPT.swaggerGeneratedUnknown;
}

enums.ProductsGetVldPT? productsGetVldPTNullableFromJson(
  Object? productsGetVldPT, [
  enums.ProductsGetVldPT? defaultValue,
]) {
  if (productsGetVldPT == null) {
    return null;
  }
  return enums.ProductsGetVldPT.values
          .firstWhereOrNull((e) => e.value == productsGetVldPT) ??
      defaultValue;
}

String productsGetVldPTExplodedListToJson(
    List<enums.ProductsGetVldPT>? productsGetVldPT) {
  return productsGetVldPT?.map((e) => e.value!).join(',') ?? '';
}

List<String> productsGetVldPTListToJson(
    List<enums.ProductsGetVldPT>? productsGetVldPT) {
  if (productsGetVldPT == null) {
    return [];
  }

  return productsGetVldPT.map((e) => e.value!).toList();
}

List<enums.ProductsGetVldPT> productsGetVldPTListFromJson(
  List? productsGetVldPT, [
  List<enums.ProductsGetVldPT>? defaultValue,
]) {
  if (productsGetVldPT == null) {
    return defaultValue ?? [];
  }

  return productsGetVldPT
      .map((e) => productsGetVldPTFromJson(e.toString()))
      .toList();
}

List<enums.ProductsGetVldPT>? productsGetVldPTNullableListFromJson(
  List? productsGetVldPT, [
  List<enums.ProductsGetVldPT>? defaultValue,
]) {
  if (productsGetVldPT == null) {
    return defaultValue;
  }

  return productsGetVldPT
      .map((e) => productsGetVldPTFromJson(e.toString()))
      .toList();
}

String? productsGetCpResNullableToJson(
    enums.ProductsGetCpRes? productsGetCpRes) {
  return productsGetCpRes?.value;
}

String? productsGetCpResToJson(enums.ProductsGetCpRes productsGetCpRes) {
  return productsGetCpRes.value;
}

enums.ProductsGetCpRes productsGetCpResFromJson(
  Object? productsGetCpRes, [
  enums.ProductsGetCpRes? defaultValue,
]) {
  return enums.ProductsGetCpRes.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          productsGetCpRes?.toString().toLowerCase()) ??
      defaultValue ??
      enums.ProductsGetCpRes.swaggerGeneratedUnknown;
}

enums.ProductsGetCpRes? productsGetCpResNullableFromJson(
  Object? productsGetCpRes, [
  enums.ProductsGetCpRes? defaultValue,
]) {
  if (productsGetCpRes == null) {
    return null;
  }
  return enums.ProductsGetCpRes.values
          .firstWhereOrNull((e) => e.value == productsGetCpRes) ??
      defaultValue;
}

String productsGetCpResExplodedListToJson(
    List<enums.ProductsGetCpRes>? productsGetCpRes) {
  return productsGetCpRes?.map((e) => e.value!).join(',') ?? '';
}

List<String> productsGetCpResListToJson(
    List<enums.ProductsGetCpRes>? productsGetCpRes) {
  if (productsGetCpRes == null) {
    return [];
  }

  return productsGetCpRes.map((e) => e.value!).toList();
}

List<enums.ProductsGetCpRes> productsGetCpResListFromJson(
  List? productsGetCpRes, [
  List<enums.ProductsGetCpRes>? defaultValue,
]) {
  if (productsGetCpRes == null) {
    return defaultValue ?? [];
  }

  return productsGetCpRes
      .map((e) => productsGetCpResFromJson(e.toString()))
      .toList();
}

List<enums.ProductsGetCpRes>? productsGetCpResNullableListFromJson(
  List? productsGetCpRes, [
  List<enums.ProductsGetCpRes>? defaultValue,
]) {
  if (productsGetCpRes == null) {
    return defaultValue;
  }

  return productsGetCpRes
      .map((e) => productsGetCpResFromJson(e.toString()))
      .toList();
}

String? productsGetLugBTNullableToJson(
    enums.ProductsGetLugBT? productsGetLugBT) {
  return productsGetLugBT?.value;
}

String? productsGetLugBTToJson(enums.ProductsGetLugBT productsGetLugBT) {
  return productsGetLugBT.value;
}

enums.ProductsGetLugBT productsGetLugBTFromJson(
  Object? productsGetLugBT, [
  enums.ProductsGetLugBT? defaultValue,
]) {
  return enums.ProductsGetLugBT.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          productsGetLugBT?.toString().toLowerCase()) ??
      defaultValue ??
      enums.ProductsGetLugBT.swaggerGeneratedUnknown;
}

enums.ProductsGetLugBT? productsGetLugBTNullableFromJson(
  Object? productsGetLugBT, [
  enums.ProductsGetLugBT? defaultValue,
]) {
  if (productsGetLugBT == null) {
    return null;
  }
  return enums.ProductsGetLugBT.values
          .firstWhereOrNull((e) => e.value == productsGetLugBT) ??
      defaultValue;
}

String productsGetLugBTExplodedListToJson(
    List<enums.ProductsGetLugBT>? productsGetLugBT) {
  return productsGetLugBT?.map((e) => e.value!).join(',') ?? '';
}

List<String> productsGetLugBTListToJson(
    List<enums.ProductsGetLugBT>? productsGetLugBT) {
  if (productsGetLugBT == null) {
    return [];
  }

  return productsGetLugBT.map((e) => e.value!).toList();
}

List<enums.ProductsGetLugBT> productsGetLugBTListFromJson(
  List? productsGetLugBT, [
  List<enums.ProductsGetLugBT>? defaultValue,
]) {
  if (productsGetLugBT == null) {
    return defaultValue ?? [];
  }

  return productsGetLugBT
      .map((e) => productsGetLugBTFromJson(e.toString()))
      .toList();
}

List<enums.ProductsGetLugBT>? productsGetLugBTNullableListFromJson(
  List? productsGetLugBT, [
  List<enums.ProductsGetLugBT>? defaultValue,
]) {
  if (productsGetLugBT == null) {
    return defaultValue;
  }

  return productsGetLugBT
      .map((e) => productsGetLugBTFromJson(e.toString()))
      .toList();
}

String? productsGetTpTypNullableToJson(
    enums.ProductsGetTpTyp? productsGetTpTyp) {
  return productsGetTpTyp?.value;
}

String? productsGetTpTypToJson(enums.ProductsGetTpTyp productsGetTpTyp) {
  return productsGetTpTyp.value;
}

enums.ProductsGetTpTyp productsGetTpTypFromJson(
  Object? productsGetTpTyp, [
  enums.ProductsGetTpTyp? defaultValue,
]) {
  return enums.ProductsGetTpTyp.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          productsGetTpTyp?.toString().toLowerCase()) ??
      defaultValue ??
      enums.ProductsGetTpTyp.swaggerGeneratedUnknown;
}

enums.ProductsGetTpTyp? productsGetTpTypNullableFromJson(
  Object? productsGetTpTyp, [
  enums.ProductsGetTpTyp? defaultValue,
]) {
  if (productsGetTpTyp == null) {
    return null;
  }
  return enums.ProductsGetTpTyp.values
          .firstWhereOrNull((e) => e.value == productsGetTpTyp) ??
      defaultValue;
}

String productsGetTpTypExplodedListToJson(
    List<enums.ProductsGetTpTyp>? productsGetTpTyp) {
  return productsGetTpTyp?.map((e) => e.value!).join(',') ?? '';
}

List<String> productsGetTpTypListToJson(
    List<enums.ProductsGetTpTyp>? productsGetTpTyp) {
  if (productsGetTpTyp == null) {
    return [];
  }

  return productsGetTpTyp.map((e) => e.value!).toList();
}

List<enums.ProductsGetTpTyp> productsGetTpTypListFromJson(
  List? productsGetTpTyp, [
  List<enums.ProductsGetTpTyp>? defaultValue,
]) {
  if (productsGetTpTyp == null) {
    return defaultValue ?? [];
  }

  return productsGetTpTyp
      .map((e) => productsGetTpTypFromJson(e.toString()))
      .toList();
}

List<enums.ProductsGetTpTyp>? productsGetTpTypNullableListFromJson(
  List? productsGetTpTyp, [
  List<enums.ProductsGetTpTyp>? defaultValue,
]) {
  if (productsGetTpTyp == null) {
    return defaultValue;
  }

  return productsGetTpTyp
      .map((e) => productsGetTpTypFromJson(e.toString()))
      .toList();
}

String? productsGetMedTpNullableToJson(
    enums.ProductsGetMedTp? productsGetMedTp) {
  return productsGetMedTp?.value;
}

String? productsGetMedTpToJson(enums.ProductsGetMedTp productsGetMedTp) {
  return productsGetMedTp.value;
}

enums.ProductsGetMedTp productsGetMedTpFromJson(
  Object? productsGetMedTp, [
  enums.ProductsGetMedTp? defaultValue,
]) {
  return enums.ProductsGetMedTp.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          productsGetMedTp?.toString().toLowerCase()) ??
      defaultValue ??
      enums.ProductsGetMedTp.swaggerGeneratedUnknown;
}

enums.ProductsGetMedTp? productsGetMedTpNullableFromJson(
  Object? productsGetMedTp, [
  enums.ProductsGetMedTp? defaultValue,
]) {
  if (productsGetMedTp == null) {
    return null;
  }
  return enums.ProductsGetMedTp.values
          .firstWhereOrNull((e) => e.value == productsGetMedTp) ??
      defaultValue;
}

String productsGetMedTpExplodedListToJson(
    List<enums.ProductsGetMedTp>? productsGetMedTp) {
  return productsGetMedTp?.map((e) => e.value!).join(',') ?? '';
}

List<String> productsGetMedTpListToJson(
    List<enums.ProductsGetMedTp>? productsGetMedTp) {
  if (productsGetMedTp == null) {
    return [];
  }

  return productsGetMedTp.map((e) => e.value!).toList();
}

List<enums.ProductsGetMedTp> productsGetMedTpListFromJson(
  List? productsGetMedTp, [
  List<enums.ProductsGetMedTp>? defaultValue,
]) {
  if (productsGetMedTp == null) {
    return defaultValue ?? [];
  }

  return productsGetMedTp
      .map((e) => productsGetMedTpFromJson(e.toString()))
      .toList();
}

List<enums.ProductsGetMedTp>? productsGetMedTpNullableListFromJson(
  List? productsGetMedTp, [
  List<enums.ProductsGetMedTp>? defaultValue,
]) {
  if (productsGetMedTp == null) {
    return defaultValue;
  }

  return productsGetMedTp
      .map((e) => productsGetMedTpFromJson(e.toString()))
      .toList();
}

String? productsGetCpIdOpNullableToJson(
    enums.ProductsGetCpIdOp? productsGetCpIdOp) {
  return productsGetCpIdOp?.value;
}

String? productsGetCpIdOpToJson(enums.ProductsGetCpIdOp productsGetCpIdOp) {
  return productsGetCpIdOp.value;
}

enums.ProductsGetCpIdOp productsGetCpIdOpFromJson(
  Object? productsGetCpIdOp, [
  enums.ProductsGetCpIdOp? defaultValue,
]) {
  return enums.ProductsGetCpIdOp.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          productsGetCpIdOp?.toString().toLowerCase()) ??
      defaultValue ??
      enums.ProductsGetCpIdOp.swaggerGeneratedUnknown;
}

enums.ProductsGetCpIdOp? productsGetCpIdOpNullableFromJson(
  Object? productsGetCpIdOp, [
  enums.ProductsGetCpIdOp? defaultValue,
]) {
  if (productsGetCpIdOp == null) {
    return null;
  }
  return enums.ProductsGetCpIdOp.values
          .firstWhereOrNull((e) => e.value == productsGetCpIdOp) ??
      defaultValue;
}

String productsGetCpIdOpExplodedListToJson(
    List<enums.ProductsGetCpIdOp>? productsGetCpIdOp) {
  return productsGetCpIdOp?.map((e) => e.value!).join(',') ?? '';
}

List<String> productsGetCpIdOpListToJson(
    List<enums.ProductsGetCpIdOp>? productsGetCpIdOp) {
  if (productsGetCpIdOp == null) {
    return [];
  }

  return productsGetCpIdOp.map((e) => e.value!).toList();
}

List<enums.ProductsGetCpIdOp> productsGetCpIdOpListFromJson(
  List? productsGetCpIdOp, [
  List<enums.ProductsGetCpIdOp>? defaultValue,
]) {
  if (productsGetCpIdOp == null) {
    return defaultValue ?? [];
  }

  return productsGetCpIdOp
      .map((e) => productsGetCpIdOpFromJson(e.toString()))
      .toList();
}

List<enums.ProductsGetCpIdOp>? productsGetCpIdOpNullableListFromJson(
  List? productsGetCpIdOp, [
  List<enums.ProductsGetCpIdOp>? defaultValue,
]) {
  if (productsGetCpIdOp == null) {
    return defaultValue;
  }

  return productsGetCpIdOp
      .map((e) => productsGetCpIdOpFromJson(e.toString()))
      .toList();
}

String? salespackagesGetTpTypNullableToJson(
    enums.SalespackagesGetTpTyp? salespackagesGetTpTyp) {
  return salespackagesGetTpTyp?.value;
}

String? salespackagesGetTpTypToJson(
    enums.SalespackagesGetTpTyp salespackagesGetTpTyp) {
  return salespackagesGetTpTyp.value;
}

enums.SalespackagesGetTpTyp salespackagesGetTpTypFromJson(
  Object? salespackagesGetTpTyp, [
  enums.SalespackagesGetTpTyp? defaultValue,
]) {
  return enums.SalespackagesGetTpTyp.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          salespackagesGetTpTyp?.toString().toLowerCase()) ??
      defaultValue ??
      enums.SalespackagesGetTpTyp.swaggerGeneratedUnknown;
}

enums.SalespackagesGetTpTyp? salespackagesGetTpTypNullableFromJson(
  Object? salespackagesGetTpTyp, [
  enums.SalespackagesGetTpTyp? defaultValue,
]) {
  if (salespackagesGetTpTyp == null) {
    return null;
  }
  return enums.SalespackagesGetTpTyp.values
          .firstWhereOrNull((e) => e.value == salespackagesGetTpTyp) ??
      defaultValue;
}

String salespackagesGetTpTypExplodedListToJson(
    List<enums.SalespackagesGetTpTyp>? salespackagesGetTpTyp) {
  return salespackagesGetTpTyp?.map((e) => e.value!).join(',') ?? '';
}

List<String> salespackagesGetTpTypListToJson(
    List<enums.SalespackagesGetTpTyp>? salespackagesGetTpTyp) {
  if (salespackagesGetTpTyp == null) {
    return [];
  }

  return salespackagesGetTpTyp.map((e) => e.value!).toList();
}

List<enums.SalespackagesGetTpTyp> salespackagesGetTpTypListFromJson(
  List? salespackagesGetTpTyp, [
  List<enums.SalespackagesGetTpTyp>? defaultValue,
]) {
  if (salespackagesGetTpTyp == null) {
    return defaultValue ?? [];
  }

  return salespackagesGetTpTyp
      .map((e) => salespackagesGetTpTypFromJson(e.toString()))
      .toList();
}

List<enums.SalespackagesGetTpTyp>? salespackagesGetTpTypNullableListFromJson(
  List? salespackagesGetTpTyp, [
  List<enums.SalespackagesGetTpTyp>? defaultValue,
]) {
  if (salespackagesGetTpTyp == null) {
    return defaultValue;
  }

  return salespackagesGetTpTyp
      .map((e) => salespackagesGetTpTypFromJson(e.toString()))
      .toList();
}

String? salespackagesGetOrgTCNullableToJson(
    enums.SalespackagesGetOrgTC? salespackagesGetOrgTC) {
  return salespackagesGetOrgTC?.value;
}

String? salespackagesGetOrgTCToJson(
    enums.SalespackagesGetOrgTC salespackagesGetOrgTC) {
  return salespackagesGetOrgTC.value;
}

enums.SalespackagesGetOrgTC salespackagesGetOrgTCFromJson(
  Object? salespackagesGetOrgTC, [
  enums.SalespackagesGetOrgTC? defaultValue,
]) {
  return enums.SalespackagesGetOrgTC.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          salespackagesGetOrgTC?.toString().toLowerCase()) ??
      defaultValue ??
      enums.SalespackagesGetOrgTC.swaggerGeneratedUnknown;
}

enums.SalespackagesGetOrgTC? salespackagesGetOrgTCNullableFromJson(
  Object? salespackagesGetOrgTC, [
  enums.SalespackagesGetOrgTC? defaultValue,
]) {
  if (salespackagesGetOrgTC == null) {
    return null;
  }
  return enums.SalespackagesGetOrgTC.values
          .firstWhereOrNull((e) => e.value == salespackagesGetOrgTC) ??
      defaultValue;
}

String salespackagesGetOrgTCExplodedListToJson(
    List<enums.SalespackagesGetOrgTC>? salespackagesGetOrgTC) {
  return salespackagesGetOrgTC?.map((e) => e.value!).join(',') ?? '';
}

List<String> salespackagesGetOrgTCListToJson(
    List<enums.SalespackagesGetOrgTC>? salespackagesGetOrgTC) {
  if (salespackagesGetOrgTC == null) {
    return [];
  }

  return salespackagesGetOrgTC.map((e) => e.value!).toList();
}

List<enums.SalespackagesGetOrgTC> salespackagesGetOrgTCListFromJson(
  List? salespackagesGetOrgTC, [
  List<enums.SalespackagesGetOrgTC>? defaultValue,
]) {
  if (salespackagesGetOrgTC == null) {
    return defaultValue ?? [];
  }

  return salespackagesGetOrgTC
      .map((e) => salespackagesGetOrgTCFromJson(e.toString()))
      .toList();
}

List<enums.SalespackagesGetOrgTC>? salespackagesGetOrgTCNullableListFromJson(
  List? salespackagesGetOrgTC, [
  List<enums.SalespackagesGetOrgTC>? defaultValue,
]) {
  if (salespackagesGetOrgTC == null) {
    return defaultValue;
  }

  return salespackagesGetOrgTC
      .map((e) => salespackagesGetOrgTCFromJson(e.toString()))
      .toList();
}

String? salespackagesGetCpResNullableToJson(
    enums.SalespackagesGetCpRes? salespackagesGetCpRes) {
  return salespackagesGetCpRes?.value;
}

String? salespackagesGetCpResToJson(
    enums.SalespackagesGetCpRes salespackagesGetCpRes) {
  return salespackagesGetCpRes.value;
}

enums.SalespackagesGetCpRes salespackagesGetCpResFromJson(
  Object? salespackagesGetCpRes, [
  enums.SalespackagesGetCpRes? defaultValue,
]) {
  return enums.SalespackagesGetCpRes.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          salespackagesGetCpRes?.toString().toLowerCase()) ??
      defaultValue ??
      enums.SalespackagesGetCpRes.swaggerGeneratedUnknown;
}

enums.SalespackagesGetCpRes? salespackagesGetCpResNullableFromJson(
  Object? salespackagesGetCpRes, [
  enums.SalespackagesGetCpRes? defaultValue,
]) {
  if (salespackagesGetCpRes == null) {
    return null;
  }
  return enums.SalespackagesGetCpRes.values
          .firstWhereOrNull((e) => e.value == salespackagesGetCpRes) ??
      defaultValue;
}

String salespackagesGetCpResExplodedListToJson(
    List<enums.SalespackagesGetCpRes>? salespackagesGetCpRes) {
  return salespackagesGetCpRes?.map((e) => e.value!).join(',') ?? '';
}

List<String> salespackagesGetCpResListToJson(
    List<enums.SalespackagesGetCpRes>? salespackagesGetCpRes) {
  if (salespackagesGetCpRes == null) {
    return [];
  }

  return salespackagesGetCpRes.map((e) => e.value!).toList();
}

List<enums.SalespackagesGetCpRes> salespackagesGetCpResListFromJson(
  List? salespackagesGetCpRes, [
  List<enums.SalespackagesGetCpRes>? defaultValue,
]) {
  if (salespackagesGetCpRes == null) {
    return defaultValue ?? [];
  }

  return salespackagesGetCpRes
      .map((e) => salespackagesGetCpResFromJson(e.toString()))
      .toList();
}

List<enums.SalespackagesGetCpRes>? salespackagesGetCpResNullableListFromJson(
  List? salespackagesGetCpRes, [
  List<enums.SalespackagesGetCpRes>? defaultValue,
]) {
  if (salespackagesGetCpRes == null) {
    return defaultValue;
  }

  return salespackagesGetCpRes
      .map((e) => salespackagesGetCpResFromJson(e.toString()))
      .toList();
}

String? salespackagesGetMedTpNullableToJson(
    enums.SalespackagesGetMedTp? salespackagesGetMedTp) {
  return salespackagesGetMedTp?.value;
}

String? salespackagesGetMedTpToJson(
    enums.SalespackagesGetMedTp salespackagesGetMedTp) {
  return salespackagesGetMedTp.value;
}

enums.SalespackagesGetMedTp salespackagesGetMedTpFromJson(
  Object? salespackagesGetMedTp, [
  enums.SalespackagesGetMedTp? defaultValue,
]) {
  return enums.SalespackagesGetMedTp.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          salespackagesGetMedTp?.toString().toLowerCase()) ??
      defaultValue ??
      enums.SalespackagesGetMedTp.swaggerGeneratedUnknown;
}

enums.SalespackagesGetMedTp? salespackagesGetMedTpNullableFromJson(
  Object? salespackagesGetMedTp, [
  enums.SalespackagesGetMedTp? defaultValue,
]) {
  if (salespackagesGetMedTp == null) {
    return null;
  }
  return enums.SalespackagesGetMedTp.values
          .firstWhereOrNull((e) => e.value == salespackagesGetMedTp) ??
      defaultValue;
}

String salespackagesGetMedTpExplodedListToJson(
    List<enums.SalespackagesGetMedTp>? salespackagesGetMedTp) {
  return salespackagesGetMedTp?.map((e) => e.value!).join(',') ?? '';
}

List<String> salespackagesGetMedTpListToJson(
    List<enums.SalespackagesGetMedTp>? salespackagesGetMedTp) {
  if (salespackagesGetMedTp == null) {
    return [];
  }

  return salespackagesGetMedTp.map((e) => e.value!).toList();
}

List<enums.SalespackagesGetMedTp> salespackagesGetMedTpListFromJson(
  List? salespackagesGetMedTp, [
  List<enums.SalespackagesGetMedTp>? defaultValue,
]) {
  if (salespackagesGetMedTp == null) {
    return defaultValue ?? [];
  }

  return salespackagesGetMedTp
      .map((e) => salespackagesGetMedTpFromJson(e.toString()))
      .toList();
}

List<enums.SalespackagesGetMedTp>? salespackagesGetMedTpNullableListFromJson(
  List? salespackagesGetMedTp, [
  List<enums.SalespackagesGetMedTp>? defaultValue,
]) {
  if (salespackagesGetMedTp == null) {
    return defaultValue;
  }

  return salespackagesGetMedTp
      .map((e) => salespackagesGetMedTpFromJson(e.toString()))
      .toList();
}

String? salespackagesGetVldPTNullableToJson(
    enums.SalespackagesGetVldPT? salespackagesGetVldPT) {
  return salespackagesGetVldPT?.value;
}

String? salespackagesGetVldPTToJson(
    enums.SalespackagesGetVldPT salespackagesGetVldPT) {
  return salespackagesGetVldPT.value;
}

enums.SalespackagesGetVldPT salespackagesGetVldPTFromJson(
  Object? salespackagesGetVldPT, [
  enums.SalespackagesGetVldPT? defaultValue,
]) {
  return enums.SalespackagesGetVldPT.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          salespackagesGetVldPT?.toString().toLowerCase()) ??
      defaultValue ??
      enums.SalespackagesGetVldPT.swaggerGeneratedUnknown;
}

enums.SalespackagesGetVldPT? salespackagesGetVldPTNullableFromJson(
  Object? salespackagesGetVldPT, [
  enums.SalespackagesGetVldPT? defaultValue,
]) {
  if (salespackagesGetVldPT == null) {
    return null;
  }
  return enums.SalespackagesGetVldPT.values
          .firstWhereOrNull((e) => e.value == salespackagesGetVldPT) ??
      defaultValue;
}

String salespackagesGetVldPTExplodedListToJson(
    List<enums.SalespackagesGetVldPT>? salespackagesGetVldPT) {
  return salespackagesGetVldPT?.map((e) => e.value!).join(',') ?? '';
}

List<String> salespackagesGetVldPTListToJson(
    List<enums.SalespackagesGetVldPT>? salespackagesGetVldPT) {
  if (salespackagesGetVldPT == null) {
    return [];
  }

  return salespackagesGetVldPT.map((e) => e.value!).toList();
}

List<enums.SalespackagesGetVldPT> salespackagesGetVldPTListFromJson(
  List? salespackagesGetVldPT, [
  List<enums.SalespackagesGetVldPT>? defaultValue,
]) {
  if (salespackagesGetVldPT == null) {
    return defaultValue ?? [];
  }

  return salespackagesGetVldPT
      .map((e) => salespackagesGetVldPTFromJson(e.toString()))
      .toList();
}

List<enums.SalespackagesGetVldPT>? salespackagesGetVldPTNullableListFromJson(
  List? salespackagesGetVldPT, [
  List<enums.SalespackagesGetVldPT>? defaultValue,
]) {
  if (salespackagesGetVldPT == null) {
    return defaultValue;
  }

  return salespackagesGetVldPT
      .map((e) => salespackagesGetVldPTFromJson(e.toString()))
      .toList();
}

String? salespackagesGetLugBTNullableToJson(
    enums.SalespackagesGetLugBT? salespackagesGetLugBT) {
  return salespackagesGetLugBT?.value;
}

String? salespackagesGetLugBTToJson(
    enums.SalespackagesGetLugBT salespackagesGetLugBT) {
  return salespackagesGetLugBT.value;
}

enums.SalespackagesGetLugBT salespackagesGetLugBTFromJson(
  Object? salespackagesGetLugBT, [
  enums.SalespackagesGetLugBT? defaultValue,
]) {
  return enums.SalespackagesGetLugBT.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          salespackagesGetLugBT?.toString().toLowerCase()) ??
      defaultValue ??
      enums.SalespackagesGetLugBT.swaggerGeneratedUnknown;
}

enums.SalespackagesGetLugBT? salespackagesGetLugBTNullableFromJson(
  Object? salespackagesGetLugBT, [
  enums.SalespackagesGetLugBT? defaultValue,
]) {
  if (salespackagesGetLugBT == null) {
    return null;
  }
  return enums.SalespackagesGetLugBT.values
          .firstWhereOrNull((e) => e.value == salespackagesGetLugBT) ??
      defaultValue;
}

String salespackagesGetLugBTExplodedListToJson(
    List<enums.SalespackagesGetLugBT>? salespackagesGetLugBT) {
  return salespackagesGetLugBT?.map((e) => e.value!).join(',') ?? '';
}

List<String> salespackagesGetLugBTListToJson(
    List<enums.SalespackagesGetLugBT>? salespackagesGetLugBT) {
  if (salespackagesGetLugBT == null) {
    return [];
  }

  return salespackagesGetLugBT.map((e) => e.value!).toList();
}

List<enums.SalespackagesGetLugBT> salespackagesGetLugBTListFromJson(
  List? salespackagesGetLugBT, [
  List<enums.SalespackagesGetLugBT>? defaultValue,
]) {
  if (salespackagesGetLugBT == null) {
    return defaultValue ?? [];
  }

  return salespackagesGetLugBT
      .map((e) => salespackagesGetLugBTFromJson(e.toString()))
      .toList();
}

List<enums.SalespackagesGetLugBT>? salespackagesGetLugBTNullableListFromJson(
  List? salespackagesGetLugBT, [
  List<enums.SalespackagesGetLugBT>? defaultValue,
]) {
  if (salespackagesGetLugBT == null) {
    return defaultValue;
  }

  return salespackagesGetLugBT
      .map((e) => salespackagesGetLugBTFromJson(e.toString()))
      .toList();
}

String? salespackagesGetCpIdOpNullableToJson(
    enums.SalespackagesGetCpIdOp? salespackagesGetCpIdOp) {
  return salespackagesGetCpIdOp?.value;
}

String? salespackagesGetCpIdOpToJson(
    enums.SalespackagesGetCpIdOp salespackagesGetCpIdOp) {
  return salespackagesGetCpIdOp.value;
}

enums.SalespackagesGetCpIdOp salespackagesGetCpIdOpFromJson(
  Object? salespackagesGetCpIdOp, [
  enums.SalespackagesGetCpIdOp? defaultValue,
]) {
  return enums.SalespackagesGetCpIdOp.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          salespackagesGetCpIdOp?.toString().toLowerCase()) ??
      defaultValue ??
      enums.SalespackagesGetCpIdOp.swaggerGeneratedUnknown;
}

enums.SalespackagesGetCpIdOp? salespackagesGetCpIdOpNullableFromJson(
  Object? salespackagesGetCpIdOp, [
  enums.SalespackagesGetCpIdOp? defaultValue,
]) {
  if (salespackagesGetCpIdOp == null) {
    return null;
  }
  return enums.SalespackagesGetCpIdOp.values
          .firstWhereOrNull((e) => e.value == salespackagesGetCpIdOp) ??
      defaultValue;
}

String salespackagesGetCpIdOpExplodedListToJson(
    List<enums.SalespackagesGetCpIdOp>? salespackagesGetCpIdOp) {
  return salespackagesGetCpIdOp?.map((e) => e.value!).join(',') ?? '';
}

List<String> salespackagesGetCpIdOpListToJson(
    List<enums.SalespackagesGetCpIdOp>? salespackagesGetCpIdOp) {
  if (salespackagesGetCpIdOp == null) {
    return [];
  }

  return salespackagesGetCpIdOp.map((e) => e.value!).toList();
}

List<enums.SalespackagesGetCpIdOp> salespackagesGetCpIdOpListFromJson(
  List? salespackagesGetCpIdOp, [
  List<enums.SalespackagesGetCpIdOp>? defaultValue,
]) {
  if (salespackagesGetCpIdOp == null) {
    return defaultValue ?? [];
  }

  return salespackagesGetCpIdOp
      .map((e) => salespackagesGetCpIdOpFromJson(e.toString()))
      .toList();
}

List<enums.SalespackagesGetCpIdOp>? salespackagesGetCpIdOpNullableListFromJson(
  List? salespackagesGetCpIdOp, [
  List<enums.SalespackagesGetCpIdOp>? defaultValue,
]) {
  if (salespackagesGetCpIdOp == null) {
    return defaultValue;
  }

  return salespackagesGetCpIdOp
      .map((e) => salespackagesGetCpIdOpFromJson(e.toString()))
      .toList();
}

String? extendedDistanceMatrixGetServiceModeNullableToJson(
    enums.ExtendedDistanceMatrixGetServiceMode?
        extendedDistanceMatrixGetServiceMode) {
  return extendedDistanceMatrixGetServiceMode?.value;
}

String? extendedDistanceMatrixGetServiceModeToJson(
    enums.ExtendedDistanceMatrixGetServiceMode
        extendedDistanceMatrixGetServiceMode) {
  return extendedDistanceMatrixGetServiceMode.value;
}

enums.ExtendedDistanceMatrixGetServiceMode
    extendedDistanceMatrixGetServiceModeFromJson(
  Object? extendedDistanceMatrixGetServiceMode, [
  enums.ExtendedDistanceMatrixGetServiceMode? defaultValue,
]) {
  return enums.ExtendedDistanceMatrixGetServiceMode.values.firstWhereOrNull(
          (e) =>
              e.value.toString().toLowerCase() ==
              extendedDistanceMatrixGetServiceMode?.toString().toLowerCase()) ??
      defaultValue ??
      enums.ExtendedDistanceMatrixGetServiceMode.swaggerGeneratedUnknown;
}

enums.ExtendedDistanceMatrixGetServiceMode?
    extendedDistanceMatrixGetServiceModeNullableFromJson(
  Object? extendedDistanceMatrixGetServiceMode, [
  enums.ExtendedDistanceMatrixGetServiceMode? defaultValue,
]) {
  if (extendedDistanceMatrixGetServiceMode == null) {
    return null;
  }
  return enums.ExtendedDistanceMatrixGetServiceMode.values.firstWhereOrNull(
          (e) => e.value == extendedDistanceMatrixGetServiceMode) ??
      defaultValue;
}

String extendedDistanceMatrixGetServiceModeExplodedListToJson(
    List<enums.ExtendedDistanceMatrixGetServiceMode>?
        extendedDistanceMatrixGetServiceMode) {
  return extendedDistanceMatrixGetServiceMode?.map((e) => e.value!).join(',') ??
      '';
}

List<String> extendedDistanceMatrixGetServiceModeListToJson(
    List<enums.ExtendedDistanceMatrixGetServiceMode>?
        extendedDistanceMatrixGetServiceMode) {
  if (extendedDistanceMatrixGetServiceMode == null) {
    return [];
  }

  return extendedDistanceMatrixGetServiceMode.map((e) => e.value!).toList();
}

List<enums.ExtendedDistanceMatrixGetServiceMode>
    extendedDistanceMatrixGetServiceModeListFromJson(
  List? extendedDistanceMatrixGetServiceMode, [
  List<enums.ExtendedDistanceMatrixGetServiceMode>? defaultValue,
]) {
  if (extendedDistanceMatrixGetServiceMode == null) {
    return defaultValue ?? [];
  }

  return extendedDistanceMatrixGetServiceMode
      .map((e) => extendedDistanceMatrixGetServiceModeFromJson(e.toString()))
      .toList();
}

List<enums.ExtendedDistanceMatrixGetServiceMode>?
    extendedDistanceMatrixGetServiceModeNullableListFromJson(
  List? extendedDistanceMatrixGetServiceMode, [
  List<enums.ExtendedDistanceMatrixGetServiceMode>? defaultValue,
]) {
  if (extendedDistanceMatrixGetServiceMode == null) {
    return defaultValue;
  }

  return extendedDistanceMatrixGetServiceMode
      .map((e) => extendedDistanceMatrixGetServiceModeFromJson(e.toString()))
      .toList();
}

String? extendedDistanceMatrixLocationGetLocationTypeNullableToJson(
    enums.ExtendedDistanceMatrixLocationGetLocationType?
        extendedDistanceMatrixLocationGetLocationType) {
  return extendedDistanceMatrixLocationGetLocationType?.value;
}

String? extendedDistanceMatrixLocationGetLocationTypeToJson(
    enums.ExtendedDistanceMatrixLocationGetLocationType
        extendedDistanceMatrixLocationGetLocationType) {
  return extendedDistanceMatrixLocationGetLocationType.value;
}

enums.ExtendedDistanceMatrixLocationGetLocationType
    extendedDistanceMatrixLocationGetLocationTypeFromJson(
  Object? extendedDistanceMatrixLocationGetLocationType, [
  enums.ExtendedDistanceMatrixLocationGetLocationType? defaultValue,
]) {
  return enums.ExtendedDistanceMatrixLocationGetLocationType.values
          .firstWhereOrNull((e) =>
              e.value.toString().toLowerCase() ==
              extendedDistanceMatrixLocationGetLocationType
                  ?.toString()
                  .toLowerCase()) ??
      defaultValue ??
      enums.ExtendedDistanceMatrixLocationGetLocationType
          .swaggerGeneratedUnknown;
}

enums.ExtendedDistanceMatrixLocationGetLocationType?
    extendedDistanceMatrixLocationGetLocationTypeNullableFromJson(
  Object? extendedDistanceMatrixLocationGetLocationType, [
  enums.ExtendedDistanceMatrixLocationGetLocationType? defaultValue,
]) {
  if (extendedDistanceMatrixLocationGetLocationType == null) {
    return null;
  }
  return enums.ExtendedDistanceMatrixLocationGetLocationType.values
          .firstWhereOrNull((e) =>
              e.value == extendedDistanceMatrixLocationGetLocationType) ??
      defaultValue;
}

String extendedDistanceMatrixLocationGetLocationTypeExplodedListToJson(
    List<enums.ExtendedDistanceMatrixLocationGetLocationType>?
        extendedDistanceMatrixLocationGetLocationType) {
  return extendedDistanceMatrixLocationGetLocationType
          ?.map((e) => e.value!)
          .join(',') ??
      '';
}

List<String> extendedDistanceMatrixLocationGetLocationTypeListToJson(
    List<enums.ExtendedDistanceMatrixLocationGetLocationType>?
        extendedDistanceMatrixLocationGetLocationType) {
  if (extendedDistanceMatrixLocationGetLocationType == null) {
    return [];
  }

  return extendedDistanceMatrixLocationGetLocationType
      .map((e) => e.value!)
      .toList();
}

List<enums.ExtendedDistanceMatrixLocationGetLocationType>
    extendedDistanceMatrixLocationGetLocationTypeListFromJson(
  List? extendedDistanceMatrixLocationGetLocationType, [
  List<enums.ExtendedDistanceMatrixLocationGetLocationType>? defaultValue,
]) {
  if (extendedDistanceMatrixLocationGetLocationType == null) {
    return defaultValue ?? [];
  }

  return extendedDistanceMatrixLocationGetLocationType
      .map((e) =>
          extendedDistanceMatrixLocationGetLocationTypeFromJson(e.toString()))
      .toList();
}

List<enums.ExtendedDistanceMatrixLocationGetLocationType>?
    extendedDistanceMatrixLocationGetLocationTypeNullableListFromJson(
  List? extendedDistanceMatrixLocationGetLocationType, [
  List<enums.ExtendedDistanceMatrixLocationGetLocationType>? defaultValue,
]) {
  if (extendedDistanceMatrixLocationGetLocationType == null) {
    return defaultValue;
  }

  return extendedDistanceMatrixLocationGetLocationType
      .map((e) =>
          extendedDistanceMatrixLocationGetLocationTypeFromJson(e.toString()))
      .toList();
}

String? searchTransactionsGetTransactionTypeNullableToJson(
    enums.SearchTransactionsGetTransactionType?
        searchTransactionsGetTransactionType) {
  return searchTransactionsGetTransactionType?.value;
}

String? searchTransactionsGetTransactionTypeToJson(
    enums.SearchTransactionsGetTransactionType
        searchTransactionsGetTransactionType) {
  return searchTransactionsGetTransactionType.value;
}

enums.SearchTransactionsGetTransactionType
    searchTransactionsGetTransactionTypeFromJson(
  Object? searchTransactionsGetTransactionType, [
  enums.SearchTransactionsGetTransactionType? defaultValue,
]) {
  return enums.SearchTransactionsGetTransactionType.values.firstWhereOrNull(
          (e) =>
              e.value.toString().toLowerCase() ==
              searchTransactionsGetTransactionType?.toString().toLowerCase()) ??
      defaultValue ??
      enums.SearchTransactionsGetTransactionType.swaggerGeneratedUnknown;
}

enums.SearchTransactionsGetTransactionType?
    searchTransactionsGetTransactionTypeNullableFromJson(
  Object? searchTransactionsGetTransactionType, [
  enums.SearchTransactionsGetTransactionType? defaultValue,
]) {
  if (searchTransactionsGetTransactionType == null) {
    return null;
  }
  return enums.SearchTransactionsGetTransactionType.values.firstWhereOrNull(
          (e) => e.value == searchTransactionsGetTransactionType) ??
      defaultValue;
}

String searchTransactionsGetTransactionTypeExplodedListToJson(
    List<enums.SearchTransactionsGetTransactionType>?
        searchTransactionsGetTransactionType) {
  return searchTransactionsGetTransactionType?.map((e) => e.value!).join(',') ??
      '';
}

List<String> searchTransactionsGetTransactionTypeListToJson(
    List<enums.SearchTransactionsGetTransactionType>?
        searchTransactionsGetTransactionType) {
  if (searchTransactionsGetTransactionType == null) {
    return [];
  }

  return searchTransactionsGetTransactionType.map((e) => e.value!).toList();
}

List<enums.SearchTransactionsGetTransactionType>
    searchTransactionsGetTransactionTypeListFromJson(
  List? searchTransactionsGetTransactionType, [
  List<enums.SearchTransactionsGetTransactionType>? defaultValue,
]) {
  if (searchTransactionsGetTransactionType == null) {
    return defaultValue ?? [];
  }

  return searchTransactionsGetTransactionType
      .map((e) => searchTransactionsGetTransactionTypeFromJson(e.toString()))
      .toList();
}

List<enums.SearchTransactionsGetTransactionType>?
    searchTransactionsGetTransactionTypeNullableListFromJson(
  List? searchTransactionsGetTransactionType, [
  List<enums.SearchTransactionsGetTransactionType>? defaultValue,
]) {
  if (searchTransactionsGetTransactionType == null) {
    return defaultValue;
  }

  return searchTransactionsGetTransactionType
      .map((e) => searchTransactionsGetTransactionTypeFromJson(e.toString()))
      .toList();
}

String? searchTransactionsGetTransactionResultNullableToJson(
    enums.SearchTransactionsGetTransactionResult?
        searchTransactionsGetTransactionResult) {
  return searchTransactionsGetTransactionResult?.value;
}

String? searchTransactionsGetTransactionResultToJson(
    enums.SearchTransactionsGetTransactionResult
        searchTransactionsGetTransactionResult) {
  return searchTransactionsGetTransactionResult.value;
}

enums.SearchTransactionsGetTransactionResult
    searchTransactionsGetTransactionResultFromJson(
  Object? searchTransactionsGetTransactionResult, [
  enums.SearchTransactionsGetTransactionResult? defaultValue,
]) {
  return enums.SearchTransactionsGetTransactionResult.values.firstWhereOrNull(
          (e) =>
              e.value.toString().toLowerCase() ==
              searchTransactionsGetTransactionResult
                  ?.toString()
                  .toLowerCase()) ??
      defaultValue ??
      enums.SearchTransactionsGetTransactionResult.swaggerGeneratedUnknown;
}

enums.SearchTransactionsGetTransactionResult?
    searchTransactionsGetTransactionResultNullableFromJson(
  Object? searchTransactionsGetTransactionResult, [
  enums.SearchTransactionsGetTransactionResult? defaultValue,
]) {
  if (searchTransactionsGetTransactionResult == null) {
    return null;
  }
  return enums.SearchTransactionsGetTransactionResult.values.firstWhereOrNull(
          (e) => e.value == searchTransactionsGetTransactionResult) ??
      defaultValue;
}

String searchTransactionsGetTransactionResultExplodedListToJson(
    List<enums.SearchTransactionsGetTransactionResult>?
        searchTransactionsGetTransactionResult) {
  return searchTransactionsGetTransactionResult
          ?.map((e) => e.value!)
          .join(',') ??
      '';
}

List<String> searchTransactionsGetTransactionResultListToJson(
    List<enums.SearchTransactionsGetTransactionResult>?
        searchTransactionsGetTransactionResult) {
  if (searchTransactionsGetTransactionResult == null) {
    return [];
  }

  return searchTransactionsGetTransactionResult.map((e) => e.value!).toList();
}

List<enums.SearchTransactionsGetTransactionResult>
    searchTransactionsGetTransactionResultListFromJson(
  List? searchTransactionsGetTransactionResult, [
  List<enums.SearchTransactionsGetTransactionResult>? defaultValue,
]) {
  if (searchTransactionsGetTransactionResult == null) {
    return defaultValue ?? [];
  }

  return searchTransactionsGetTransactionResult
      .map((e) => searchTransactionsGetTransactionResultFromJson(e.toString()))
      .toList();
}

List<enums.SearchTransactionsGetTransactionResult>?
    searchTransactionsGetTransactionResultNullableListFromJson(
  List? searchTransactionsGetTransactionResult, [
  List<enums.SearchTransactionsGetTransactionResult>? defaultValue,
]) {
  if (searchTransactionsGetTransactionResult == null) {
    return defaultValue;
  }

  return searchTransactionsGetTransactionResult
      .map((e) => searchTransactionsGetTransactionResultFromJson(e.toString()))
      .toList();
}

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
