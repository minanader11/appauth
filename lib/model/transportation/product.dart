import 'dart:core';

import 'package:json_annotation/json_annotation.dart';

//class generated with a web tool. Use if you don't want to use swagger_dart_code_generator
@JsonSerializable(explicitToJson: true)
class Product {
  Product({
    required this.productId,
    required this.productVersion,
    required this.productName,
    required this.productType,
    required this.customerNumber,
    required this.sellers,
    required this.productTypeDesc,
    required this.productStartValidity,
    required this.productEndValidity,
    this.deadline,
    this.advanceSale,
    required this.codeExternal,
    required this.notSoldSeparately,
    required this.scopingValidityParameters,
    required this.temporalValidityParameters,
    required this.usageParameters,
    required this.scopingGeographicalParameters,
    required this.distributionTouchPoints,
    required this.promotions,
    required this.mediaSet,
    required this.fareTable,
    required this.fareFrame,
    required this.roundTrip,
    required this.bookingIsNeeded,
    required this.genericParameters,
    required this.noteProdInfo,
  });
  late final String productId;
  late final int productVersion;
  late final String productName;
  late final String productType;
  late final int customerNumber;
  late final List<Sellers> sellers;
  late final String productTypeDesc;
  late final String productStartValidity;
  late final String productEndValidity;
  late final int? deadline;
  late final int? advanceSale;
  late final String codeExternal;
  late final bool notSoldSeparately;
  late final ScopingValidityParameters scopingValidityParameters;
  late final List<TemporalValidityParameters> temporalValidityParameters;
  late final UsageParameters usageParameters;
  late final ScopingGeographicalParameters scopingGeographicalParameters;
  late final List<DistributionTouchPoints> distributionTouchPoints;
  late final List<dynamic> promotions;
  late final List<MediaSet> mediaSet;
  late final FareTable fareTable;
  late final FareFrame fareFrame;
  late final bool roundTrip;
  late final bool bookingIsNeeded;
  late final List<GenericParameters> genericParameters;
  late final String noteProdInfo;

  Product.fromJson(Map<String, dynamic> json){
    productId = json['productId'];
    productVersion = json['productVersion'];
    productName = json['productName'];
    productType = json['productType'];
    customerNumber = json['customerNumber'];
    sellers = List.from(json['sellers']).map((e)=>Sellers.fromJson(e)).toList();
    productTypeDesc = json['productTypeDesc'];
    productStartValidity = json['productStartValidity'];
    productEndValidity = json['productEndValidity'];
    deadline = json['deadline'];
    advanceSale = json['advanceSale'];
    codeExternal = json['codeExternal'];
    notSoldSeparately = json['notSoldSeparately'];
    scopingValidityParameters = ScopingValidityParameters.fromJson(json['scopingValidityParameters']);
    temporalValidityParameters = List.from(json['temporalValidityParameters']).map((e)=>TemporalValidityParameters.fromJson(e)).toList();
    usageParameters = UsageParameters.fromJson(json['usageParameters']);
    scopingGeographicalParameters = ScopingGeographicalParameters.fromJson(json['scopingGeographicalParameters']);
    distributionTouchPoints = List.from(json['distributionTouchPoints']).map((e)=>DistributionTouchPoints.fromJson(e)).toList();
    promotions = List.castFrom<dynamic, dynamic>(json['promotions']);
    mediaSet = List.from(json['mediaSet']).map((e)=>MediaSet.fromJson(e)).toList();
    fareTable = FareTable.fromJson(json['fareTable']);
    fareFrame = FareFrame.fromJson(json['fareFrame']);
    roundTrip = json['roundTrip'];
    bookingIsNeeded = json['bookingIsNeeded'];
    genericParameters = List.from(json['genericParameters']).map((e)=>GenericParameters.fromJson(e)).toList();
    noteProdInfo = json['noteProdInfo'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['productId'] = productId;
    data['productVersion'] = productVersion;
    data['productName'] = productName;
    data['productType'] = productType;
    data['customerNumber'] = customerNumber;
    data['sellers'] = sellers.map((e)=>e.toJson()).toList();
    data['productTypeDesc'] = productTypeDesc;
    data['productStartValidity'] = productStartValidity;
    data['productEndValidity'] = productEndValidity;
    data['deadline'] = deadline;
    data['advanceSale'] = advanceSale;
    data['codeExternal'] = codeExternal;
    data['notSoldSeparately'] = notSoldSeparately;
    data['scopingValidityParameters'] = scopingValidityParameters.toJson();
    data['temporalValidityParameters'] = temporalValidityParameters.map((e)=>e.toJson()).toList();
    data['usageParameters'] = usageParameters.toJson();
    data['scopingGeographicalParameters'] = scopingGeographicalParameters.toJson();
    data['distributionTouchPoints'] = distributionTouchPoints.map((e)=>e.toJson()).toList();
    data['promotions'] = promotions;
    data['mediaSet'] = mediaSet.map((e)=>e.toJson()).toList();
    data['fareTable'] = fareTable.toJson();
    data['fareFrame'] = fareFrame.toJson();
    data['roundTrip'] = roundTrip;
    data['bookingIsNeeded'] = bookingIsNeeded;
    data['genericParameters'] = genericParameters.map((e)=>e.toJson()).toList();
    data['noteProdInfo'] = noteProdInfo;
    return data;
  }
}

@JsonSerializable(explicitToJson: true)
class Sellers {
  Sellers({
    required this.id,
    this.name,
  });
  late final String id;
  late final String? name;

  Sellers.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}

@JsonSerializable(explicitToJson: true)
class ScopingValidityParameters {
  ScopingValidityParameters({
    required this.services,
    required this.fareZones,
  });
  late final List<Services> services;
  late final List<FareZones> fareZones;

  ScopingValidityParameters.fromJson(Map<String, dynamic> json){
    services = List.from(json['services']).map((e)=>Services.fromJson(e)).toList();
    fareZones = List.from(json['fareZones']).map((e)=>FareZones.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['services'] = services.map((e)=>e.toJson()).toList();
    data['fareZones'] = fareZones.map((e)=>e.toJson()).toList();
    return data;
  }
}

@JsonSerializable(explicitToJson: true)
class Services {
  Services({
    required this.scopingValidityParameterId,
    required this.scopingValidityParameterName,
    required this.scopingValidityClassificationCode,
    required this.scopingValidityParameterType,
    required this.scopingValidityTransportModeCode,
    required this.codeExternal,
    required this.serviceOrganisationRef,
  });
  late final String scopingValidityParameterId;
  late final String scopingValidityParameterName;
  late final String scopingValidityClassificationCode;
  late final String scopingValidityParameterType;
  late final String scopingValidityTransportModeCode;
  late final String codeExternal;
  late final String serviceOrganisationRef;

  Services.fromJson(Map<String, dynamic> json){
    scopingValidityParameterId = json['scopingValidityParameterId'];
    scopingValidityParameterName = json['scopingValidityParameterName'];
    scopingValidityClassificationCode = json['scopingValidityClassificationCode'];
    scopingValidityParameterType = json['scopingValidityParameterType'];
    scopingValidityTransportModeCode = json['scopingValidityTransportModeCode'];
    codeExternal = json['codeExternal'];
    serviceOrganisationRef = json['serviceOrganisationRef'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['scopingValidityParameterId'] = scopingValidityParameterId;
    data['scopingValidityParameterName'] = scopingValidityParameterName;
    data['scopingValidityClassificationCode'] = scopingValidityClassificationCode;
    data['scopingValidityParameterType'] = scopingValidityParameterType;
    data['scopingValidityTransportModeCode'] = scopingValidityTransportModeCode;
    data['codeExternal'] = codeExternal;
    data['serviceOrganisationRef'] = serviceOrganisationRef;
    return data;
  }
}

@JsonSerializable(explicitToJson: true)
class FareZones {
  FareZones({
    required this.scopingValidityParameterId,
    required this.scopingValidityParameterName,
    required this.scopingValidityParameterType,
    this.permutationKNumber,
    this.groupType,
    required this.zones,
  });
  late final String scopingValidityParameterId;
  late final String scopingValidityParameterName;
  late final String scopingValidityParameterType;
  late final int? permutationKNumber;
  late final int? groupType;
  late final List<dynamic> zones;

  FareZones.fromJson(Map<String, dynamic> json){
    scopingValidityParameterId = json['scopingValidityParameterId'];
    scopingValidityParameterName = json['scopingValidityParameterName'];
    scopingValidityParameterType = json['scopingValidityParameterType'];
    permutationKNumber = json['permutationKNumber'];
    groupType = json['groupType'];
    zones = List.castFrom<dynamic, dynamic>(json['zones']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['scopingValidityParameterId'] = scopingValidityParameterId;
    data['scopingValidityParameterName'] = scopingValidityParameterName;
    data['scopingValidityParameterType'] = scopingValidityParameterType;
    data['permutationKNumber'] = permutationKNumber;
    data['groupType'] = groupType;
    data['zones'] = zones;
    return data;
  }
}

@JsonSerializable(explicitToJson: true)
class TemporalValidityParameters {
  TemporalValidityParameters({
    required this.temporalValidityParameterId,
    this.temporalValidityParameterName,
    required this.dayType,
    required this.datetimeBands,
  });
  late final String temporalValidityParameterId;
  late final String? temporalValidityParameterName;
  late final DayType dayType;
  late final List<dynamic> datetimeBands;

  TemporalValidityParameters.fromJson(Map<String, dynamic> json){
    temporalValidityParameterId = json['temporalValidityParameterId'];
    temporalValidityParameterName = json['temporalValidityParameterName'];
    dayType = DayType.fromJson(json['dayType']);
    datetimeBands = List.castFrom<dynamic, dynamic>(json['datetimeBands']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['temporalValidityParameterId'] = temporalValidityParameterId;
    data['temporalValidityParameterName'] = temporalValidityParameterName;
    data['dayType'] = dayType.toJson();
    data['datetimeBands'] = datetimeBands;
    return data;
  }
}

@JsonSerializable(explicitToJson: true)
class DayType {
  DayType({
    required this.name,
    required this.dayTypeId,
    required this.properties,
  });
  late final String name;
  late final String dayTypeId;
  late final String properties;

  DayType.fromJson(Map<String, dynamic> json){
    name = json['name'];
    dayTypeId = json['dayTypeId'];
    properties = json['properties'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['dayTypeId'] = dayTypeId;
    data['properties'] = properties;
    return data;
  }
}

@JsonSerializable(explicitToJson: true)
class UsageParameters {
  UsageParameters({
    required this.validityPeriods,
    required this.customerProfiles,
    required this.frequenciesOfUse,
    required this.luggageSetAllowance,
    required this.transferability,
  });
  late final List<ValidityPeriods> validityPeriods;
  late final List<CustomerProfiles> customerProfiles;
  late final List<FrequenciesOfUse> frequenciesOfUse;
  late final List<dynamic> luggageSetAllowance;
  late final Transferability transferability;

  UsageParameters.fromJson(Map<String, dynamic> json){
    validityPeriods = List.from(json['validityPeriods']).map((e)=>ValidityPeriods.fromJson(e)).toList();
    customerProfiles = List.from(json['customerProfiles']).map((e)=>CustomerProfiles.fromJson(e)).toList();
    frequenciesOfUse = List.from(json['frequenciesOfUse']).map((e)=>FrequenciesOfUse.fromJson(e)).toList();
    luggageSetAllowance = List.castFrom<dynamic, dynamic>(json['luggageSetAllowance']);
    transferability = Transferability.fromJson(json['transferability']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['validityPeriods'] = validityPeriods.map((e)=>e.toJson()).toList();
    data['customerProfiles'] = customerProfiles.map((e)=>e.toJson()).toList();
    data['frequenciesOfUse'] = frequenciesOfUse.map((e)=>e.toJson()).toList();
    data['luggageSetAllowance'] = luggageSetAllowance;
    data['transferability'] = transferability.toJson();
    return data;
  }
}

@JsonSerializable(explicitToJson: true)
class ValidityPeriods {
  ValidityPeriods({
    required this.usageParameterId,
    required this.usageParameterName,
    required this.typeUsageParameter,
    required this.validityPeriodName,
    required this.validityPeriodType,
    required this.standardDuration,
    required this.trigger,
  });
  late final String usageParameterId;
  late final String usageParameterName;
  late final String typeUsageParameter;
  late final String validityPeriodName;
  late final String validityPeriodType;
  late final int standardDuration;
  late final Trigger trigger;

  ValidityPeriods.fromJson(Map<String, dynamic> json){
    usageParameterId = json['usageParameterId'];
    usageParameterName = json['usageParameterName'];
    typeUsageParameter = json['typeUsageParameter'];
    validityPeriodName = json['validityPeriodName'];
    validityPeriodType = json['validityPeriodType'];
    standardDuration = json['standardDuration'];
    trigger = Trigger.fromJson(json['trigger']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['usageParameterId'] = usageParameterId;
    data['usageParameterName'] = usageParameterName;
    data['typeUsageParameter'] = typeUsageParameter;
    data['validityPeriodName'] = validityPeriodName;
    data['validityPeriodType'] = validityPeriodType;
    data['standardDuration'] = standardDuration;
    data['trigger'] = trigger.toJson();
    return data;
  }
}

@JsonSerializable(explicitToJson: true)
class Trigger {
  Trigger({
    required this.usageTriggerType,
    this.startValidation,
    this.usageTriggerPeriod,
  });
  late final String usageTriggerType;
  late final String? startValidation;
  late final String? usageTriggerPeriod;

  Trigger.fromJson(Map<String, dynamic> json){
    usageTriggerType = json['usageTriggerType'];
    startValidation = json['startValidation'];
    usageTriggerPeriod = json['usageTriggerPeriod'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['usageTriggerType'] = usageTriggerType;
    data['startValidation'] = startValidation;
    data['usageTriggerPeriod'] = usageTriggerPeriod;
    return data;
  }
}

@JsonSerializable(explicitToJson: true)
class CustomerProfiles {
  CustomerProfiles({
    required this.usageParameterId,
    required this.usageParameterName,
    required this.typeUsageParameter,
    this.minimumAge,
    this.maximumAge,
    this.minimumHeight,
    this.maximumHeight,
    this.minimumIncome,
    this.maximumIncome,
    required this.localResident,
  });
  late final String usageParameterId;
  late final String usageParameterName;
  late final String typeUsageParameter;
  late final int? minimumAge;
  late final int? maximumAge;
  late final int? minimumHeight;
  late final int? maximumHeight;
  late final double? minimumIncome;
  late final double? maximumIncome;
  late final int? localResident;

  CustomerProfiles.fromJson(Map<String, dynamic> json){
    usageParameterId = json['usageParameterId'];
    usageParameterName = json['usageParameterName'];
    typeUsageParameter = json['typeUsageParameter'];
    minimumAge = json['minimumAge'];
    maximumAge = json['maximumAge'];
    minimumHeight = json['minimumHeight'];
    maximumHeight = json['maximumHeight'];
    minimumIncome = json['minimumIncome'];
    maximumIncome = json['maximumIncome'];
    localResident = json['localResident'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['usageParameterId'] = usageParameterId;
    data['usageParameterName'] = usageParameterName;
    data['typeUsageParameter'] = typeUsageParameter;
    data['minimumAge'] = minimumAge;
    data['maximumAge'] = maximumAge;
    data['minimumHeight'] = minimumHeight;
    data['maximumHeight'] = maximumHeight;
    data['minimumIncome'] = minimumIncome;
    data['maximumIncome'] = maximumIncome;
    data['localResident'] = localResident;
    return data;
  }
}

@JsonSerializable(explicitToJson: true)
class FrequenciesOfUse {
  FrequenciesOfUse({
    required this.usageParameterId,
    required this.usageParameterName,
    required this.typeUsageParameter,
    required this.maximalFrequency,
    required this.minimalFrequency,
    required this.service,
  });
  late final String usageParameterId;
  late final String usageParameterName;
  late final String typeUsageParameter;
  late final int maximalFrequency;
  late final int minimalFrequency;
  late final Service service;

  FrequenciesOfUse.fromJson(Map<String, dynamic> json){
    usageParameterId = json['usageParameterId'];
    usageParameterName = json['usageParameterName'];
    typeUsageParameter = json['typeUsageParameter'];
    maximalFrequency = json['maximalFrequency'];
    minimalFrequency = json['minimalFrequency'];
    service = Service.fromJson(json['service']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['usageParameterId'] = usageParameterId;
    data['usageParameterName'] = usageParameterName;
    data['typeUsageParameter'] = typeUsageParameter;
    data['maximalFrequency'] = maximalFrequency;
    data['minimalFrequency'] = minimalFrequency;
    data['service'] = service.toJson();
    return data;
  }
}

@JsonSerializable(explicitToJson: true)
class Service {
  Service({
    required this.serviceId,
    required this.serviceName,
    required this.serviceOrganisationRef,
    this.transportModeCode,
    this.serviceRestriction,
  });
  late final String serviceId;
  late final String serviceName;
  late final String serviceOrganisationRef;
  late final String? transportModeCode;
  late final String? serviceRestriction;

  Service.fromJson(Map<String, dynamic> json){
    serviceId = json['serviceId'];
    serviceName = json['serviceName'];
    serviceOrganisationRef = json['serviceOrganisationRef'];
    transportModeCode = json['transportModeCode'];
    serviceRestriction = json['serviceRestriction'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['serviceId'] = serviceId;
    data['serviceName'] = serviceName;
    data['serviceOrganisationRef'] = serviceOrganisationRef;
    data['transportModeCode'] = transportModeCode;
    data['serviceRestriction'] = serviceRestriction;
    return data;
  }
}

@JsonSerializable(explicitToJson: true)
class Transferability {
  Transferability({
    required this.usageParameterId,
    required this.usageParameterName,
    this.typeUsageParameter,
    required this.canTransfer,
    this.maximumNumberOfNamedTransferees,
  });
  late final String usageParameterId;
  late final String usageParameterName;
  late final String? typeUsageParameter;
  late final bool canTransfer;
  late final int? maximumNumberOfNamedTransferees;

  Transferability.fromJson(Map<String, dynamic> json){
    usageParameterId = json['usageParameterId'];
    usageParameterName = json['usageParameterName'];
    typeUsageParameter = json['typeUsageParameter'];
    canTransfer = json['canTransfer'];
    maximumNumberOfNamedTransferees = json['maximumNumberOfNamedTransferees'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['usageParameterId'] = usageParameterId;
    data['usageParameterName'] = usageParameterName;
    data['typeUsageParameter'] = typeUsageParameter;
    data['canTransfer'] = canTransfer;
    data['maximumNumberOfNamedTransferees'] = maximumNumberOfNamedTransferees;
    return data;
  }
}

@JsonSerializable(explicitToJson: true)
class ScopingGeographicalParameters {
  ScopingGeographicalParameters({
    required this.geographicalIntervals,
    required this.distanceMatrixElements,
  });
  late final List<dynamic> geographicalIntervals;
  late final List<dynamic> distanceMatrixElements;

  ScopingGeographicalParameters.fromJson(Map<String, dynamic> json){
    geographicalIntervals = List.castFrom<dynamic, dynamic>(json['geographicalIntervals']);
    distanceMatrixElements = List.castFrom<dynamic, dynamic>(json['distanceMatrixElements']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['geographicalIntervals'] = geographicalIntervals;
    data['distanceMatrixElements'] = distanceMatrixElements;
    return data;
  }
}

@JsonSerializable(explicitToJson: true)
class DistributionTouchPoints {
  DistributionTouchPoints({
    required this.touchPoints,
    required this.endValidity,
    required this.startValidity,
    required this.distributionAssignmentId,
    required this.distributionTouchpointType,
  });
  late final List<dynamic> touchPoints;
  late final String endValidity;
  late final String startValidity;
  late final String distributionAssignmentId;
  late final String distributionTouchpointType;

  DistributionTouchPoints.fromJson(Map<String, dynamic> json){
    touchPoints = List.castFrom<dynamic, dynamic>(json['touchPoints']);
    endValidity = json['endValidity'];
    startValidity = json['startValidity'];
    distributionAssignmentId = json['distributionAssignmentId'];
    distributionTouchpointType = json['distributionTouchpointType'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['touchPoints'] = touchPoints;
    data['endValidity'] = endValidity;
    data['startValidity'] = startValidity;
    data['distributionAssignmentId'] = distributionAssignmentId;
    data['distributionTouchpointType'] = distributionTouchpointType;
    return data;
  }
}

@JsonSerializable(explicitToJson: true)
class MediaSet {
  MediaSet({
    required this.mediaTypeRef,
    required this.mediaAssignmentId,
    required this.endValidity,
    required this.startValidity,
  });
  late final MediaTypeRef mediaTypeRef;
  late final String mediaAssignmentId;
  late final String endValidity;
  late final String startValidity;

  MediaSet.fromJson(Map<String, dynamic> json){
    mediaTypeRef = MediaTypeRef.fromJson(json['mediaTypeRef']);
    mediaAssignmentId = json['mediaAssignmentId'];
    endValidity = json['endValidity'];
    startValidity = json['startValidity'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['mediaTypeRef'] = mediaTypeRef.toJson();
    data['mediaAssignmentId'] = mediaAssignmentId;
    data['endValidity'] = endValidity;
    data['startValidity'] = startValidity;
    return data;
  }
}

@JsonSerializable(explicitToJson: true)
class MediaTypeRef {
  MediaTypeRef({
    this.mediaType,
    this.descriptionType,
});
late final String? mediaType;
late final String? descriptionType;

MediaTypeRef.fromJson(Map<String, dynamic> json){
mediaType = json['mediaType'];
descriptionType = json['descriptionType'];
}

Map<String, dynamic> toJson() {
final data = <String, dynamic>{};
data['mediaType'] = mediaType;
data['descriptionType'] = descriptionType;

return data;
}
}

@JsonSerializable(explicitToJson: true)
class FareTable {
FareTable({
required this.cells,
});
late final List<Cells> cells;

FareTable.fromJson(Map<String, dynamic> json){
cells = List.from(json['cells']).map((e)=>Cells.fromJson(e)).toList();
}

Map<String, dynamic> toJson() {
final data = <String, dynamic>{};
data['cells'] = cells.map((e)=>e.toJson()).toList();
return data;
}
}

@JsonSerializable(explicitToJson: true)
class Cells {
Cells({
required this.cellId,
this.cellName,
required this.ccyPrice,
required this.farePrice,
this.points,
required this.priceFor,
});
late final String cellId;
late final String? cellName;
late final String ccyPrice;
late final double? farePrice;
late final int? points;
late final PriceFor priceFor;

Cells.fromJson(Map<String, dynamic> json){
cellId = json['cellId'];
cellName = json['cellName'];
ccyPrice = json['ccyPrice'];
farePrice = json['farePrice'];
points = json['points'];
priceFor = PriceFor.fromJson(json['priceFor']);
}

Map<String, dynamic> toJson() {
final data = <String, dynamic>{};
data['cellId'] = cellId;
data['cellName'] = cellName;
data['ccyPrice'] = ccyPrice;
data['farePrice'] = farePrice;
data['points'] = points;
data['priceFor'] = priceFor.toJson();
return data;
}
}

@JsonSerializable(explicitToJson: true)
class PriceFor {
PriceFor({
required this.serviceRef,
required this.fareZoneRef,
required this.validityPeriodRef,
required this.customerProfileRef,
required this.distributionTouchPointRef,
required this.geographicalIntervalRef,
required this.distanceMatrixRef,
required this.mediaTypeRef,
required this.temporalValidityRef,
});
late final ServiceRef serviceRef;
late final FareZoneRef fareZoneRef;
late final ValidityPeriodRef validityPeriodRef;
late final CustomerProfileRef customerProfileRef;
late final DistributionTouchPointRef distributionTouchPointRef;
late final GeographicalIntervalRef geographicalIntervalRef;
late final DistanceMatrixRef distanceMatrixRef;
late final MediaTypeRef mediaTypeRef;
late final TemporalValidityRef temporalValidityRef;

PriceFor.fromJson(Map<String, dynamic> json){
serviceRef = ServiceRef.fromJson(json['serviceRef']);
fareZoneRef = FareZoneRef.fromJson(json['fareZoneRef']);
validityPeriodRef = ValidityPeriodRef.fromJson(json['validityPeriodRef']);
customerProfileRef = CustomerProfileRef.fromJson(json['customerProfileRef']);
distributionTouchPointRef = DistributionTouchPointRef.fromJson(json['distributionTouchPointRef']);
geographicalIntervalRef = GeographicalIntervalRef.fromJson(json['geographicalIntervalRef']);
distanceMatrixRef = DistanceMatrixRef.fromJson(json['distanceMatrixRef']);
mediaTypeRef = MediaTypeRef.fromJson(json['mediaTypeRef']);
temporalValidityRef = TemporalValidityRef.fromJson(json['temporalValidityRef']);
}

Map<String, dynamic> toJson() {
final data = <String, dynamic>{};
data['serviceRef'] = serviceRef.toJson();
data['fareZoneRef'] = fareZoneRef.toJson();
data['validityPeriodRef'] = validityPeriodRef.toJson();
data['customerProfileRef'] = customerProfileRef.toJson();
data['distributionTouchPointRef'] = distributionTouchPointRef.toJson();
data['geographicalIntervalRef'] = geographicalIntervalRef.toJson();
data['distanceMatrixRef'] = distanceMatrixRef.toJson();
data['mediaTypeRef'] = mediaTypeRef.toJson();
data['temporalValidityRef'] = temporalValidityRef.toJson();
return data;
}
}

@JsonSerializable(explicitToJson: true)
class ServiceRef {
ServiceRef({
this.serviceId,
this.serviceName,
this.serviceOrganisationRef,
this.transportModeCode,
});
late final String? serviceId;
late final String? serviceName;
late final String? serviceOrganisationRef;
late final String? transportModeCode;

ServiceRef.fromJson(Map<String, dynamic> json){
serviceId = json['serviceId'];
serviceName = json['serviceName'];
serviceOrganisationRef = json['serviceOrganisationRef'];
transportModeCode = json['transportModeCode'];
}

Map<String, dynamic> toJson() {
final data = <String, dynamic>{};
data['serviceId'] = serviceId;
data['serviceName'] = serviceName;
data['serviceOrganisationRef'] = serviceOrganisationRef;
data['transportModeCode'] = transportModeCode;
return data;
}
}

@JsonSerializable(explicitToJson: true)
class FareZoneRef {
FareZoneRef({
required this.fareZoneId,
required this.fareZoneName,
});
late final String fareZoneId;
late final String fareZoneName;

FareZoneRef.fromJson(Map<String, dynamic> json){
fareZoneId = json['fareZoneId'];
fareZoneName = json['fareZoneName'];
}

Map<String, dynamic> toJson() {
final data = <String, dynamic>{};
data['fareZoneId'] = fareZoneId;
data['fareZoneName'] = fareZoneName;
return data;
}
}

@JsonSerializable(explicitToJson: true)
class ValidityPeriodRef {
ValidityPeriodRef({
this.validityPeriodId,
this.validityPeriodName,
});
late final String? validityPeriodId;
late final String? validityPeriodName;

ValidityPeriodRef.fromJson(Map<String, dynamic> json){
validityPeriodId = json['validityPeriodId'];
validityPeriodName = json['validityPeriodName'];
}

Map<String, dynamic> toJson() {
final data = <String, dynamic>{};
data['validityPeriodId'] = validityPeriodId;
data['validityPeriodName'] = validityPeriodName;
return data;
}
}

@JsonSerializable(explicitToJson: true)
class CustomerProfileRef {
CustomerProfileRef({
required this.customerProfileId,
required this.customerProfileName,
});
late final String customerProfileId;
late final String customerProfileName;

CustomerProfileRef.fromJson(Map<String, dynamic> json){
customerProfileId = json['customerProfileId'];
customerProfileName = json['customerProfileName'];
}

Map<String, dynamic> toJson() {
final data = <String, dynamic>{};
data['customerProfileId'] = customerProfileId;
data['customerProfileName'] = customerProfileName;
return data;
}
}

@JsonSerializable(explicitToJson: true)
class DistributionTouchPointRef {
DistributionTouchPointRef({
required this.distributionTouchpointId,
required this.distributionTouchpointName,
required this.distributionTouchpointType,
});
late final String distributionTouchpointId;
late final String distributionTouchpointName;
late final String distributionTouchpointType;

DistributionTouchPointRef.fromJson(Map<String, dynamic> json){
distributionTouchpointId = json['distributionTouchpointId'];
distributionTouchpointName = json['distributionTouchpointName'];
distributionTouchpointType = json['distributionTouchpointType'];
}

Map<String, dynamic> toJson() {
final data = <String, dynamic>{};
data['distributionTouchpointId'] = distributionTouchpointId;
data['distributionTouchpointName'] = distributionTouchpointName;
data['distributionTouchpointType'] = distributionTouchpointType;
return data;
}
}

@JsonSerializable(explicitToJson: true)
class GeographicalIntervalRef {
GeographicalIntervalRef({
this.geographicalId,
this.geographicalName,
});
late final String? geographicalId;
late final String? geographicalName;

GeographicalIntervalRef.fromJson(Map<String, dynamic> json){
geographicalId = json['geographicalId'];
geographicalName = json['geographicalName'];
}

Map<String, dynamic> toJson() {
final data = <String, dynamic>{};
data['geographicalId'] = geographicalId;
data['geographicalName'] = geographicalName;
return data;
}
}

@JsonSerializable(explicitToJson: true)
class DistanceMatrixRef {
DistanceMatrixRef({
this.distanceMatrixElementId,
this.distanceMatrixElementName,
});
late final String? distanceMatrixElementId;
late final String? distanceMatrixElementName;

DistanceMatrixRef.fromJson(Map<String, dynamic> json){
distanceMatrixElementId = json['distanceMatrixElementId'];
distanceMatrixElementName = json['distanceMatrixElementName'];
}

Map<String, dynamic> toJson() {
final data = <String, dynamic>{};
data['distanceMatrixElementId'] = distanceMatrixElementId;
data['distanceMatrixElementName'] = distanceMatrixElementName;
return data;
}
}

@JsonSerializable(explicitToJson: true)
class TemporalValidityRef {
TemporalValidityRef({
required this.temporalValidityId,
this.temporalValidityName,
});
late final String temporalValidityId;
late final String? temporalValidityName;

TemporalValidityRef.fromJson(Map<String, dynamic> json){
temporalValidityId = json['temporalValidityId'];
temporalValidityName = json['temporalValidityName'];
}

Map<String, dynamic> toJson() {
final data = <String, dynamic>{};
data['temporalValidityId'] = temporalValidityId;
data['temporalValidityName'] = temporalValidityName;
return data;
}
}

@JsonSerializable(explicitToJson: true)
class FareFrame {
FareFrame({
required this.fareFrameId,
required this.fareFrameName,
required this.organisations,
this.fareProducts,
});
late final String fareFrameId;
late final String fareFrameName;
late final List<Organisations> organisations;
late final List<Product>? fareProducts;

FareFrame.fromJson(Map<String, dynamic> json){
fareFrameId = json['fareFrameId'];
fareFrameName = json['fareFrameName'];
organisations = List.from(json['organisations']).map((e)=>Organisations.fromJson(e)).toList();
fareProducts = json['fareProducts'];
}

Map<String, dynamic> toJson() {
final data = <String, dynamic>{};
data['fareFrameId'] = fareFrameId;
data['fareFrameName'] = fareFrameName;
data['organisations'] = organisations.map((e)=>e.toJson()).toList();
data['fareProducts'] = fareProducts;
return data;
}
}

@JsonSerializable(explicitToJson: true)
class Organisations {
Organisations({
required this.organisationName,
required this.organisationId,
this.publicCode,
this.organisationTypeCode,
required this.agreements,
});
late final String organisationName;
late final String organisationId;
late final String? publicCode;
late final String? organisationTypeCode;
late final List<Agreements> agreements;

Organisations.fromJson(Map<String, dynamic> json){
organisationName = json['organisationName'];
organisationId = json['organisationId'];
publicCode = json['publicCode'];
organisationTypeCode = json['organisationTypeCode'];
agreements = List.from(json['agreements']).map((e)=>Agreements.fromJson(e)).toList();
}

Map<String, dynamic> toJson() {
final data = <String, dynamic>{};
data['organisationName'] = organisationName;
data['organisationId'] = organisationId;
data['publicCode'] = publicCode;
data['organisationTypeCode'] = organisationTypeCode;
data['agreements'] = agreements.map((e)=>e.toJson()).toList();
return data;
}
}

@JsonSerializable(explicitToJson: true)
class Agreements {
Agreements({
required this.agreementId,
required this.agreementType,
required this.organisationIdMaster,
required this.organisationIdSecondary,
this.agreementDate,
});
late final String agreementId;
late final String agreementType;
late final String organisationIdMaster;
late final String organisationIdSecondary;
late final String? agreementDate;

Agreements.fromJson(Map<String, dynamic> json){
agreementId = json['agreementId'];
agreementType = json['agreementType'];
organisationIdMaster = json['organisationIdMaster'];
organisationIdSecondary = json['organisationIdSecondary'];
agreementDate = json['agreementDate'];
}

Map<String, dynamic> toJson() {
final data = <String, dynamic>{};
data['agreementId'] = agreementId;
data['agreementType'] = agreementType;
data['organisationIdMaster'] = organisationIdMaster;
data['organisationIdSecondary'] = organisationIdSecondary;
data['agreementDate'] = agreementDate;
return data;
}
}

@JsonSerializable(explicitToJson: true)
class GenericParameters {
GenericParameters({
required this.id,
required this.value,
required this.typeParameter,
required this.externalCode,
});
late final String id;
late final String value;
late final TypeParameter typeParameter;
late final String externalCode;

GenericParameters.fromJson(Map<String, dynamic> json){
id = json['id'];
value = json['value'];
typeParameter = TypeParameter.fromJson(json['typeParameter']);
externalCode = json['externalCode'];
}

Map<String, dynamic> toJson() {
final data = <String, dynamic>{};
data['id'] = id;
data['value'] = value;
data['typeParameter'] = typeParameter.toJson();
data['externalCode'] = externalCode;
return data;
}
}

@JsonSerializable(explicitToJson: true)
class TypeParameter {
TypeParameter({
required this.id,
required this.description,
required this.classPath,
required this.frontEndType,
required this.backEndType,
});
late final String id;
late final String description;
late final String classPath;
late final String frontEndType;
late final String backEndType;

TypeParameter.fromJson(Map<String, dynamic> json){
id = json['id'];
description = json['description'];
classPath = json['classPath'];
frontEndType = json['frontEndType'];
backEndType = json['backEndType'];
}

Map<String, dynamic> toJson() {
final data = <String, dynamic>{};
data['id'] = id;
data['description'] = description;
data['classPath'] = classPath;
data['frontEndType'] = frontEndType;
data['backEndType'] = backEndType;
return data;
}
}