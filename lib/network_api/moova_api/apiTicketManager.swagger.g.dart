// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apiTicketManager.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchTripInput _$SearchTripInputFromJson(Map<String, dynamic> json) =>
    SearchTripInput(
      tripId: json['tripId'] as String?,
      legsData: (json['legsData'] as List<dynamic>?)
              ?.map((e) => LegData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      profile: json['profile'] as String?,
      mediaType: json['mediaType'] as String?,
      contractType: json['contractType'] as String?,
    );

Map<String, dynamic> _$SearchTripInputToJson(SearchTripInput instance) =>
    <String, dynamic>{
      'tripId': instance.tripId,
      'legsData': instance.legsData?.map((e) => e.toJson()).toList(),
      'profile': instance.profile,
      'mediaType': instance.mediaType,
      'contractType': instance.contractType,
    };

LegData _$LegDataFromJson(Map<String, dynamic> json) => LegData(
      legDataType: legDataEnumFromJson(json['legDataType']),
      legId: json['legId'] as String,
      duration: json['duration'] as String?,
      physicalKm: (json['physicalKm'] as num?)?.toDouble(),
      commercialKm: (json['commercialKm'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$LegDataToJson(LegData instance) => <String, dynamic>{
      'legDataType': legDataEnumToJson(instance.legDataType),
      'legId': instance.legId,
      'duration': instance.duration,
      'physicalKm': instance.physicalKm,
      'commercialKm': instance.commercialKm,
    };

LegDataTransport _$LegDataTransportFromJson(Map<String, dynamic> json) =>
    LegDataTransport(
      transportOperator: json['transportOperator'] as String,
      line: GenericInfoData.fromJson(json['line'] as Map<String, dynamic>),
      route: json['route'] == null
          ? null
          : GenericInfoData.fromJson(json['route'] as Map<String, dynamic>),
      journey: json['journey'] == null
          ? null
          : GenericInfoData.fromJson(json['journey'] as Map<String, dynamic>),
      zone: json['zone'] == null
          ? null
          : GenericInfoData.fromJson(json['zone'] as Map<String, dynamic>),
      transportMode: json['transportMode'] as String,
      origin: json['origin'] as String,
      originDt: json['originDt'] == null
          ? null
          : DateTime.parse(json['originDt'] as String),
      destination: json['destination'] as String,
      destinationDt: json['destinationDt'] == null
          ? null
          : DateTime.parse(json['destinationDt'] as String),
      legDataType: legDataEnumFromJson(json['legDataType']),
      legId: json['legId'] as String,
      duration: json['duration'] as String?,
      physicalKm: (json['physicalKm'] as num?)?.toDouble(),
      commercialKm: (json['commercialKm'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$LegDataTransportToJson(LegDataTransport instance) =>
    <String, dynamic>{
      'transportOperator': instance.transportOperator,
      'line': instance.line.toJson(),
      'route': instance.route?.toJson(),
      'journey': instance.journey?.toJson(),
      'zone': instance.zone?.toJson(),
      'transportMode': instance.transportMode,
      'origin': instance.origin,
      'originDt': _dateToJson(instance.originDt),
      'destination': instance.destination,
      'destinationDt': _dateToJson(instance.destinationDt),
      'legDataType': legDataEnumToJson(instance.legDataType),
      'legId': instance.legId,
      'duration': instance.duration,
      'physicalKm': instance.physicalKm,
      'commercialKm': instance.commercialKm,
    };

LegDataPMob _$LegDataPMobFromJson(Map<String, dynamic> json) => LegDataPMob(
      route: json['route'] == null
          ? null
          : GenericInfoData.fromJson(json['route'] as Map<String, dynamic>),
      journey: json['journey'] == null
          ? null
          : GenericInfoData.fromJson(json['journey'] as Map<String, dynamic>),
      zone: json['zone'] == null
          ? null
          : GenericInfoData.fromJson(json['zone'] as Map<String, dynamic>),
      origin: json['origin'] as String?,
      originDt: json['originDt'] == null
          ? null
          : DateTime.parse(json['originDt'] as String),
      destination: json['destination'] as String?,
      destinationDt: json['destinationDt'] == null
          ? null
          : DateTime.parse(json['destinationDt'] as String),
      legDataType: legDataEnumFromJson(json['legDataType']),
      legId: json['legId'] as String,
      duration: json['duration'] as String?,
      physicalKm: (json['physicalKm'] as num?)?.toDouble(),
      commercialKm: (json['commercialKm'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$LegDataPMobToJson(LegDataPMob instance) =>
    <String, dynamic>{
      'route': instance.route?.toJson(),
      'journey': instance.journey?.toJson(),
      'zone': instance.zone?.toJson(),
      'origin': instance.origin,
      'originDt': _dateToJson(instance.originDt),
      'destination': instance.destination,
      'destinationDt': _dateToJson(instance.destinationDt),
      'legDataType': legDataEnumToJson(instance.legDataType),
      'legId': instance.legId,
      'duration': instance.duration,
      'physicalKm': instance.physicalKm,
      'commercialKm': instance.commercialKm,
    };

LegDataShare _$LegDataShareFromJson(Map<String, dynamic> json) => LegDataShare(
      transportOperator: json['transportOperator'] as String?,
      line: json['line'] == null
          ? null
          : GenericInfoData.fromJson(json['line'] as Map<String, dynamic>),
      zone: json['zone'] == null
          ? null
          : GenericInfoData.fromJson(json['zone'] as Map<String, dynamic>),
      transportMode: json['transportMode'] as String,
      origin: json['origin'] as String,
      originDt: json['originDt'] == null
          ? null
          : DateTime.parse(json['originDt'] as String),
      destination: json['destination'] as String,
      destinationDt: json['destinationDt'] == null
          ? null
          : DateTime.parse(json['destinationDt'] as String),
      legDataType: legDataEnumFromJson(json['legDataType']),
      legId: json['legId'] as String,
      duration: json['duration'] as String?,
      physicalKm: (json['physicalKm'] as num?)?.toDouble(),
      commercialKm: (json['commercialKm'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$LegDataShareToJson(LegDataShare instance) =>
    <String, dynamic>{
      'transportOperator': instance.transportOperator,
      'line': instance.line?.toJson(),
      'zone': instance.zone?.toJson(),
      'transportMode': instance.transportMode,
      'origin': instance.origin,
      'originDt': _dateToJson(instance.originDt),
      'destination': instance.destination,
      'destinationDt': _dateToJson(instance.destinationDt),
      'legDataType': legDataEnumToJson(instance.legDataType),
      'legId': instance.legId,
      'duration': instance.duration,
      'physicalKm': instance.physicalKm,
      'commercialKm': instance.commercialKm,
    };

GenericInfoData _$GenericInfoDataFromJson(Map<String, dynamic> json) =>
    GenericInfoData(
      id: json['id'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$GenericInfoDataToJson(GenericInfoData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
    };

CardDataModel _$CardDataModelFromJson(Map<String, dynamic> json) =>
    CardDataModel(
      cardDataModelId: json['cardDataModelId'] as String?,
      encodingType:
          cardDataModelEncodingTypeNullableFromJson(json['encodingType']),
      encodedCardDataModel: json['encodedCardDataModel'] as String?,
    );

Map<String, dynamic> _$CardDataModelToJson(CardDataModel instance) =>
    <String, dynamic>{
      'cardDataModelId': instance.cardDataModelId,
      'encodingType':
          cardDataModelEncodingTypeNullableToJson(instance.encodingType),
      'encodedCardDataModel': instance.encodedCardDataModel,
    };

Error _$ErrorFromJson(Map<String, dynamic> json) => Error(
      code: json['code'] as String,
      message: json['message'] as String,
      details: json['details'] as String?,
    );

Map<String, dynamic> _$ErrorToJson(Error instance) => <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'details': instance.details,
    };

DeviceData _$DeviceDataFromJson(Map<String, dynamic> json) => DeviceData(
      deviceId: json['deviceId'] as String?,
      deviceCodeExt: json['deviceCodeExt'] as String,
      userId: json['userId'] as String,
      registrationDate: json['registrationDate'] == null
          ? null
          : DateTime.parse(json['registrationDate'] as String),
      blacklistDate: json['blacklistDate'] == null
          ? null
          : DateTime.parse(json['blacklistDate'] as String),
      model: json['model'] as String?,
      status: deviceDataStatusNullableFromJson(json['status']),
      deviceType: json['deviceType'] as String?,
    );

Map<String, dynamic> _$DeviceDataToJson(DeviceData instance) =>
    <String, dynamic>{
      'deviceId': instance.deviceId,
      'deviceCodeExt': instance.deviceCodeExt,
      'userId': instance.userId,
      'registrationDate': instance.registrationDate?.toIso8601String(),
      'blacklistDate': instance.blacklistDate?.toIso8601String(),
      'model': instance.model,
      'status': deviceDataStatusNullableToJson(instance.status),
      'deviceType': instance.deviceType,
    };

HCEDeviceBlackList _$HCEDeviceBlackListFromJson(Map<String, dynamic> json) =>
    HCEDeviceBlackList(
      deviceCodeExt: json['deviceCodeExt'] as String?,
      inBlackListSince: json['inBlackListSince'] == null
          ? null
          : DateTime.parse(json['inBlackListSince'] as String),
      model: json['model'] as String?,
      registrationDate: json['registrationDate'] == null
          ? null
          : DateTime.parse(json['registrationDate'] as String),
    );

Map<String, dynamic> _$HCEDeviceBlackListToJson(HCEDeviceBlackList instance) =>
    <String, dynamic>{
      'deviceCodeExt': instance.deviceCodeExt,
      'inBlackListSince': instance.inBlackListSince?.toIso8601String(),
      'model': instance.model,
      'registrationDate': instance.registrationDate?.toIso8601String(),
    };

TicketListData _$TicketListDataFromJson(Map<String, dynamic> json) =>
    TicketListData(
      ticketId: json['ticketId'] as String,
      mediaId: json['mediaId'] as String,
      touchPointId: json['touchPointId'] as String?,
      deviceId: json['deviceId'] as String?,
      notes: json['notes'] as String?,
      eventDateTime: json['eventDateTime'] == null
          ? null
          : DateTime.parse(json['eventDateTime'] as String),
      codInsertionType: ticketListDataCodInsertionTypeNullableFromJson(
          json['codInsertionType']),
    );

Map<String, dynamic> _$TicketListDataToJson(TicketListData instance) =>
    <String, dynamic>{
      'ticketId': instance.ticketId,
      'mediaId': instance.mediaId,
      'touchPointId': instance.touchPointId,
      'deviceId': instance.deviceId,
      'notes': instance.notes,
      'eventDateTime': instance.eventDateTime?.toIso8601String(),
      'codInsertionType': ticketListDataCodInsertionTypeNullableToJson(
          instance.codInsertionType),
    };

EventData _$EventDataFromJson(Map<String, dynamic> json) => EventData(
      eventType: EventData.eventDataEventTypeEventTypeNullableFromJson(
          json['eventType']),
      ticketId: json['ticketId'] as String?,
      mediaId: json['mediaId'] as String?,
      hceDeviceId: json['hceDeviceId'] as String?,
      mediaExtCode: json['mediaExtCode'] as String?,
      partyAccountId: json['partyAccountId'] as String?,
      sessionId: json['sessionId'] as String?,
      eventExtCode: json['eventExtCode'] as String?,
      eventDate: DateTime.parse(json['eventDate'] as String),
      eventOutcome: EventData.eventDataEventOutcomeEventOutcomeNullableFromJson(
          json['eventOutcome']),
      note: json['note'] as String?,
      infrastructureList: (json['infrastructureList'] as List<dynamic>?)
              ?.map((e) =>
                  InfrastructureElement.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$EventDataToJson(EventData instance) => <String, dynamic>{
      'eventType': eventDataEventTypeNullableToJson(instance.eventType),
      'ticketId': instance.ticketId,
      'mediaId': instance.mediaId,
      'hceDeviceId': instance.hceDeviceId,
      'mediaExtCode': instance.mediaExtCode,
      'partyAccountId': instance.partyAccountId,
      'sessionId': instance.sessionId,
      'eventExtCode': instance.eventExtCode,
      'eventDate': instance.eventDate.toIso8601String(),
      'eventOutcome':
          eventDataEventOutcomeNullableToJson(instance.eventOutcome),
      'note': instance.note,
      'infrastructureList':
          instance.infrastructureList?.map((e) => e.toJson()).toList(),
    };

IssuanceNotification _$IssuanceNotificationFromJson(
        Map<String, dynamic> json) =>
    IssuanceNotification(
      eventData: EventData.fromJson(json['eventData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IssuanceNotificationToJson(
        IssuanceNotification instance) =>
    <String, dynamic>{
      'eventData': instance.eventData.toJson(),
    };

ProofOfPurchase _$ProofOfPurchaseFromJson(Map<String, dynamic> json) =>
    ProofOfPurchase(
      ticketId: json['ticketId'] as String?,
      purchaseDate: json['purchaseDate'] == null
          ? null
          : DateTime.parse(json['purchaseDate'] as String),
      transactionId: json['transactionId'] as String?,
      cardDataModelId: json['cardDataModelId'] as String?,
      tokenInfo: json['tokenInfo'] == null
          ? null
          : TokenInfo.fromJson(json['tokenInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProofOfPurchaseToJson(ProofOfPurchase instance) =>
    <String, dynamic>{
      'ticketId': instance.ticketId,
      'purchaseDate': instance.purchaseDate?.toIso8601String(),
      'transactionId': instance.transactionId,
      'cardDataModelId': instance.cardDataModelId,
      'tokenInfo': instance.tokenInfo?.toJson(),
    };

PurchaseCart _$PurchaseCartFromJson(Map<String, dynamic> json) => PurchaseCart(
      totalAmount: (json['totalAmount'] as num).toDouble(),
      ccy: json['ccy'] as String,
      paymentType: paymentTypeEnumFromJson(json['paymentType']),
      codGateway: paymentGatewayTypeNullableFromJson(json['codGateway']),
      purchaseDate: DateTime.parse(json['purchaseDate'] as String),
      purchaseOutcome: PurchaseCart
          .purchaseCartPurchaseOutcomePurchaseOutcomeNullableFromJson(
              json['purchaseOutcome']),
      note: json['note'] as String?,
      externalTransactionCode: json['externalTransactionCode'] as String?,
      invoiceCode: json['invoiceCode'] as String?,
      userId: json['userId'] as String?,
      sellerId: json['sellerId'] as String,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => PurchaseData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      infrastructureList: (json['infrastructureList'] as List<dynamic>?)
              ?.map((e) =>
                  InfrastructureElement.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      workShiftId: json['workShiftId'] as String?,
      cashAmountEntered: (json['cashAmountEntered'] as num?)?.toDouble(),
      changeValue: (json['changeValue'] as num?)?.toDouble(),
      payoutChange: (json['payoutChange'] as num?)?.toDouble(),
      missingPayoutChange: (json['missingPayoutChange'] as num?)?.toDouble(),
      extraData: json['extraData'] as String?,
    );

Map<String, dynamic> _$PurchaseCartToJson(PurchaseCart instance) =>
    <String, dynamic>{
      'totalAmount': instance.totalAmount,
      'ccy': instance.ccy,
      'paymentType': paymentTypeEnumToJson(instance.paymentType),
      'codGateway': paymentGatewayTypeNullableToJson(instance.codGateway),
      'purchaseDate': instance.purchaseDate.toIso8601String(),
      'purchaseOutcome':
          purchaseCartPurchaseOutcomeNullableToJson(instance.purchaseOutcome),
      'note': instance.note,
      'externalTransactionCode': instance.externalTransactionCode,
      'invoiceCode': instance.invoiceCode,
      'userId': instance.userId,
      'sellerId': instance.sellerId,
      'items': instance.items.map((e) => e.toJson()).toList(),
      'infrastructureList':
          instance.infrastructureList.map((e) => e.toJson()).toList(),
      'workShiftId': instance.workShiftId,
      'cashAmountEntered': instance.cashAmountEntered,
      'changeValue': instance.changeValue,
      'payoutChange': instance.payoutChange,
      'missingPayoutChange': instance.missingPayoutChange,
      'extraData': instance.extraData,
    };

PurchaseData _$PurchaseDataFromJson(Map<String, dynamic> json) => PurchaseData(
      itemType: purchaseDataItemTypeFromJson(json['itemType']),
      itemId: json['itemId'] as String,
      itemVersion: json['itemVersion'] as int,
      fareTableCellId: json['fareTableCellId'] as String?,
      promotionId: json['promotionId'] as String?,
      quantity: json['quantity'] as int?,
      mediaId: json['mediaId'] as String?,
      mediaType: purchaseDataMediaTypeFromJson(json['mediaType']),
      startValidity: json['startValidity'] == null
          ? null
          : DateTime.parse(json['startValidity'] as String),
      endValidity: json['endValidity'] == null
          ? null
          : DateTime.parse(json['endValidity'] as String),
      geographicalIntervalLimit: (json['geographicalIntervalLimit']
                  as List<dynamic>?)
              ?.map((e) =>
                  GeographicalIntervalLimit.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      extraData: json['extraData'] as String?,
    );

Map<String, dynamic> _$PurchaseDataToJson(PurchaseData instance) =>
    <String, dynamic>{
      'itemType': purchaseDataItemTypeToJson(instance.itemType),
      'itemId': instance.itemId,
      'itemVersion': instance.itemVersion,
      'fareTableCellId': instance.fareTableCellId,
      'promotionId': instance.promotionId,
      'quantity': instance.quantity,
      'mediaId': instance.mediaId,
      'mediaType': purchaseDataMediaTypeToJson(instance.mediaType),
      'startValidity': instance.startValidity?.toIso8601String(),
      'endValidity': instance.endValidity?.toIso8601String(),
      'geographicalIntervalLimit':
          instance.geographicalIntervalLimit?.map((e) => e.toJson()).toList(),
      'extraData': instance.extraData,
    };

EpursePurchaseCart _$EpursePurchaseCartFromJson(Map<String, dynamic> json) =>
    EpursePurchaseCart(
      totalAmount: (json['totalAmount'] as num).toDouble(),
      ccy: json['ccy'] as String,
      paymentType: paymentTypeEnumFromJson(json['paymentType']),
      codGateway: paymentGatewayTypeNullableFromJson(json['codGateway']),
      purchaseDate: DateTime.parse(json['purchaseDate'] as String),
      purchaseOutcome: EpursePurchaseCart
          .epursePurchaseCartPurchaseOutcomePurchaseOutcomeNullableFromJson(
              json['purchaseOutcome']),
      note: json['note'] as String?,
      invoiceCode: json['invoiceCode'] as String?,
      workshiftId: json['workshiftId'] as String?,
      ownerType: json['ownerType'] as String,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) =>
                  TopupEpursePurchaseData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      infrastructureList: (json['infrastructureList'] as List<dynamic>?)
              ?.map((e) =>
                  InfrastructureElement.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      numCreditAmount: (json['numCreditAmount'] as num?)?.toDouble(),
      numDiscountAmount: (json['numDiscountAmount'] as num?)?.toDouble(),
      numDiscountPerc: (json['numDiscountPerc'] as num?)?.toDouble(),
      creditNotes: json['creditNotes'] as String?,
      discountNotes: json['discountNotes'] as String?,
      channel: json['channel'] as String?,
    );

Map<String, dynamic> _$EpursePurchaseCartToJson(EpursePurchaseCart instance) =>
    <String, dynamic>{
      'totalAmount': instance.totalAmount,
      'ccy': instance.ccy,
      'paymentType': paymentTypeEnumToJson(instance.paymentType),
      'codGateway': paymentGatewayTypeNullableToJson(instance.codGateway),
      'purchaseDate': instance.purchaseDate.toIso8601String(),
      'purchaseOutcome': epursePurchaseCartPurchaseOutcomeNullableToJson(
          instance.purchaseOutcome),
      'note': instance.note,
      'invoiceCode': instance.invoiceCode,
      'workshiftId': instance.workshiftId,
      'ownerType': instance.ownerType,
      'items': instance.items.map((e) => e.toJson()).toList(),
      'infrastructureList':
          instance.infrastructureList.map((e) => e.toJson()).toList(),
      'numCreditAmount': instance.numCreditAmount,
      'numDiscountAmount': instance.numDiscountAmount,
      'numDiscountPerc': instance.numDiscountPerc,
      'creditNotes': instance.creditNotes,
      'discountNotes': instance.discountNotes,
      'channel': instance.channel,
    };

TopupEpursePurchaseData _$TopupEpursePurchaseDataFromJson(
        Map<String, dynamic> json) =>
    TopupEpursePurchaseData(
      topUpAmount: (json['topUpAmount'] as num).toDouble(),
      quantity: json['quantity'] as int?,
    );

Map<String, dynamic> _$TopupEpursePurchaseDataToJson(
        TopupEpursePurchaseData instance) =>
    <String, dynamic>{
      'topUpAmount': instance.topUpAmount,
      'quantity': instance.quantity,
    };

RefundData _$RefundDataFromJson(Map<String, dynamic> json) => RefundData(
      purchaseTransactionId: json['purchaseTransactionId'] as String,
      ticketIdList: (json['ticketIdList'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      refundPaymentMethod: paymentTypeEnumFromJson(json['refundPaymentMethod']),
      debitNote: json['debitNote'] as String?,
      workShiftId: json['workShiftId'] as String?,
    );

Map<String, dynamic> _$RefundDataToJson(RefundData instance) =>
    <String, dynamic>{
      'purchaseTransactionId': instance.purchaseTransactionId,
      'ticketIdList': instance.ticketIdList,
      'refundPaymentMethod':
          paymentTypeEnumToJson(instance.refundPaymentMethod),
      'debitNote': instance.debitNote,
      'workShiftId': instance.workShiftId,
    };

ChangeCompensationData _$ChangeCompensationDataFromJson(
        Map<String, dynamic> json) =>
    ChangeCompensationData(
      purchaseTransactionId: json['purchaseTransactionId'] as String,
      amount: (json['amount'] as num).toDouble(),
      workShiftId: json['workShiftId'] as String,
    );

Map<String, dynamic> _$ChangeCompensationDataToJson(
        ChangeCompensationData instance) =>
    <String, dynamic>{
      'purchaseTransactionId': instance.purchaseTransactionId,
      'amount': instance.amount,
      'workShiftId': instance.workShiftId,
    };

TokenInfo _$TokenInfoFromJson(Map<String, dynamic> json) => TokenInfo(
      activationRequired: json['activationRequired'] as bool?,
      availableFrom: json['availableFrom'] == null
          ? null
          : DateTime.parse(json['availableFrom'] as String),
      consumableSince: json['consumableSince'] as int?,
    );

Map<String, dynamic> _$TokenInfoToJson(TokenInfo instance) => <String, dynamic>{
      'activationRequired': instance.activationRequired,
      'availableFrom': instance.availableFrom?.toIso8601String(),
      'consumableSince': instance.consumableSince,
    };

ValidationData _$ValidationDataFromJson(Map<String, dynamic> json) =>
    ValidationData(
      codeValidationEvent: validationDataCodeValidationEventFromJson(
          json['codeValidationEvent']),
      serviceType:
          ValidationData.validationDataServiceTypeServiceTypeNullableFromJson(
              json['serviceType']),
      serviceMode: json['serviceMode'] as String?,
      serviceProvider: json['serviceProvider'] as String?,
    );

Map<String, dynamic> _$ValidationDataToJson(ValidationData instance) =>
    <String, dynamic>{
      'codeValidationEvent':
          validationDataCodeValidationEventToJson(instance.codeValidationEvent),
      'serviceType':
          validationDataServiceTypeNullableToJson(instance.serviceType),
      'serviceMode': instance.serviceMode,
      'serviceProvider': instance.serviceProvider,
    };

ValidationNotification _$ValidationNotificationFromJson(
        Map<String, dynamic> json) =>
    ValidationNotification(
      eventData: EventData.fromJson(json['eventData'] as Map<String, dynamic>),
      validationData: ValidationData.fromJson(
          json['validationData'] as Map<String, dynamic>),
      travelSummary: json['travelSummary'] == null
          ? null
          : TravelSummary.fromJson(
              json['travelSummary'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ValidationNotificationToJson(
        ValidationNotification instance) =>
    <String, dynamic>{
      'eventData': instance.eventData.toJson(),
      'validationData': instance.validationData.toJson(),
      'travelSummary': instance.travelSummary?.toJson(),
    };

ValidationResponse _$ValidationResponseFromJson(Map<String, dynamic> json) =>
    ValidationResponse(
      successes: (json['successes'] as List<dynamic>?)
              ?.map((e) => ValidationResult.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      errors: (json['errors'] as List<dynamic>?)
              ?.map((e) => ValidationResult.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ValidationResponseToJson(ValidationResponse instance) =>
    <String, dynamic>{
      'successes': instance.successes?.map((e) => e.toJson()).toList(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

ValidationResult _$ValidationResultFromJson(Map<String, dynamic> json) =>
    ValidationResult(
      ticketId: json['ticketId'] as String?,
      sessionId: json['sessionId'] as String?,
      eventDate: json['eventDate'] == null
          ? null
          : DateTime.parse(json['eventDate'] as String),
      errors: (json['errors'] as List<dynamic>?)
              ?.map((e) => Error.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ValidationResultToJson(ValidationResult instance) =>
    <String, dynamic>{
      'ticketId': instance.ticketId,
      'sessionId': instance.sessionId,
      'eventDate': instance.eventDate?.toIso8601String(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

InspectionData _$InspectionDataFromJson(Map<String, dynamic> json) =>
    InspectionData(
      inspectorId: json['inspectorId'] as String,
    );

Map<String, dynamic> _$InspectionDataToJson(InspectionData instance) =>
    <String, dynamic>{
      'inspectorId': instance.inspectorId,
    };

InspectionNotification _$InspectionNotificationFromJson(
        Map<String, dynamic> json) =>
    InspectionNotification(
      eventData: EventData.fromJson(json['eventData'] as Map<String, dynamic>),
      inspectionData: InspectionData.fromJson(
          json['inspectionData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InspectionNotificationToJson(
        InspectionNotification instance) =>
    <String, dynamic>{
      'eventData': instance.eventData.toJson(),
      'inspectionData': instance.inspectionData.toJson(),
    };

TransactionId _$TransactionIdFromJson(Map<String, dynamic> json) =>
    TransactionId(
      transactionId: json['transactionId'] as String?,
    );

Map<String, dynamic> _$TransactionIdToJson(TransactionId instance) =>
    <String, dynamic>{
      'transactionId': instance.transactionId,
    };

TransactionRefund _$TransactionRefundFromJson(Map<String, dynamic> json) =>
    TransactionRefund(
      transactionId: json['transactionId'] as String,
      purchaseTransactionId: json['purchaseTransactionId'] as String,
      refundPaymentMethod: paymentTypeEnumFromJson(json['refundPaymentMethod']),
      ccy: json['ccy'] as String,
      totalAmountRefund: (json['totalAmountRefund'] as num).toDouble(),
      debitNote: json['debitNote'] as String?,
      seller: OrganisationRef.fromJson(json['seller'] as Map<String, dynamic>),
      refundItems: (json['refundItems'] as List<dynamic>?)
              ?.map((e) => RefundItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TransactionRefundToJson(TransactionRefund instance) =>
    <String, dynamic>{
      'transactionId': instance.transactionId,
      'purchaseTransactionId': instance.purchaseTransactionId,
      'refundPaymentMethod':
          paymentTypeEnumToJson(instance.refundPaymentMethod),
      'ccy': instance.ccy,
      'totalAmountRefund': instance.totalAmountRefund,
      'debitNote': instance.debitNote,
      'seller': instance.seller.toJson(),
      'refundItems': instance.refundItems.map((e) => e.toJson()).toList(),
    };

RefundItem _$RefundItemFromJson(Map<String, dynamic> json) => RefundItem(
      purchasedItemId: json['purchasedItemId'] as String?,
      fareProductData: json['fareProductData'] == null
          ? null
          : TicketProductData.fromJson(
              json['fareProductData'] as Map<String, dynamic>),
      salesPackageData: json['salesPackageData'] == null
          ? null
          : TicketSalesPackageData.fromJson(
              json['salesPackageData'] as Map<String, dynamic>),
      refundAmount: (json['refundAmount'] as num?)?.toDouble(),
      originalAmount: (json['originalAmount'] as num?)?.toDouble(),
      itemType: json['itemType'] as String?,
      ticketId: json['ticketId'] as String?,
      quantity: json['quantity'] as int?,
    );

Map<String, dynamic> _$RefundItemToJson(RefundItem instance) =>
    <String, dynamic>{
      'purchasedItemId': instance.purchasedItemId,
      'fareProductData': instance.fareProductData?.toJson(),
      'salesPackageData': instance.salesPackageData?.toJson(),
      'refundAmount': instance.refundAmount,
      'originalAmount': instance.originalAmount,
      'itemType': instance.itemType,
      'ticketId': instance.ticketId,
      'quantity': instance.quantity,
    };

TransactionChangeCompensation _$TransactionChangeCompensationFromJson(
        Map<String, dynamic> json) =>
    TransactionChangeCompensation(
      paymentType: paymentTypeEnumNullableFromJson(json['paymentType']),
      ccy: json['ccy'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      codTransaction: json['codTransaction'] as String?,
      transactionResult:
          transactionChangeCompensationTransactionResultNullableFromJson(
              json['transactionResult']),
      transactionType: transactionChangeCompensationTransactionTypeFromJson(
          json['transactionType']),
      transactionTime: json['transactionTime'] == null
          ? null
          : DateTime.parse(json['transactionTime'] as String),
      customerId: json['customerId'] as String?,
      extCodTransaction: json['extCodTransaction'] as String?,
      fareProductType:
          transactionChangeCompensationFareProductTypeNullableFromJson(
              json['fareProductType']),
      infrastructureElements: (json['infrastructureElements'] as List<dynamic>?)
              ?.map((e) =>
                  InfrastructureElement.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      relatedTransactions: (json['relatedTransactions'] as List<dynamic>?)
              ?.map((e) => CodeTypeElement.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      workshiftId: json['workshiftId'] as String?,
      notes: json['notes'] as String?,
      extraData: json['extraData'] as String?,
    );

Map<String, dynamic> _$TransactionChangeCompensationToJson(
        TransactionChangeCompensation instance) =>
    <String, dynamic>{
      'paymentType': paymentTypeEnumNullableToJson(instance.paymentType),
      'ccy': instance.ccy,
      'amount': instance.amount,
      'codTransaction': instance.codTransaction,
      'transactionResult':
          transactionChangeCompensationTransactionResultNullableToJson(
              instance.transactionResult),
      'transactionType': transactionChangeCompensationTransactionTypeToJson(
          instance.transactionType),
      'transactionTime': instance.transactionTime?.toIso8601String(),
      'customerId': instance.customerId,
      'extCodTransaction': instance.extCodTransaction,
      'fareProductType':
          transactionChangeCompensationFareProductTypeNullableToJson(
              instance.fareProductType),
      'infrastructureElements':
          instance.infrastructureElements?.map((e) => e.toJson()).toList(),
      'relatedTransactions':
          instance.relatedTransactions?.map((e) => e.toJson()).toList(),
      'workshiftId': instance.workshiftId,
      'notes': instance.notes,
      'extraData': instance.extraData,
    };

PurchaseRef _$PurchaseRefFromJson(Map<String, dynamic> json) => PurchaseRef(
      purchaseRef: json['purchaseRef'] as String?,
      urlPaymentGateway: json['urlPaymentGateway'] as String?,
    );

Map<String, dynamic> _$PurchaseRefToJson(PurchaseRef instance) =>
    <String, dynamic>{
      'purchaseRef': instance.purchaseRef,
      'urlPaymentGateway': instance.urlPaymentGateway,
    };

DateRange _$DateRangeFromJson(Map<String, dynamic> json) => DateRange(
      from:
          json['from'] == null ? null : DateTime.parse(json['from'] as String),
      to: json['to'] == null ? null : DateTime.parse(json['to'] as String),
    );

Map<String, dynamic> _$DateRangeToJson(DateRange instance) => <String, dynamic>{
      'from': instance.from?.toIso8601String(),
      'to': instance.to?.toIso8601String(),
    };

LightTransaction _$LightTransactionFromJson(Map<String, dynamic> json) =>
    LightTransaction(
      id: json['id'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      type: json['type'] as String?,
      status: json['status'] as String?,
      infrastructureElements: (json['infrastructureElements'] as List<dynamic>?)
              ?.map((e) =>
                  InfrastructureElement.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$LightTransactionToJson(LightTransaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date?.toIso8601String(),
      'type': instance.type,
      'status': instance.status,
      'infrastructureElements':
          instance.infrastructureElements?.map((e) => e.toJson()).toList(),
    };

TicketData _$TicketDataFromJson(Map<String, dynamic> json) => TicketData(
      ticketId: json['ticketId'] as String?,
      startValidity: json['startValidity'] == null
          ? null
          : DateTime.parse(json['startValidity'] as String),
      endValidity: json['endValidity'] == null
          ? null
          : DateTime.parse(json['endValidity'] as String),
      dueDate: json['dueDate'] == null
          ? null
          : DateTime.parse(json['dueDate'] as String),
      statusCode: json['statusCode'] as String?,
      issued: json['issued'] as bool?,
      product: json['product'] == null
          ? null
          : TicketProductData.fromJson(json['product'] as Map<String, dynamic>),
      salesPackage: json['salesPackage'] == null
          ? null
          : TicketSalesPackageData.fromJson(
              json['salesPackage'] as Map<String, dynamic>),
      userId: json['userId'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      ccyPrice: json['ccyPrice'] as String?,
      transactions: (json['transactions'] as List<dynamic>?)
              ?.map((e) => LightTransaction.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      mediaId: json['mediaId'] as String?,
      mediaType: ticketDataMediaTypeNullableFromJson(json['mediaType']),
      cardDataModelId: json['cardDataModelId'] as String?,
      cardData: json['cardData'] as String?,
      validityPeriod: json['validityPeriod'] == null
          ? null
          : ValidityPeriod.fromJson(
              json['validityPeriod'] as Map<String, dynamic>),
      statusDate: json['statusDate'] == null
          ? null
          : DateTime.parse(json['statusDate'] as String),
      usageResiduals: json['usageResiduals'] == null
          ? null
          : UsageResiduals.fromJson(
              json['usageResiduals'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TicketDataToJson(TicketData instance) =>
    <String, dynamic>{
      'ticketId': instance.ticketId,
      'startValidity': instance.startValidity?.toIso8601String(),
      'endValidity': instance.endValidity?.toIso8601String(),
      'dueDate': instance.dueDate?.toIso8601String(),
      'statusCode': instance.statusCode,
      'issued': instance.issued,
      'product': instance.product?.toJson(),
      'salesPackage': instance.salesPackage?.toJson(),
      'userId': instance.userId,
      'price': instance.price,
      'ccyPrice': instance.ccyPrice,
      'transactions': instance.transactions?.map((e) => e.toJson()).toList(),
      'mediaId': instance.mediaId,
      'mediaType': ticketDataMediaTypeNullableToJson(instance.mediaType),
      'cardDataModelId': instance.cardDataModelId,
      'cardData': instance.cardData,
      'validityPeriod': instance.validityPeriod?.toJson(),
      'statusDate': instance.statusDate?.toIso8601String(),
      'usageResiduals': instance.usageResiduals?.toJson(),
    };

UsageResiduals _$UsageResidualsFromJson(Map<String, dynamic> json) =>
    UsageResiduals(
      rides: json['rides'] as int?,
      minutes: json['minutes'] as int?,
      exceedingMinutes: json['exceedingMinutes'] as int?,
      distance: json['distance'] as String?,
      exceedingDistance: json['exceedingDistance'] as String?,
      lastRideExpiration: json['lastRideExpiration'] == null
          ? null
          : DateTime.parse(json['lastRideExpiration'] as String),
      services: (json['services'] as List<dynamic>?)
              ?.map((e) => ServiceResidual.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$UsageResidualsToJson(UsageResiduals instance) =>
    <String, dynamic>{
      'rides': instance.rides,
      'minutes': instance.minutes,
      'exceedingMinutes': instance.exceedingMinutes,
      'distance': instance.distance,
      'exceedingDistance': instance.exceedingDistance,
      'lastRideExpiration': instance.lastRideExpiration?.toIso8601String(),
      'services': instance.services?.map((e) => e.toJson()).toList(),
    };

ServiceResidual _$ServiceResidualFromJson(Map<String, dynamic> json) =>
    ServiceResidual(
      serviceId: json['serviceId'] as String?,
      serviceName: json['serviceName'] as String?,
      serviceMode: json['ServiceMode'] as String?,
      usages: json['usages'] as int?,
    );

Map<String, dynamic> _$ServiceResidualToJson(ServiceResidual instance) =>
    <String, dynamic>{
      'serviceId': instance.serviceId,
      'serviceName': instance.serviceName,
      'ServiceMode': instance.serviceMode,
      'usages': instance.usages,
    };

TicketProductData _$TicketProductDataFromJson(Map<String, dynamic> json) =>
    TicketProductData(
      productId: json['productId'] as String?,
      productVersion: json['productVersion'] as String?,
      productDescription: json['productDescription'] as String?,
      productTypeCode: json['productTypeCode'] as String?,
      extCodProduct: json['extCodProduct'] as String?,
      priceRef: json['priceRef'] == null
          ? null
          : TicketPriceReference.fromJson(
              json['priceRef'] as Map<String, dynamic>),
      promotion: json['promotion'] == null
          ? null
          : PromotionRef.fromJson(json['promotion'] as Map<String, dynamic>),
      services: (json['services'] as List<dynamic>?)
              ?.map((e) => ServiceRef.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      geographicalIntervalLimit: (json['geographicalIntervalLimit']
                  as List<dynamic>?)
              ?.map((e) =>
                  GeographicalIntervalLimit.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TicketProductDataToJson(TicketProductData instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'productVersion': instance.productVersion,
      'productDescription': instance.productDescription,
      'productTypeCode': instance.productTypeCode,
      'extCodProduct': instance.extCodProduct,
      'priceRef': instance.priceRef?.toJson(),
      'promotion': instance.promotion?.toJson(),
      'services': instance.services?.map((e) => e.toJson()).toList(),
      'geographicalIntervalLimit':
          instance.geographicalIntervalLimit?.map((e) => e.toJson()).toList(),
    };

TicketSalesPackageData _$TicketSalesPackageDataFromJson(
        Map<String, dynamic> json) =>
    TicketSalesPackageData(
      salesPackageId: json['salesPackageId'] as String?,
      salesPackageDescription: json['salesPackageDescription'] as String?,
      salesPackageCcy: json['salesPackageCcy'] as String?,
      salesPackagePrice: (json['salesPackagePrice'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$TicketSalesPackageDataToJson(
        TicketSalesPackageData instance) =>
    <String, dynamic>{
      'salesPackageId': instance.salesPackageId,
      'salesPackageDescription': instance.salesPackageDescription,
      'salesPackageCcy': instance.salesPackageCcy,
      'salesPackagePrice': instance.salesPackagePrice,
    };

TicketPriceReference _$TicketPriceReferenceFromJson(
        Map<String, dynamic> json) =>
    TicketPriceReference(
      fareTableCellId: json['fareTableCellId'] as String?,
      fareTableCellName: json['fareTableCellName'] as String?,
      serviceId: json['serviceId'] as String?,
      serviceName: json['serviceName'] as String?,
      serviceOrganisationRef: json['serviceOrganisationRef'] as String?,
      fareZoneId: json['fareZoneId'] as String?,
      fareZoneName: json['fareZoneName'] as String?,
      validityPeriodId: json['validityPeriodId'] as String?,
      validityPeriodName: json['validityPeriodName'] as String?,
      temporalValidityId: json['temporalValidityId'] as String?,
      temporalValidityName: json['temporalValidityName'] as String?,
      customerProfileId: json['customerProfileId'] as String?,
      customerProfileName: json['customerProfileName'] as String?,
      geographicalId: json['geographicalId'] as String?,
      geographicalName: json['geographicalName'] as String?,
      distanceMatrixElementId: json['distanceMatrixElementId'] as String?,
      distanceMatrixElementName: json['distanceMatrixElementName'] as String?,
      mediaType: json['mediaType'] as String?,
      mediaDescriptionType: json['mediaDescriptionType'] as String?,
      distributionTouchpointId: json['distributionTouchpointId'] as String?,
      distributionTouchpointName: json['distributionTouchpointName'] as String?,
      distributionTouchpointType: json['distributionTouchpointType'] as String?,
    );

Map<String, dynamic> _$TicketPriceReferenceToJson(
        TicketPriceReference instance) =>
    <String, dynamic>{
      'fareTableCellId': instance.fareTableCellId,
      'fareTableCellName': instance.fareTableCellName,
      'serviceId': instance.serviceId,
      'serviceName': instance.serviceName,
      'serviceOrganisationRef': instance.serviceOrganisationRef,
      'fareZoneId': instance.fareZoneId,
      'fareZoneName': instance.fareZoneName,
      'validityPeriodId': instance.validityPeriodId,
      'validityPeriodName': instance.validityPeriodName,
      'temporalValidityId': instance.temporalValidityId,
      'temporalValidityName': instance.temporalValidityName,
      'customerProfileId': instance.customerProfileId,
      'customerProfileName': instance.customerProfileName,
      'geographicalId': instance.geographicalId,
      'geographicalName': instance.geographicalName,
      'distanceMatrixElementId': instance.distanceMatrixElementId,
      'distanceMatrixElementName': instance.distanceMatrixElementName,
      'mediaType': instance.mediaType,
      'mediaDescriptionType': instance.mediaDescriptionType,
      'distributionTouchpointId': instance.distributionTouchpointId,
      'distributionTouchpointName': instance.distributionTouchpointName,
      'distributionTouchpointType': instance.distributionTouchpointType,
    };

InfrastructureElement _$InfrastructureElementFromJson(
        Map<String, dynamic> json) =>
    InfrastructureElement(
      id: json['id'] as String,
      type: infrastructureElementTypeFromJson(json['type']),
      code: json['code'] as String?,
      publicCode: json['publicCode'] as String?,
      codeZone: json['codeZone'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InfrastructureElementToJson(
        InfrastructureElement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': infrastructureElementTypeToJson(instance.type),
      'code': instance.code,
      'publicCode': instance.publicCode,
      'codeZone': instance.codeZone,
      'location': instance.location?.toJson(),
    };

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      precision: (json['precision'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'precision': instance.precision,
    };

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      productId: json['productId'] as String,
      productVersion: json['productVersion'] as int?,
      productName: json['productName'] as String?,
      productType: json['productType'] as String?,
      productTypeDesc: json['productTypeDesc'] as String?,
      productStartValidity: json['productStartValidity'] == null
          ? null
          : DateTime.parse(json['productStartValidity'] as String),
      productEndValidity: json['productEndValidity'] == null
          ? null
          : DateTime.parse(json['productEndValidity'] as String),
      deadline: json['deadline'] as int?,
      advanceSale: json['advanceSale'] as int?,
      codeExternal: json['codeExternal'] as String?,
      notSoldSeparately: json['notSoldSeparately'] as bool?,
      scopingValidityParameters: json['scopingValidityParameters'] == null
          ? null
          : ScopingValidityParameter.fromJson(
              json['scopingValidityParameters'] as Map<String, dynamic>),
      temporalValidityParameters: (json['temporalValidityParameters']
                  as List<dynamic>?)
              ?.map((e) =>
                  TemporalValidityParameter.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      usageParameters: json['usageParameters'] == null
          ? null
          : UsageParameter.fromJson(
              json['usageParameters'] as Map<String, dynamic>),
      scopingGeographicalParameters: json['scopingGeographicalParameters'] ==
              null
          ? null
          : ScopingGeographicalParameter.fromJson(
              json['scopingGeographicalParameters'] as Map<String, dynamic>),
      distributionTouchPoints: (json['distributionTouchPoints']
                  as List<dynamic>?)
              ?.map((e) =>
                  DistributionTouchPoint.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      mediaSet: (json['mediaSet'] as List<dynamic>?)
              ?.map((e) => MediaSet.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      fareTable: json['fareTable'] == null
          ? null
          : FareTable.fromJson(json['fareTable'] as Map<String, dynamic>),
      fareFrame: json['fareFrame'] == null
          ? null
          : FareFrame.fromJson(json['fareFrame'] as Map<String, dynamic>),
      customerNumber: json['customerNumber'] as int?,
      sellers: (json['sellers'] as List<dynamic>?)
              ?.map((e) => OrganisationRef.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      promotions: (json['promotions'] as List<dynamic>?)
              ?.map((e) => Promotion.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'productId': instance.productId,
      'productVersion': instance.productVersion,
      'productName': instance.productName,
      'productType': instance.productType,
      'productTypeDesc': instance.productTypeDesc,
      'productStartValidity': _dateToJson(instance.productStartValidity),
      'productEndValidity': _dateToJson(instance.productEndValidity),
      'deadline': instance.deadline,
      'advanceSale': instance.advanceSale,
      'codeExternal': instance.codeExternal,
      'notSoldSeparately': instance.notSoldSeparately,
      'scopingValidityParameters': instance.scopingValidityParameters?.toJson(),
      'temporalValidityParameters':
          instance.temporalValidityParameters?.map((e) => e.toJson()).toList(),
      'usageParameters': instance.usageParameters?.toJson(),
      'scopingGeographicalParameters':
          instance.scopingGeographicalParameters?.toJson(),
      'distributionTouchPoints':
          instance.distributionTouchPoints?.map((e) => e.toJson()).toList(),
      'mediaSet': instance.mediaSet?.map((e) => e.toJson()).toList(),
      'fareTable': instance.fareTable?.toJson(),
      'fareFrame': instance.fareFrame?.toJson(),
      'customerNumber': instance.customerNumber,
      'sellers': instance.sellers?.map((e) => e.toJson()).toList(),
      'promotions': instance.promotions?.map((e) => e.toJson()).toList(),
    };

FareFrame _$FareFrameFromJson(Map<String, dynamic> json) => FareFrame(
      fareFrameId: json['fareFrameId'] as String?,
      fareFrameName: json['fareFrameName'] as String?,
      organisations: (json['organisations'] as List<dynamic>?)
              ?.map((e) => Organisation.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$FareFrameToJson(FareFrame instance) => <String, dynamic>{
      'fareFrameId': instance.fareFrameId,
      'fareFrameName': instance.fareFrameName,
      'organisations': instance.organisations?.map((e) => e.toJson()).toList(),
    };

Organisation _$OrganisationFromJson(Map<String, dynamic> json) => Organisation(
      organisationName: json['organisationName'] as String?,
      organisationId: json['organisationId'] as String?,
      publicCode: json['publicCode'] as String?,
      organisationTypeCode: organisationOrganisationTypeCodeNullableFromJson(
          json['organisationTypeCode']),
      agreements: (json['agreements'] as List<dynamic>?)
              ?.map((e) => Agreement.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$OrganisationToJson(Organisation instance) =>
    <String, dynamic>{
      'organisationName': instance.organisationName,
      'organisationId': instance.organisationId,
      'publicCode': instance.publicCode,
      'organisationTypeCode': organisationOrganisationTypeCodeNullableToJson(
          instance.organisationTypeCode),
      'agreements': instance.agreements?.map((e) => e.toJson()).toList(),
    };

Agreement _$AgreementFromJson(Map<String, dynamic> json) => Agreement(
      agreementId: json['agreementId'] as String?,
      agreementType:
          agreementAgreementTypeNullableFromJson(json['agreementType']),
      organisationIdMaster: json['organisationIdMaster'] as String?,
      organisationIdSecondary: json['organisationIdSecondary'] as String?,
      agreementDate: json['agreementDate'] == null
          ? null
          : DateTime.parse(json['agreementDate'] as String),
    );

Map<String, dynamic> _$AgreementToJson(Agreement instance) => <String, dynamic>{
      'agreementId': instance.agreementId,
      'agreementType':
          agreementAgreementTypeNullableToJson(instance.agreementType),
      'organisationIdMaster': instance.organisationIdMaster,
      'organisationIdSecondary': instance.organisationIdSecondary,
      'agreementDate': _dateToJson(instance.agreementDate),
    };

ScopingValidityParameter _$ScopingValidityParameterFromJson(
        Map<String, dynamic> json) =>
    ScopingValidityParameter(
      services: (json['services'] as List<dynamic>?)
              ?.map((e) => Service.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      fareZones: (json['fareZones'] as List<dynamic>?)
              ?.map((e) => FareZone.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ScopingValidityParameterToJson(
        ScopingValidityParameter instance) =>
    <String, dynamic>{
      'services': instance.services?.map((e) => e.toJson()).toList(),
      'fareZones': instance.fareZones?.map((e) => e.toJson()).toList(),
    };

Service _$ServiceFromJson(Map<String, dynamic> json) => Service(
      scopingValidityParameterId: json['scopingValidityParameterId'] as String?,
      scopingValidityParameterName:
          json['scopingValidityParameterName'] as String?,
      scopingValidityClassificationCode:
          serviceScopingValidityClassificationCodeNullableFromJson(
              json['scopingValidityClassificationCode']),
      scopingValidityParameterType:
          json['scopingValidityParameterType'] as String?,
      scopingValidityTransportModeCode:
          json['scopingValidityTransportModeCode'] as String?,
      codeExternal: json['codeExternal'] as String?,
      serviceOrganisationRef: json['serviceOrganisationRef'] as String?,
      lines: (json['lines'] as List<dynamic>?)
              ?.map((e) => Line.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ServiceToJson(Service instance) => <String, dynamic>{
      'scopingValidityParameterId': instance.scopingValidityParameterId,
      'scopingValidityParameterName': instance.scopingValidityParameterName,
      'scopingValidityClassificationCode':
          serviceScopingValidityClassificationCodeNullableToJson(
              instance.scopingValidityClassificationCode),
      'scopingValidityParameterType': instance.scopingValidityParameterType,
      'scopingValidityTransportModeCode':
          instance.scopingValidityTransportModeCode,
      'codeExternal': instance.codeExternal,
      'serviceOrganisationRef': instance.serviceOrganisationRef,
      'lines': instance.lines?.map((e) => e.toJson()).toList(),
    };

Line _$LineFromJson(Map<String, dynamic> json) => Line(
      lineId: json['lineId'] as String?,
      lineDescription: json['lineDescription'] as String?,
      transportModeCode: json['transportModeCode'] as String?,
      transportModeDescription: json['transportModeDescription'] as String?,
      transportSubModeCode: json['transportSubModeCode'] as String?,
      transportSubModeDescription:
          json['transportSubModeDescription'] as String?,
    );

Map<String, dynamic> _$LineToJson(Line instance) => <String, dynamic>{
      'lineId': instance.lineId,
      'lineDescription': instance.lineDescription,
      'transportModeCode': instance.transportModeCode,
      'transportModeDescription': instance.transportModeDescription,
      'transportSubModeCode': instance.transportSubModeCode,
      'transportSubModeDescription': instance.transportSubModeDescription,
    };

ServiceRef _$ServiceRefFromJson(Map<String, dynamic> json) => ServiceRef(
      serviceId: json['serviceId'] as String?,
      serviceName: json['serviceName'] as String?,
      serviceOrganisationRef: json['serviceOrganisationRef'] as String?,
      transportModeCode: json['transportModeCode'] as String?,
    );

Map<String, dynamic> _$ServiceRefToJson(ServiceRef instance) =>
    <String, dynamic>{
      'serviceId': instance.serviceId,
      'serviceName': instance.serviceName,
      'serviceOrganisationRef': instance.serviceOrganisationRef,
      'transportModeCode': instance.transportModeCode,
    };

ServiceRestriction _$ServiceRestrictionFromJson(Map<String, dynamic> json) =>
    ServiceRestriction(
      restrictionOn: serviceRestrictionRestrictionOnNullableFromJson(
          json['restrictionOn']),
      restrictionType: serviceRestrictionRestrictionTypeNullableFromJson(
          json['restrictionType']),
    );

Map<String, dynamic> _$ServiceRestrictionToJson(ServiceRestriction instance) =>
    <String, dynamic>{
      'restrictionOn':
          serviceRestrictionRestrictionOnNullableToJson(instance.restrictionOn),
      'restrictionType': serviceRestrictionRestrictionTypeNullableToJson(
          instance.restrictionType),
    };

RestrictedServiceRef _$RestrictedServiceRefFromJson(
        Map<String, dynamic> json) =>
    RestrictedServiceRef(
      serviceRestriction: json['serviceRestriction'] == null
          ? null
          : ServiceRestriction.fromJson(
              json['serviceRestriction'] as Map<String, dynamic>),
      serviceId: json['serviceId'] as String?,
      serviceName: json['serviceName'] as String?,
      serviceOrganisationRef: json['serviceOrganisationRef'] as String?,
      transportModeCode: json['transportModeCode'] as String?,
    );

Map<String, dynamic> _$RestrictedServiceRefToJson(
        RestrictedServiceRef instance) =>
    <String, dynamic>{
      'serviceRestriction': instance.serviceRestriction?.toJson(),
      'serviceId': instance.serviceId,
      'serviceName': instance.serviceName,
      'serviceOrganisationRef': instance.serviceOrganisationRef,
      'transportModeCode': instance.transportModeCode,
    };

FareZone _$FareZoneFromJson(Map<String, dynamic> json) => FareZone(
      scopingValidityParameterId: json['scopingValidityParameterId'] as String?,
      scopingValidityParameterName:
          json['scopingValidityParameterName'] as String?,
      scopingValidityParameterType:
          fareZoneScopingValidityParameterTypeNullableFromJson(
              json['scopingValidityParameterType']),
      permutationKNumber: json['permutationKNumber'] as int?,
      groupType: fareZoneGroupTypeNullableFromJson(json['groupType']),
      zones: (json['zones'] as List<dynamic>?)
              ?.map((e) => Zone.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$FareZoneToJson(FareZone instance) => <String, dynamic>{
      'scopingValidityParameterId': instance.scopingValidityParameterId,
      'scopingValidityParameterName': instance.scopingValidityParameterName,
      'scopingValidityParameterType':
          fareZoneScopingValidityParameterTypeNullableToJson(
              instance.scopingValidityParameterType),
      'permutationKNumber': instance.permutationKNumber,
      'groupType': fareZoneGroupTypeNullableToJson(instance.groupType),
      'zones': instance.zones?.map((e) => e.toJson()).toList(),
    };

Zone _$ZoneFromJson(Map<String, dynamic> json) => Zone(
      zoneWeight: json['zoneWeight'] as int?,
      codeExternal: json['codeExternal'] as String?,
      networkElementId: json['networkElementId'] as String?,
      networkElementName: json['networkElementName'] as String?,
      appliedTariffType:
          zoneAppliedTariffTypeNullableFromJson(json['appliedTariffType']),
    );

Map<String, dynamic> _$ZoneToJson(Zone instance) => <String, dynamic>{
      'zoneWeight': instance.zoneWeight,
      'codeExternal': instance.codeExternal,
      'networkElementId': instance.networkElementId,
      'networkElementName': instance.networkElementName,
      'appliedTariffType':
          zoneAppliedTariffTypeNullableToJson(instance.appliedTariffType),
    };

TemporalValidityParameter _$TemporalValidityParameterFromJson(
        Map<String, dynamic> json) =>
    TemporalValidityParameter(
      temporalValidityParameterId:
          json['temporalValidityParameterId'] as String?,
      temporalValidityParameterName:
          json['temporalValidityParameterName'] as String?,
      dayType: json['dayType'] == null
          ? null
          : DayType.fromJson(json['dayType'] as Map<String, dynamic>),
      datetimeBands: (json['datetimeBands'] as List<dynamic>?)
              ?.map((e) => DateTimeBand.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TemporalValidityParameterToJson(
        TemporalValidityParameter instance) =>
    <String, dynamic>{
      'temporalValidityParameterId': instance.temporalValidityParameterId,
      'temporalValidityParameterName': instance.temporalValidityParameterName,
      'dayType': instance.dayType?.toJson(),
      'datetimeBands': instance.datetimeBands?.map((e) => e.toJson()).toList(),
    };

DayType _$DayTypeFromJson(Map<String, dynamic> json) => DayType(
      name: json['name'] as String?,
      dayTypeId: json['dayTypeId'] as String?,
      properties: json['properties'] as String?,
    );

Map<String, dynamic> _$DayTypeToJson(DayType instance) => <String, dynamic>{
      'name': instance.name,
      'dayTypeId': instance.dayTypeId,
      'properties': instance.properties,
    };

DateTimeBand _$DateTimeBandFromJson(Map<String, dynamic> json) => DateTimeBand(
      dateEnd: json['dateEnd'] == null
          ? null
          : DateTime.parse(json['dateEnd'] as String),
      timeEnd: json['timeEnd'] as String?,
      typeBand: dateTimeBandTypeBandNullableFromJson(json['typeBand']),
      dateStart: json['dateStart'] == null
          ? null
          : DateTime.parse(json['dateStart'] as String),
      timeStart: json['timeStart'] as String?,
      blackOutUse: dateTimeBandBlackOutUseNullableFromJson(json['blackOutUse']),
      datetimeBandId: json['datetimeBandId'] as String?,
      codeExternal: json['codeExternal'] as String?,
    );

Map<String, dynamic> _$DateTimeBandToJson(DateTimeBand instance) =>
    <String, dynamic>{
      'dateEnd': _dateToJson(instance.dateEnd),
      'timeEnd': instance.timeEnd,
      'typeBand': dateTimeBandTypeBandNullableToJson(instance.typeBand),
      'dateStart': _dateToJson(instance.dateStart),
      'timeStart': instance.timeStart,
      'blackOutUse':
          dateTimeBandBlackOutUseNullableToJson(instance.blackOutUse),
      'datetimeBandId': instance.datetimeBandId,
      'codeExternal': instance.codeExternal,
    };

UsageParameter _$UsageParameterFromJson(Map<String, dynamic> json) =>
    UsageParameter(
      validityPeriods: (json['validityPeriods'] as List<dynamic>?)
              ?.map((e) => ValidityPeriod.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      customerProfiles: (json['customerProfiles'] as List<dynamic>?)
              ?.map((e) => CustomerProfile.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      frequenciesOfUse: (json['frequenciesOfUse'] as List<dynamic>?)
              ?.map((e) => FrequenciesOfUse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      luggageSetAllowance: (json['luggageSetAllowance'] as List<dynamic>?)
              ?.map((e) =>
                  LuggageSetAllowance.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      transferability: json['transferability'] == null
          ? null
          : Transferability.fromJson(
              json['transferability'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsageParameterToJson(UsageParameter instance) =>
    <String, dynamic>{
      'validityPeriods':
          instance.validityPeriods?.map((e) => e.toJson()).toList(),
      'customerProfiles':
          instance.customerProfiles?.map((e) => e.toJson()).toList(),
      'frequenciesOfUse':
          instance.frequenciesOfUse?.map((e) => e.toJson()).toList(),
      'luggageSetAllowance':
          instance.luggageSetAllowance?.map((e) => e.toJson()).toList(),
      'transferability': instance.transferability?.toJson(),
    };

ValidityPeriod _$ValidityPeriodFromJson(Map<String, dynamic> json) =>
    ValidityPeriod(
      usageParameterId: json['usageParameterId'] as String?,
      usageParameterName: json['usageParameterName'] as String?,
      typeUsageParameter: validityPeriodTypeUsageParameterNullableFromJson(
          json['typeUsageParameter']),
      validityPeriodName: json['validityPeriodName'] as String?,
      validityPeriodType: validityPeriodValidityPeriodTypeNullableFromJson(
          json['validityPeriodType']),
      standardDuration: json['standardDuration'] as int?,
      trigger: json['trigger'] == null
          ? null
          : Trigger.fromJson(json['trigger'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ValidityPeriodToJson(ValidityPeriod instance) =>
    <String, dynamic>{
      'usageParameterId': instance.usageParameterId,
      'usageParameterName': instance.usageParameterName,
      'typeUsageParameter': validityPeriodTypeUsageParameterNullableToJson(
          instance.typeUsageParameter),
      'validityPeriodName': instance.validityPeriodName,
      'validityPeriodType': validityPeriodValidityPeriodTypeNullableToJson(
          instance.validityPeriodType),
      'standardDuration': instance.standardDuration,
      'trigger': instance.trigger?.toJson(),
    };

Trigger _$TriggerFromJson(Map<String, dynamic> json) => Trigger(
      usageTriggerType:
          triggerUsageTriggerTypeNullableFromJson(json['usageTriggerType']),
      startValidation: json['startValidation'] as String?,
      usageTriggerPeriod: json['usageTriggerPeriod'] as String?,
    );

Map<String, dynamic> _$TriggerToJson(Trigger instance) => <String, dynamic>{
      'usageTriggerType':
          triggerUsageTriggerTypeNullableToJson(instance.usageTriggerType),
      'startValidation': instance.startValidation,
      'usageTriggerPeriod': instance.usageTriggerPeriod,
    };

TravelSummary _$TravelSummaryFromJson(Map<String, dynamic> json) =>
    TravelSummary(
      distance: json['distance'] as int?,
      distanceUnit:
          travelSummaryDistanceUnitNullableFromJson(json['distanceUnit']),
      duration: json['duration'] as int?,
      durationUnit:
          travelSummaryDurationUnitNullableFromJson(json['durationUnit']),
    );

Map<String, dynamic> _$TravelSummaryToJson(TravelSummary instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'distanceUnit':
          travelSummaryDistanceUnitNullableToJson(instance.distanceUnit),
      'duration': instance.duration,
      'durationUnit':
          travelSummaryDurationUnitNullableToJson(instance.durationUnit),
    };

CustomerProfile _$CustomerProfileFromJson(Map<String, dynamic> json) =>
    CustomerProfile(
      usageParameterId: json['usageParameterId'] as String?,
      usageParameterName: json['usageParameterName'] as String?,
      typeUsageParameter: customerProfileTypeUsageParameterNullableFromJson(
          json['typeUsageParameter']),
      minimumAge: json['minimumAge'] as int?,
      maximumAge: json['maximumAge'] as int?,
      minimumHeight: json['minimumHeight'] as int?,
      maximumHeight: json['maximumHeight'] as int?,
      minimumIncome: (json['minimumIncome'] as num?)?.toDouble(),
      maximumIncome: (json['maximumIncome'] as num?)?.toDouble(),
      localResident: json['localResident'] as int?,
    );

Map<String, dynamic> _$CustomerProfileToJson(CustomerProfile instance) =>
    <String, dynamic>{
      'usageParameterId': instance.usageParameterId,
      'usageParameterName': instance.usageParameterName,
      'typeUsageParameter': customerProfileTypeUsageParameterNullableToJson(
          instance.typeUsageParameter),
      'minimumAge': instance.minimumAge,
      'maximumAge': instance.maximumAge,
      'minimumHeight': instance.minimumHeight,
      'maximumHeight': instance.maximumHeight,
      'minimumIncome': instance.minimumIncome,
      'maximumIncome': instance.maximumIncome,
      'localResident': instance.localResident,
    };

FrequenciesOfUse _$FrequenciesOfUseFromJson(Map<String, dynamic> json) =>
    FrequenciesOfUse(
      usageParameterId: json['usageParameterId'] as String?,
      usageParameterName: json['usageParameterName'] as String?,
      typeUsageParameter: frequenciesOfUseTypeUsageParameterNullableFromJson(
          json['typeUsageParameter']),
      maximalFrequency: json['maximalFrequency'] as int?,
      minimalFrequency: json['minimalFrequency'] as int?,
      service: json['service'] == null
          ? null
          : RestrictedServiceRef.fromJson(
              json['service'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FrequenciesOfUseToJson(FrequenciesOfUse instance) =>
    <String, dynamic>{
      'usageParameterId': instance.usageParameterId,
      'usageParameterName': instance.usageParameterName,
      'typeUsageParameter': frequenciesOfUseTypeUsageParameterNullableToJson(
          instance.typeUsageParameter),
      'maximalFrequency': instance.maximalFrequency,
      'minimalFrequency': instance.minimalFrequency,
      'service': instance.service?.toJson(),
    };

LuggageSetAllowance _$LuggageSetAllowanceFromJson(Map<String, dynamic> json) =>
    LuggageSetAllowance(
      usageParameterId: json['usageParameterId'] as String?,
      usageParameterName: json['usageParameterName'] as String?,
      typeUsageParameter: luggageSetAllowanceTypeUsageParameterNullableFromJson(
          json['typeUsageParameter']),
      numberItems: json['numberItems'] as int?,
      totalWeight: json['totalWeight'] as int?,
      baggageType:
          luggageSetAllowanceBaggageTypeNullableFromJson(json['baggageType']),
      service: json['service'] == null
          ? null
          : ServiceRef.fromJson(json['service'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LuggageSetAllowanceToJson(
        LuggageSetAllowance instance) =>
    <String, dynamic>{
      'usageParameterId': instance.usageParameterId,
      'usageParameterName': instance.usageParameterName,
      'typeUsageParameter': luggageSetAllowanceTypeUsageParameterNullableToJson(
          instance.typeUsageParameter),
      'numberItems': instance.numberItems,
      'totalWeight': instance.totalWeight,
      'baggageType':
          luggageSetAllowanceBaggageTypeNullableToJson(instance.baggageType),
      'service': instance.service?.toJson(),
    };

Transferability _$TransferabilityFromJson(Map<String, dynamic> json) =>
    Transferability(
      usageParameterId: json['usageParameterId'] as String?,
      usageParameterName: json['usageParameterName'] as String?,
      typeUsageParameter: json['typeUsageParameter'] as String?,
      canTransfer: json['canTransfer'] as bool?,
      maximumNumberOfNamedTransferees:
          json['maximumNumberOfNamedTransferees'] as int?,
    );

Map<String, dynamic> _$TransferabilityToJson(Transferability instance) =>
    <String, dynamic>{
      'usageParameterId': instance.usageParameterId,
      'usageParameterName': instance.usageParameterName,
      'typeUsageParameter': instance.typeUsageParameter,
      'canTransfer': instance.canTransfer,
      'maximumNumberOfNamedTransferees':
          instance.maximumNumberOfNamedTransferees,
    };

ScopingGeographicalParameter _$ScopingGeographicalParameterFromJson(
        Map<String, dynamic> json) =>
    ScopingGeographicalParameter(
      geographicalIntervals: (json['geographicalIntervals'] as List<dynamic>?)
              ?.map((e) =>
                  GeographicalInterval.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      distanceMatrixElements: (json['distanceMatrixElements'] as List<dynamic>?)
              ?.map((e) =>
                  DistanceMatrixElement.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ScopingGeographicalParameterToJson(
        ScopingGeographicalParameter instance) =>
    <String, dynamic>{
      'geographicalIntervals':
          instance.geographicalIntervals?.map((e) => e.toJson()).toList(),
      'distanceMatrixElements':
          instance.distanceMatrixElements?.map((e) => e.toJson()).toList(),
    };

GeographicalInterval _$GeographicalIntervalFromJson(
        Map<String, dynamic> json) =>
    GeographicalInterval(
      scopingGeographicalId: json['scopingGeographicalId'] as String?,
      scopingGeographicalName: json['scopingGeographicalName'] as String?,
      scopingGeographicalType:
          geographicalIntervalScopingGeographicalTypeNullableFromJson(
              json['scopingGeographicalType']),
      unitNumber: json['unitNumber'] as int?,
      intervalType: geographicalIntervalIntervalTypeNullableFromJson(
          json['intervalType']),
      endGeographicalInterval:
          (json['endGeographicalInterval'] as num?)?.toDouble(),
      startGeographicalInterval:
          (json['startGeographicalInterval'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$GeographicalIntervalToJson(
        GeographicalInterval instance) =>
    <String, dynamic>{
      'scopingGeographicalId': instance.scopingGeographicalId,
      'scopingGeographicalName': instance.scopingGeographicalName,
      'scopingGeographicalType':
          geographicalIntervalScopingGeographicalTypeNullableToJson(
              instance.scopingGeographicalType),
      'unitNumber': instance.unitNumber,
      'intervalType':
          geographicalIntervalIntervalTypeNullableToJson(instance.intervalType),
      'endGeographicalInterval': instance.endGeographicalInterval,
      'startGeographicalInterval': instance.startGeographicalInterval,
    };

DistanceMatrixElement _$DistanceMatrixElementFromJson(
        Map<String, dynamic> json) =>
    DistanceMatrixElement(
      scopingdistanceMatrixElementId:
          json['scopingdistanceMatrixElementId'] as String?,
      scopingdistanceMatrixElementName:
          json['scopingdistanceMatrixElementName'] as String?,
      originScheduledStoppoint: json['originScheduledStoppoint'] as String?,
      destinationScheduledStoppoint:
          json['destinationScheduledStoppoint'] as String?,
      distance: json['distance'] as int?,
      startScheduledStoppoint: json['startScheduledStoppoint'] as String?,
      endScheduledStoppoint: json['endScheduledStoppoint'] as String?,
      startTariffZone: json['startTariffZone'] as String?,
      endTariffZone: json['endTariffZone'] as String?,
    );

Map<String, dynamic> _$DistanceMatrixElementToJson(
        DistanceMatrixElement instance) =>
    <String, dynamic>{
      'scopingdistanceMatrixElementId': instance.scopingdistanceMatrixElementId,
      'scopingdistanceMatrixElementName':
          instance.scopingdistanceMatrixElementName,
      'originScheduledStoppoint': instance.originScheduledStoppoint,
      'destinationScheduledStoppoint': instance.destinationScheduledStoppoint,
      'distance': instance.distance,
      'startScheduledStoppoint': instance.startScheduledStoppoint,
      'endScheduledStoppoint': instance.endScheduledStoppoint,
      'startTariffZone': instance.startTariffZone,
      'endTariffZone': instance.endTariffZone,
    };

DistributionTouchPoint _$DistributionTouchPointFromJson(
        Map<String, dynamic> json) =>
    DistributionTouchPoint(
      touchPoints: (json['touchPoints'] as List<dynamic>?)
              ?.map((e) => TouchPoint.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      endValidity: json['endValidity'] == null
          ? null
          : DateTime.parse(json['endValidity'] as String),
      startValidity: json['startValidity'] == null
          ? null
          : DateTime.parse(json['startValidity'] as String),
      distributionAssignmentId: json['distributionAssignmentId'] as String?,
      distributionTouchpointType:
          distributionTouchPointDistributionTouchpointTypeNullableFromJson(
              json['distributionTouchpointType']),
    );

Map<String, dynamic> _$DistributionTouchPointToJson(
        DistributionTouchPoint instance) =>
    <String, dynamic>{
      'touchPoints': instance.touchPoints?.map((e) => e.toJson()).toList(),
      'endValidity': _dateToJson(instance.endValidity),
      'startValidity': _dateToJson(instance.startValidity),
      'distributionAssignmentId': instance.distributionAssignmentId,
      'distributionTouchpointType':
          distributionTouchPointDistributionTouchpointTypeNullableToJson(
              instance.distributionTouchpointType),
    };

Promotion _$PromotionFromJson(Map<String, dynamic> json) => Promotion(
      promotionAssignmentId: json['promotionAssignmentId'] as String?,
      promotionId: json['promotionId'] as String?,
      promotionName: json['promotionName'] as String?,
      promotionType: json['promotionType'] == null
          ? null
          : PromotionType.fromJson(
              json['promotionType'] as Map<String, dynamic>),
      promotionValue: (json['promotionValue'] as num?)?.toDouble(),
      isCombinable: json['isCombinable'] as bool?,
      customerProfile: json['customerProfile'] == null
          ? null
          : CustomerProfile.fromJson(
              json['customerProfile'] as Map<String, dynamic>),
      endValidity: json['endValidity'] == null
          ? null
          : DateTime.parse(json['endValidity'] as String),
      startValidity: json['startValidity'] == null
          ? null
          : DateTime.parse(json['startValidity'] as String),
    );

Map<String, dynamic> _$PromotionToJson(Promotion instance) => <String, dynamic>{
      'promotionAssignmentId': instance.promotionAssignmentId,
      'promotionId': instance.promotionId,
      'promotionName': instance.promotionName,
      'promotionType': instance.promotionType?.toJson(),
      'promotionValue': instance.promotionValue,
      'isCombinable': instance.isCombinable,
      'customerProfile': instance.customerProfile?.toJson(),
      'endValidity': _dateToJson(instance.endValidity),
      'startValidity': _dateToJson(instance.startValidity),
    };

PromotionType _$PromotionTypeFromJson(Map<String, dynamic> json) =>
    PromotionType(
      promotionType:
          promotionTypePromotionTypeNullableFromJson(json['promotionType']),
      promotionTypeDesc: json['promotionTypeDesc'] as String?,
    );

Map<String, dynamic> _$PromotionTypeToJson(PromotionType instance) =>
    <String, dynamic>{
      'promotionType':
          promotionTypePromotionTypeNullableToJson(instance.promotionType),
      'promotionTypeDesc': instance.promotionTypeDesc,
    };

PromotionRef _$PromotionRefFromJson(Map<String, dynamic> json) => PromotionRef(
      promotionId: json['promotionId'] as String?,
      promotionDescription: json['promotionDescription'] as String?,
    );

Map<String, dynamic> _$PromotionRefToJson(PromotionRef instance) =>
    <String, dynamic>{
      'promotionId': instance.promotionId,
      'promotionDescription': instance.promotionDescription,
    };

TouchPoint _$TouchPointFromJson(Map<String, dynamic> json) => TouchPoint(
      distributionTouchpointId: json['distributionTouchpointId'] as String?,
      distributionTouchpointName: json['distributionTouchpointName'] as String?,
      codeExternal: json['codeExternal'] as String?,
      distributionTouchpointType:
          touchPointDistributionTouchpointTypeNullableFromJson(
              json['distributionTouchpointType']),
    );

Map<String, dynamic> _$TouchPointToJson(TouchPoint instance) =>
    <String, dynamic>{
      'distributionTouchpointId': instance.distributionTouchpointId,
      'distributionTouchpointName': instance.distributionTouchpointName,
      'codeExternal': instance.codeExternal,
      'distributionTouchpointType':
          touchPointDistributionTouchpointTypeNullableToJson(
              instance.distributionTouchpointType),
    };

MediaSet _$MediaSetFromJson(Map<String, dynamic> json) => MediaSet(
      mediaTypeRef: json['mediaTypeRef'] == null
          ? null
          : MediaTypeRef.fromJson(json['mediaTypeRef'] as Map<String, dynamic>),
      mediaAssignmentId: json['mediaAssignmentId'] as String?,
      endValidity: json['endValidity'] == null
          ? null
          : DateTime.parse(json['endValidity'] as String),
      startValidity: json['startValidity'] == null
          ? null
          : DateTime.parse(json['startValidity'] as String),
    );

Map<String, dynamic> _$MediaSetToJson(MediaSet instance) => <String, dynamic>{
      'mediaTypeRef': instance.mediaTypeRef?.toJson(),
      'mediaAssignmentId': instance.mediaAssignmentId,
      'endValidity': _dateToJson(instance.endValidity),
      'startValidity': _dateToJson(instance.startValidity),
    };

MediaTypeRef _$MediaTypeRefFromJson(Map<String, dynamic> json) => MediaTypeRef(
      mediaType: mediaTypeRefMediaTypeNullableFromJson(json['mediaType']),
      descriptionType: json['descriptionType'] as String?,
    );

Map<String, dynamic> _$MediaTypeRefToJson(MediaTypeRef instance) =>
    <String, dynamic>{
      'mediaType': mediaTypeRefMediaTypeNullableToJson(instance.mediaType),
      'descriptionType': instance.descriptionType,
    };

FareTable _$FareTableFromJson(Map<String, dynamic> json) => FareTable(
      cells: (json['cells'] as List<dynamic>?)
              ?.map((e) => Cell.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$FareTableToJson(FareTable instance) => <String, dynamic>{
      'cells': instance.cells?.map((e) => e.toJson()).toList(),
    };

Cell _$CellFromJson(Map<String, dynamic> json) => Cell(
      cellId: json['cellId'] as String?,
      cellName: json['cellName'] as String?,
      ccyPrice: json['ccyPrice'] as String?,
      farePrice: (json['farePrice'] as num?)?.toDouble(),
      points: json['points'] as int?,
      priceFor: json['priceFor'] == null
          ? null
          : PriceFor.fromJson(json['priceFor'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CellToJson(Cell instance) => <String, dynamic>{
      'cellId': instance.cellId,
      'cellName': instance.cellName,
      'ccyPrice': instance.ccyPrice,
      'farePrice': instance.farePrice,
      'points': instance.points,
      'priceFor': instance.priceFor?.toJson(),
    };

PriceFor _$PriceForFromJson(Map<String, dynamic> json) => PriceFor(
      serviceRef: json['serviceRef'] == null
          ? null
          : ServiceRef.fromJson(json['serviceRef'] as Map<String, dynamic>),
      fareZoneRef: json['fareZoneRef'] == null
          ? null
          : FareZoneRef.fromJson(json['fareZoneRef'] as Map<String, dynamic>),
      validityPeriodRef: json['validityPeriodRef'] == null
          ? null
          : ValidityPeriodRef.fromJson(
              json['validityPeriodRef'] as Map<String, dynamic>),
      customerProfileRef: json['customerProfileRef'] == null
          ? null
          : CustomerProfileRef.fromJson(
              json['customerProfileRef'] as Map<String, dynamic>),
      distributionTouchPointRef: json['distributionTouchPointRef'] == null
          ? null
          : DistributionTouchPointRef.fromJson(
              json['distributionTouchPointRef'] as Map<String, dynamic>),
      geographicalIntervalRef: json['geographicalIntervalRef'] == null
          ? null
          : GeographicalIntervalRef.fromJson(
              json['geographicalIntervalRef'] as Map<String, dynamic>),
      distanceMatrixRef: json['distanceMatrixRef'] == null
          ? null
          : DistanceMatrixElementRef.fromJson(
              json['distanceMatrixRef'] as Map<String, dynamic>),
      mediaTypeRef: json['mediaTypeRef'] == null
          ? null
          : MediaTypeRef.fromJson(json['mediaTypeRef'] as Map<String, dynamic>),
      temporalValidityRef: json['temporalValidityRef'] == null
          ? null
          : TemporalValidityRef.fromJson(
              json['temporalValidityRef'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PriceForToJson(PriceFor instance) => <String, dynamic>{
      'serviceRef': instance.serviceRef?.toJson(),
      'fareZoneRef': instance.fareZoneRef?.toJson(),
      'validityPeriodRef': instance.validityPeriodRef?.toJson(),
      'customerProfileRef': instance.customerProfileRef?.toJson(),
      'distributionTouchPointRef': instance.distributionTouchPointRef?.toJson(),
      'geographicalIntervalRef': instance.geographicalIntervalRef?.toJson(),
      'distanceMatrixRef': instance.distanceMatrixRef?.toJson(),
      'mediaTypeRef': instance.mediaTypeRef?.toJson(),
      'temporalValidityRef': instance.temporalValidityRef?.toJson(),
    };

FareZoneRef _$FareZoneRefFromJson(Map<String, dynamic> json) => FareZoneRef(
      fareZoneId: json['fareZoneId'] as String?,
      fareZoneName: json['fareZoneName'] as String?,
    );

Map<String, dynamic> _$FareZoneRefToJson(FareZoneRef instance) =>
    <String, dynamic>{
      'fareZoneId': instance.fareZoneId,
      'fareZoneName': instance.fareZoneName,
    };

ValidityPeriodRef _$ValidityPeriodRefFromJson(Map<String, dynamic> json) =>
    ValidityPeriodRef(
      validityPeriodId: json['validityPeriodId'] as String?,
      validityPeriodName: json['validityPeriodName'] as String?,
    );

Map<String, dynamic> _$ValidityPeriodRefToJson(ValidityPeriodRef instance) =>
    <String, dynamic>{
      'validityPeriodId': instance.validityPeriodId,
      'validityPeriodName': instance.validityPeriodName,
    };

CustomerProfileRef _$CustomerProfileRefFromJson(Map<String, dynamic> json) =>
    CustomerProfileRef(
      customerProfileId: json['customerProfileId'] as String?,
      customerProfileName: json['customerProfileName'] as String?,
    );

Map<String, dynamic> _$CustomerProfileRefToJson(CustomerProfileRef instance) =>
    <String, dynamic>{
      'customerProfileId': instance.customerProfileId,
      'customerProfileName': instance.customerProfileName,
    };

DistributionTouchPointRef _$DistributionTouchPointRefFromJson(
        Map<String, dynamic> json) =>
    DistributionTouchPointRef(
      distributionTouchpointId: json['distributionTouchpointId'] as String?,
      distributionTouchpointName: json['distributionTouchpointName'] as String?,
      distributionTouchpointType: json['distributionTouchpointType'] as String?,
    );

Map<String, dynamic> _$DistributionTouchPointRefToJson(
        DistributionTouchPointRef instance) =>
    <String, dynamic>{
      'distributionTouchpointId': instance.distributionTouchpointId,
      'distributionTouchpointName': instance.distributionTouchpointName,
      'distributionTouchpointType': instance.distributionTouchpointType,
    };

GeographicalIntervalRef _$GeographicalIntervalRefFromJson(
        Map<String, dynamic> json) =>
    GeographicalIntervalRef(
      geographicalId: json['geographicalId'] as String?,
      geographicalName: json['geographicalName'] as String?,
    );

Map<String, dynamic> _$GeographicalIntervalRefToJson(
        GeographicalIntervalRef instance) =>
    <String, dynamic>{
      'geographicalId': instance.geographicalId,
      'geographicalName': instance.geographicalName,
    };

OrganisationRef _$OrganisationRefFromJson(Map<String, dynamic> json) =>
    OrganisationRef(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$OrganisationRefToJson(OrganisationRef instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

DistanceMatrixElementRef _$DistanceMatrixElementRefFromJson(
        Map<String, dynamic> json) =>
    DistanceMatrixElementRef(
      distanceMatrixElementId: json['distanceMatrixElementId'] as String?,
      distanceMatrixElementName: json['distanceMatrixElementName'] as String?,
    );

Map<String, dynamic> _$DistanceMatrixElementRefToJson(
        DistanceMatrixElementRef instance) =>
    <String, dynamic>{
      'distanceMatrixElementId': instance.distanceMatrixElementId,
      'distanceMatrixElementName': instance.distanceMatrixElementName,
    };

TemporalValidityRef _$TemporalValidityRefFromJson(Map<String, dynamic> json) =>
    TemporalValidityRef(
      temporalValidityId: json['temporalValidityId'] as String?,
      temporalValidityName: json['temporalValidityName'] as String?,
    );

Map<String, dynamic> _$TemporalValidityRefToJson(
        TemporalValidityRef instance) =>
    <String, dynamic>{
      'temporalValidityId': instance.temporalValidityId,
      'temporalValidityName': instance.temporalValidityName,
    };

SalesPackage _$SalesPackageFromJson(Map<String, dynamic> json) => SalesPackage(
      salesPackageId: json['salesPackageId'] as String?,
      salesPackageVersion: json['salesPackageVersion'] as int?,
      salesPackageName: json['salesPackageName'] as String?,
      salesPackageType: json['salesPackageType'] as String?,
      salesPackageTypeDesc: json['salesPackageTypeDesc'] as String?,
      salesPackageStartValidity: json['salesPackageStartValidity'] == null
          ? null
          : DateTime.parse(json['salesPackageStartValidity'] as String),
      salesPackageEndValidity: json['salesPackageEndValidity'] == null
          ? null
          : DateTime.parse(json['salesPackageEndValidity'] as String),
      customerNumber: json['customerNumber'] as int?,
      deadline: json['deadline'] as int?,
      advanceSale: json['advanceSale'] as int?,
      sellers: (json['sellers'] as List<dynamic>?)
              ?.map((e) => OrganisationRef.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      codeExternal: json['codeExternal'] as String?,
      points: json['points'] as int?,
      salesPackagePrice: (json['salesPackagePrice'] as num?)?.toDouble(),
      ccyPrice: json['ccyPrice'] as String?,
      usageParameter: json['usageParameter'] == null
          ? null
          : SalesPackage$UsageParameter.fromJson(
              json['usageParameter'] as Map<String, dynamic>),
      distributionTouchPoints: (json['distributionTouchPoints']
                  as List<dynamic>?)
              ?.map((e) =>
                  DistributionTouchPoint.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      promotions: (json['promotions'] as List<dynamic>?)
              ?.map((e) => Promotion.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      mediaSet: (json['mediaSet'] as List<dynamic>?)
              ?.map((e) => MediaSet.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      fareProducts: (json['fareProducts'] as List<dynamic>?)
              ?.map(
                  (e) => LinkedFareProduct.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      genericProducts: (json['genericProducts'] as List<dynamic>?)
              ?.map((e) =>
                  LinkedGenericProduct.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      fareFrame: json['fareFrame'] == null
          ? null
          : FareFrame.fromJson(json['fareFrame'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SalesPackageToJson(SalesPackage instance) =>
    <String, dynamic>{
      'salesPackageId': instance.salesPackageId,
      'salesPackageVersion': instance.salesPackageVersion,
      'salesPackageName': instance.salesPackageName,
      'salesPackageType': instance.salesPackageType,
      'salesPackageTypeDesc': instance.salesPackageTypeDesc,
      'salesPackageStartValidity':
          _dateToJson(instance.salesPackageStartValidity),
      'salesPackageEndValidity': _dateToJson(instance.salesPackageEndValidity),
      'customerNumber': instance.customerNumber,
      'deadline': instance.deadline,
      'advanceSale': instance.advanceSale,
      'sellers': instance.sellers?.map((e) => e.toJson()).toList(),
      'codeExternal': instance.codeExternal,
      'points': instance.points,
      'salesPackagePrice': instance.salesPackagePrice,
      'ccyPrice': instance.ccyPrice,
      'usageParameter': instance.usageParameter?.toJson(),
      'distributionTouchPoints':
          instance.distributionTouchPoints?.map((e) => e.toJson()).toList(),
      'promotions': instance.promotions?.map((e) => e.toJson()).toList(),
      'mediaSet': instance.mediaSet?.map((e) => e.toJson()).toList(),
      'fareProducts': instance.fareProducts?.map((e) => e.toJson()).toList(),
      'genericProducts':
          instance.genericProducts?.map((e) => e.toJson()).toList(),
      'fareFrame': instance.fareFrame?.toJson(),
    };

LinkedGenericProduct _$LinkedGenericProductFromJson(
        Map<String, dynamic> json) =>
    LinkedGenericProduct(
      genericProduct: json['genericProduct'] == null
          ? null
          : GenericProduct.fromJson(
              json['genericProduct'] as Map<String, dynamic>),
      quantity: json['quantity'] as int?,
    );

Map<String, dynamic> _$LinkedGenericProductToJson(
        LinkedGenericProduct instance) =>
    <String, dynamic>{
      'genericProduct': instance.genericProduct?.toJson(),
      'quantity': instance.quantity,
    };

LinkedFareProduct _$LinkedFareProductFromJson(Map<String, dynamic> json) =>
    LinkedFareProduct(
      fareProduct: json['fareProduct'] == null
          ? null
          : Product.fromJson(json['fareProduct'] as Map<String, dynamic>),
      quantity: json['quantity'] as int?,
    );

Map<String, dynamic> _$LinkedFareProductToJson(LinkedFareProduct instance) =>
    <String, dynamic>{
      'fareProduct': instance.fareProduct?.toJson(),
      'quantity': instance.quantity,
    };

GenericProduct _$GenericProductFromJson(Map<String, dynamic> json) =>
    GenericProduct(
      id: json['id'] as String?,
      name: json['name'] as String?,
      shortName: json['shortName'] as String?,
      type: json['type'] as String?,
      typeDesc: json['typeDesc'] as String?,
      startValidity: json['startValidity'] == null
          ? null
          : DateTime.parse(json['startValidity'] as String),
      endValidity: json['endValidity'] == null
          ? null
          : DateTime.parse(json['endValidity'] as String),
      codeExternal: json['codeExternal'] as String?,
      ccyPrice: json['ccyPrice'] as String?,
      price: (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$GenericProductToJson(GenericProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'shortName': instance.shortName,
      'type': instance.type,
      'typeDesc': instance.typeDesc,
      'startValidity': _dateToJson(instance.startValidity),
      'endValidity': _dateToJson(instance.endValidity),
      'codeExternal': instance.codeExternal,
      'ccyPrice': instance.ccyPrice,
      'price': instance.price,
    };

JourneyGroup _$JourneyGroupFromJson(Map<String, dynamic> json) => JourneyGroup(
      id: json['id'] as String?,
      closingDate: json['closingDate'] == null
          ? null
          : DateTime.parse(json['closingDate'] as String),
      status: journeyGroupStatusNullableFromJson(json['status']),
      partyAccountId: json['partyAccountId'] as String?,
      purchaseTransactionId: json['purchaseTransactionId'] as String?,
      purchaseTransactionDateTime: json['purchaseTransactionDateTime'] == null
          ? null
          : DateTime.parse(json['purchaseTransactionDateTime'] as String),
      productId: json['productId'] as String?,
      productName: json['productName'] as String?,
      productPrice: (json['productPrice'] as num?)?.toDouble(),
      journeys: (json['journeys'] as List<dynamic>?)
              ?.map((e) => Journey.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$JourneyGroupToJson(JourneyGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'closingDate': _dateToJson(instance.closingDate),
      'status': journeyGroupStatusNullableToJson(instance.status),
      'partyAccountId': instance.partyAccountId,
      'purchaseTransactionId': instance.purchaseTransactionId,
      'purchaseTransactionDateTime':
          _dateToJson(instance.purchaseTransactionDateTime),
      'productId': instance.productId,
      'productName': instance.productName,
      'productPrice': instance.productPrice,
      'journeys': instance.journeys?.map((e) => e.toJson()).toList(),
    };

Journey _$JourneyFromJson(Map<String, dynamic> json) => Journey(
      journeyId: json['journeyId'] as String?,
      journeyGroupId: json['journeyGroupId'] as String?,
      checkin: json['checkin'] == null
          ? null
          : Validation.fromJson(json['checkin'] as Map<String, dynamic>),
      checkout: json['checkout'] == null
          ? null
          : Validation.fromJson(json['checkout'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$JourneyToJson(Journey instance) => <String, dynamic>{
      'journeyId': instance.journeyId,
      'journeyGroupId': instance.journeyGroupId,
      'checkin': instance.checkin?.toJson(),
      'checkout': instance.checkout?.toJson(),
    };

Validation _$ValidationFromJson(Map<String, dynamic> json) => Validation(
      transactionId: json['transactionId'] as String?,
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
      siteCode: json['siteCode'] as String?,
      siteDesc: json['siteDesc'] as String?,
      siteDetail: json['siteDetail'] as String?,
      validationDeviceId: json['validationDeviceId'] as String?,
      service: json['service'] as String?,
      $operator: json['operator'] as String?,
    );

Map<String, dynamic> _$ValidationToJson(Validation instance) =>
    <String, dynamic>{
      'transactionId': instance.transactionId,
      'time': _dateToJson(instance.time),
      'siteCode': instance.siteCode,
      'siteDesc': instance.siteDesc,
      'siteDetail': instance.siteDetail,
      'validationDeviceId': instance.validationDeviceId,
      'service': instance.service,
      'operator': instance.$operator,
    };

AccountBasedValidationSummary _$AccountBasedValidationSummaryFromJson(
        Map<String, dynamic> json) =>
    AccountBasedValidationSummary(
      partyAccountId: json['partyAccountId'] as String,
      numberOfValidations: json['numberOfValidations'] as int,
      closingDate: DateTime.parse(json['closingDate'] as String),
      status: AccountBasedValidationSummary
          .accountBasedValidationSummaryStatusStatusNullableFromJson(
              json['status']),
    );

Map<String, dynamic> _$AccountBasedValidationSummaryToJson(
        AccountBasedValidationSummary instance) =>
    <String, dynamic>{
      'partyAccountId': instance.partyAccountId,
      'numberOfValidations': instance.numberOfValidations,
      'closingDate': _dateToJson(instance.closingDate),
      'status':
          accountBasedValidationSummaryStatusNullableToJson(instance.status),
    };

AccountBasedSummarySession _$AccountBasedSummarySessionFromJson(
        Map<String, dynamic> json) =>
    AccountBasedSummarySession(
      sessionId: json['sessionId'] as String,
      sessionDateTime: DateTime.parse(json['sessionDateTime'] as String),
      summaries: (json['summaries'] as List<dynamic>?)
              ?.map((e) => AccountBasedValidationSummary.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$AccountBasedSummarySessionToJson(
        AccountBasedSummarySession instance) =>
    <String, dynamic>{
      'sessionId': instance.sessionId,
      'sessionDateTime': _dateToJson(instance.sessionDateTime),
      'summaries': instance.summaries.map((e) => e.toJson()).toList(),
    };

AccountBasedSummaryResponse _$AccountBasedSummaryResponseFromJson(
        Map<String, dynamic> json) =>
    AccountBasedSummaryResponse(
      success: (json['success'] as List<dynamic>?)
              ?.map((e) => AccountBasedSummarySession.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
      errors: (json['errors'] as List<dynamic>?)
              ?.map((e) => AccountBasedSummarySession.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$AccountBasedSummaryResponseToJson(
        AccountBasedSummaryResponse instance) =>
    <String, dynamic>{
      'success': instance.success?.map((e) => e.toJson()).toList(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

ExtendedDistanceMatrix _$ExtendedDistanceMatrixFromJson(
        Map<String, dynamic> json) =>
    ExtendedDistanceMatrix(
      lineId: json['lineId'] as String?,
      lineName: json['lineName'] as String?,
      serviceProvider: json['serviceProvider'] as String?,
      originElementRef: json['originElementRef'] as String?,
      originElementName: json['originElementName'] as String?,
      destinationElementRef: json['destinationElementRef'] as String?,
      destinationElementName: json['destinationElementName'] as String?,
      geographicalIntervalId: json['geographicalIntervalId'] as String?,
      fareZoneId: json['fareZoneId'] as String?,
      distance: json['distance'] as int?,
      duration: json['duration'] as int?,
      serviceMode: extendedDistanceMatrixServiceModeNullableFromJson(
          json['serviceMode']),
    );

Map<String, dynamic> _$ExtendedDistanceMatrixToJson(
        ExtendedDistanceMatrix instance) =>
    <String, dynamic>{
      'lineId': instance.lineId,
      'lineName': instance.lineName,
      'serviceProvider': instance.serviceProvider,
      'originElementRef': instance.originElementRef,
      'originElementName': instance.originElementName,
      'destinationElementRef': instance.destinationElementRef,
      'destinationElementName': instance.destinationElementName,
      'geographicalIntervalId': instance.geographicalIntervalId,
      'fareZoneId': instance.fareZoneId,
      'distance': instance.distance,
      'duration': instance.duration,
      'serviceMode':
          extendedDistanceMatrixServiceModeNullableToJson(instance.serviceMode),
    };

GeographicalIntervalLimit _$GeographicalIntervalLimitFromJson(
        Map<String, dynamic> json) =>
    GeographicalIntervalLimit(
      infrastructureElementCode: json['infrastructureElementCode'] as String?,
      infrastructureElementType:
          geographicalIntervalLimitInfrastructureElementTypeNullableFromJson(
              json['infrastructureElementType']),
      startPoint: json['startPoint'] == null
          ? null
          : Point.fromJson(json['startPoint'] as Map<String, dynamic>),
      endPoint: json['endPoint'] == null
          ? null
          : Point.fromJson(json['endPoint'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GeographicalIntervalLimitToJson(
        GeographicalIntervalLimit instance) =>
    <String, dynamic>{
      'infrastructureElementCode': instance.infrastructureElementCode,
      'infrastructureElementType':
          geographicalIntervalLimitInfrastructureElementTypeNullableToJson(
              instance.infrastructureElementType),
      'startPoint': instance.startPoint?.toJson(),
      'endPoint': instance.endPoint?.toJson(),
    };

Point _$PointFromJson(Map<String, dynamic> json) => Point(
      code: json['code'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$PointToJson(Point instance) => <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
    };

ExtendedDistanceMatrixLocation _$ExtendedDistanceMatrixLocationFromJson(
        Map<String, dynamic> json) =>
    ExtendedDistanceMatrixLocation(
      locationRef: json['locationRef'] as String?,
      locationName: json['locationName'] as String?,
    );

Map<String, dynamic> _$ExtendedDistanceMatrixLocationToJson(
        ExtendedDistanceMatrixLocation instance) =>
    <String, dynamic>{
      'locationRef': instance.locationRef,
      'locationName': instance.locationName,
    };

PrePurchaseConfirmation _$PrePurchaseConfirmationFromJson(
        Map<String, dynamic> json) =>
    PrePurchaseConfirmation(
      codGateway: paymentGatewayTypeFromJson(json['codGateway']),
      purchaseRef: json['purchaseRef'] as String,
      codTrans: json['codTrans'] as String,
      result: prePurchaseConfirmationResultFromJson(json['result']),
      esito: json['esito'] as String,
      importo: json['importo'] as String,
      divisa: json['divisa'] as String,
      codiceEsito: json['codiceEsito'] as String?,
      messaggio: json['messaggio'] as String?,
      codAut: json['codAut'] as String?,
      mac: json['mac'] as String?,
      data: json['data'] as String?,
      orario: json['orario'] as String?,
    );

Map<String, dynamic> _$PrePurchaseConfirmationToJson(
        PrePurchaseConfirmation instance) =>
    <String, dynamic>{
      'codGateway': paymentGatewayTypeToJson(instance.codGateway),
      'purchaseRef': instance.purchaseRef,
      'codTrans': instance.codTrans,
      'result': prePurchaseConfirmationResultToJson(instance.result),
      'esito': instance.esito,
      'importo': instance.importo,
      'divisa': instance.divisa,
      'codiceEsito': instance.codiceEsito,
      'messaggio': instance.messaggio,
      'codAut': instance.codAut,
      'mac': instance.mac,
      'data': instance.data,
      'orario': instance.orario,
    };

Aztec _$AztecFromJson(Map<String, dynamic> json) => Aztec(
      ticketId: json['ticketId'] as String?,
      mediaId: json['mediaId'] as String?,
      customerId: json['customerId'] as String?,
      codeTypePrefix: json['codeTypePrefix'] as String?,
      useDefaultExpiration: json['useDefaultExpiration'] as bool?,
      outputFormat: json['outputFormat'] as String?,
    );

Map<String, dynamic> _$AztecToJson(Aztec instance) => <String, dynamic>{
      'ticketId': instance.ticketId,
      'mediaId': instance.mediaId,
      'customerId': instance.customerId,
      'codeTypePrefix': instance.codeTypePrefix,
      'useDefaultExpiration': instance.useDefaultExpiration,
      'outputFormat': instance.outputFormat,
    };

EnabledPaymentGateway _$EnabledPaymentGatewayFromJson(
        Map<String, dynamic> json) =>
    EnabledPaymentGateway(
      paymentGateway:
          paymentGatewayTypeNullableFromJson(json['paymentGateway']),
      urlPrePurchase: json['urlPrePurchase'] as String?,
      urlPrePurchaseEPurse: json['urlPrePurchaseEPurse'] as String?,
    );

Map<String, dynamic> _$EnabledPaymentGatewayToJson(
        EnabledPaymentGateway instance) =>
    <String, dynamic>{
      'paymentGateway':
          paymentGatewayTypeNullableToJson(instance.paymentGateway),
      'urlPrePurchase': instance.urlPrePurchase,
      'urlPrePurchaseEPurse': instance.urlPrePurchaseEPurse,
    };

BasketItem _$BasketItemFromJson(Map<String, dynamic> json) => BasketItem(
      itemType: json['itemType'] as String,
      itemId: json['itemId'] as String,
      itemVersion: json['itemVersion'] as int,
      date: json['date'] as String,
      fareTableCellId: json['fareTableCellId'] as String?,
      mediaType: basketItemMediaTypeNullableFromJson(json['mediaType']),
      validityPeriodId: json['validityPeriodId'] as String?,
      fareZoneId: json['fareZoneId'] as String?,
      geographicalId: json['geographicalId'] as String?,
      distributionTouchpointType: json['distributionTouchpointType'] as String?,
      distributionTouchpointId: json['distributionTouchpointId'] as String?,
      serviceId: json['serviceId'] as String?,
      customerProfileId: json['customerProfileId'] as String?,
      temporalValidityId: json['temporalValidityId'] as String?,
      promotionAssignmentId: json['promotionAssignmentId'] as String?,
      quantity: json['quantity'] as int,
    );

Map<String, dynamic> _$BasketItemToJson(BasketItem instance) =>
    <String, dynamic>{
      'itemType': instance.itemType,
      'itemId': instance.itemId,
      'itemVersion': instance.itemVersion,
      'date': instance.date,
      'fareTableCellId': instance.fareTableCellId,
      'mediaType': basketItemMediaTypeNullableToJson(instance.mediaType),
      'validityPeriodId': instance.validityPeriodId,
      'fareZoneId': instance.fareZoneId,
      'geographicalId': instance.geographicalId,
      'distributionTouchpointType': instance.distributionTouchpointType,
      'distributionTouchpointId': instance.distributionTouchpointId,
      'serviceId': instance.serviceId,
      'customerProfileId': instance.customerProfileId,
      'temporalValidityId': instance.temporalValidityId,
      'promotionAssignmentId': instance.promotionAssignmentId,
      'quantity': instance.quantity,
    };

BasketCart _$BasketCartFromJson(Map<String, dynamic> json) => BasketCart(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => BasketItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$BasketCartToJson(BasketCart instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
    };

BasketPriceItem _$BasketPriceItemFromJson(Map<String, dynamic> json) =>
    BasketPriceItem(
      itemId: json['itemId'] as String,
      itemName: json['itemName'] as String,
      itemVersion: json['itemVersion'] as int,
      fareTableCellId: json['fareTableCellId'] as String,
      quantity: json['quantity'] as int,
      ccy: json['ccy'] as String,
      amount: (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$BasketPriceItemToJson(BasketPriceItem instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'itemName': instance.itemName,
      'itemVersion': instance.itemVersion,
      'fareTableCellId': instance.fareTableCellId,
      'quantity': instance.quantity,
      'ccy': instance.ccy,
      'amount': instance.amount,
    };

BasketPrice _$BasketPriceFromJson(Map<String, dynamic> json) => BasketPrice(
      totalAmount: (json['totalAmount'] as num).toDouble(),
      ccy: json['ccy'] as String,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => BasketPriceItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$BasketPriceToJson(BasketPrice instance) =>
    <String, dynamic>{
      'totalAmount': instance.totalAmount,
      'ccy': instance.ccy,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

TopUpAllowableAmount _$TopUpAllowableAmountFromJson(
        Map<String, dynamic> json) =>
    TopUpAllowableAmount(
      value: (json['value'] as num?)?.toDouble(),
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
    );

Map<String, dynamic> _$TopUpAllowableAmountToJson(
        TopUpAllowableAmount instance) =>
    <String, dynamic>{
      'value': instance.value,
      'startDate': _dateToJson(instance.startDate),
      'endDate': _dateToJson(instance.endDate),
    };

ChargeLimitData _$ChargeLimitDataFromJson(Map<String, dynamic> json) =>
    ChargeLimitData(
      epurse: json['epurse'] == null
          ? null
          : Epurse.fromJson(json['epurse'] as Map<String, dynamic>),
      monthly: json['monthly'] == null
          ? null
          : Threshold.fromJson(json['monthly'] as Map<String, dynamic>),
      weekly: json['weekly'] == null
          ? null
          : Threshold.fromJson(json['weekly'] as Map<String, dynamic>),
      daily: json['daily'] == null
          ? null
          : Threshold.fromJson(json['daily'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChargeLimitDataToJson(ChargeLimitData instance) =>
    <String, dynamic>{
      'epurse': instance.epurse?.toJson(),
      'monthly': instance.monthly?.toJson(),
      'weekly': instance.weekly?.toJson(),
      'daily': instance.daily?.toJson(),
    };

Threshold _$ThresholdFromJson(Map<String, dynamic> json) => Threshold(
      platfond: (json['platfond'] as num?)?.toDouble(),
      residual: (json['residual'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ThresholdToJson(Threshold instance) => <String, dynamic>{
      'platfond': instance.platfond,
      'residual': instance.residual,
    };

Epurse _$EpurseFromJson(Map<String, dynamic> json) => Epurse(
      epurseId: json['epurseId'] as String?,
      ownerId: json['ownerId'] as String?,
      ownerType: ownerTypeEnumNullableFromJson(json['ownerType']),
      status: epurseStatusEnumNullableFromJson(json['status']),
      openDate: json['openDate'] == null
          ? null
          : DateTime.parse(json['openDate'] as String),
      closeDate: json['closeDate'] == null
          ? null
          : DateTime.parse(json['closeDate'] as String),
      summary: json['summary'] == null
          ? null
          : CurrentSummary.fromJson(json['summary'] as Map<String, dynamic>),
      epurseDetail: json['epurseDetail'] == null
          ? null
          : EpurseDetail.fromJson(json['epurseDetail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EpurseToJson(Epurse instance) => <String, dynamic>{
      'epurseId': instance.epurseId,
      'ownerId': instance.ownerId,
      'ownerType': ownerTypeEnumNullableToJson(instance.ownerType),
      'status': epurseStatusEnumNullableToJson(instance.status),
      'openDate': _dateToJson(instance.openDate),
      'closeDate': _dateToJson(instance.closeDate),
      'summary': instance.summary?.toJson(),
      'epurseDetail': instance.epurseDetail?.toJson(),
    };

EpurseDetail _$EpurseDetailFromJson(Map<String, dynamic> json) => EpurseDetail(
      transactions: (json['transactions'] as List<dynamic>?)
              ?.map((e) => TransactionsApi.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      lists: (json['lists'] as List<dynamic>?)
              ?.map((e) => ListLog.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$EpurseDetailToJson(EpurseDetail instance) =>
    <String, dynamic>{
      'transactions': instance.transactions?.map((e) => e.toJson()).toList(),
      'lists': instance.lists?.map((e) => e.toJson()).toList(),
    };

CurrentSummary _$CurrentSummaryFromJson(Map<String, dynamic> json) =>
    CurrentSummary(
      epurseId: json['epurseId'] as String?,
      accountBalance: (json['accountBalance'] as num?)?.toDouble(),
      availableBalance: (json['availableBalance'] as num?)?.toDouble(),
      dateBalance: json['dateBalance'] == null
          ? null
          : DateTime.parse(json['dateBalance'] as String),
    );

Map<String, dynamic> _$CurrentSummaryToJson(CurrentSummary instance) =>
    <String, dynamic>{
      'epurseId': instance.epurseId,
      'accountBalance': instance.accountBalance,
      'availableBalance': instance.availableBalance,
      'dateBalance': _dateToJson(instance.dateBalance),
    };

Transactions _$TransactionsFromJson(Map<String, dynamic> json) => Transactions(
      transactionId: json['transactionId'] as String?,
      codTransactionType:
          transactionTypeEnumNullableFromJson(json['codTransactionType']),
      note: json['note'] as String?,
      refExternalTransaction: json['refExternalTransaction'] as String?,
      transactionResult:
          transactionResultTypeEnumNullableFromJson(json['transactionResult']),
      token: json['token'] as String?,
      codInvoice: json['codInvoice'] as String?,
      workshiftId: json['workshiftId'] as String?,
    );

Map<String, dynamic> _$TransactionsToJson(Transactions instance) =>
    <String, dynamic>{
      'transactionId': instance.transactionId,
      'codTransactionType':
          transactionTypeEnumNullableToJson(instance.codTransactionType),
      'note': instance.note,
      'refExternalTransaction': instance.refExternalTransaction,
      'transactionResult':
          transactionResultTypeEnumNullableToJson(instance.transactionResult),
      'token': instance.token,
      'codInvoice': instance.codInvoice,
      'workshiftId': instance.workshiftId,
    };

TransactionCharge _$TransactionChargeFromJson(Map<String, dynamic> json) =>
    TransactionCharge(
      amount: (json['amount'] as num?)?.toDouble(),
      ccy: json['ccy'] as String?,
      transactionId: json['transactionId'] as String?,
      codTransactionType:
          transactionTypeEnumNullableFromJson(json['codTransactionType']),
      note: json['note'] as String?,
      refExternalTransaction: json['refExternalTransaction'] as String?,
      transactionResult:
          transactionResultTypeEnumNullableFromJson(json['transactionResult']),
      token: json['token'] as String?,
      codInvoice: json['codInvoice'] as String?,
      workshiftId: json['workshiftId'] as String?,
    );

Map<String, dynamic> _$TransactionChargeToJson(TransactionCharge instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'ccy': instance.ccy,
      'transactionId': instance.transactionId,
      'codTransactionType':
          transactionTypeEnumNullableToJson(instance.codTransactionType),
      'note': instance.note,
      'refExternalTransaction': instance.refExternalTransaction,
      'transactionResult':
          transactionResultTypeEnumNullableToJson(instance.transactionResult),
      'token': instance.token,
      'codInvoice': instance.codInvoice,
      'workshiftId': instance.workshiftId,
    };

TransactionTopUp _$TransactionTopUpFromJson(Map<String, dynamic> json) =>
    TransactionTopUp(
      amount: (json['amount'] as num?)?.toDouble(),
      ccy: json['ccy'] as String?,
      creditAmount: (json['creditAmount'] as num?)?.toDouble(),
      paymentMethod: paymentTypeEnumNullableFromJson(json['paymentMethod']),
      creditNotes: json['creditNotes'] as String?,
      numDiscountPerc: (json['numDiscountPerc'] as num?)?.toDouble(),
      numDiscountAmount: (json['numDiscountAmount'] as num?)?.toDouble(),
      strDiscountNotes: json['strDiscountNotes'] as String?,
      transactionId: json['transactionId'] as String?,
      codTransactionType:
          transactionTypeEnumNullableFromJson(json['codTransactionType']),
      note: json['note'] as String?,
      refExternalTransaction: json['refExternalTransaction'] as String?,
      transactionResult:
          transactionResultTypeEnumNullableFromJson(json['transactionResult']),
      token: json['token'] as String?,
      codInvoice: json['codInvoice'] as String?,
      workshiftId: json['workshiftId'] as String?,
    );

Map<String, dynamic> _$TransactionTopUpToJson(TransactionTopUp instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'ccy': instance.ccy,
      'creditAmount': instance.creditAmount,
      'paymentMethod': paymentTypeEnumNullableToJson(instance.paymentMethod),
      'creditNotes': instance.creditNotes,
      'numDiscountPerc': instance.numDiscountPerc,
      'numDiscountAmount': instance.numDiscountAmount,
      'strDiscountNotes': instance.strDiscountNotes,
      'transactionId': instance.transactionId,
      'codTransactionType':
          transactionTypeEnumNullableToJson(instance.codTransactionType),
      'note': instance.note,
      'refExternalTransaction': instance.refExternalTransaction,
      'transactionResult':
          transactionResultTypeEnumNullableToJson(instance.transactionResult),
      'token': instance.token,
      'codInvoice': instance.codInvoice,
      'workshiftId': instance.workshiftId,
    };

ListLog _$ListLogFromJson(Map<String, dynamic> json) => ListLog(
      listLogID: json['listLogID'] as String?,
      codInsertionType:
          listInsertionTypeEnumNullableFromJson(json['codInsertionType']),
      codListType: listTypeEnumNullableFromJson(json['codListType']),
      note: json['note'] as String?,
      codStatus: statusListEnumNullableFromJson(json['codStatus']),
    );

Map<String, dynamic> _$ListLogToJson(ListLog instance) => <String, dynamic>{
      'listLogID': instance.listLogID,
      'codInsertionType':
          listInsertionTypeEnumNullableToJson(instance.codInsertionType),
      'codListType': listTypeEnumNullableToJson(instance.codListType),
      'note': instance.note,
      'codStatus': statusListEnumNullableToJson(instance.codStatus),
    };

TransactionsApi _$TransactionsApiFromJson(Map<String, dynamic> json) =>
    TransactionsApi(
      transactionId: json['transactionId'] as String?,
      epurseId: json['epurseId'] as String?,
      codTransactionType:
          transactionTypeEnumNullableFromJson(json['codTransactionType']),
      transactionDate: json['transactionDate'] == null
          ? null
          : DateTime.parse(json['transactionDate'] as String),
      note: json['note'] as String?,
      extCodTransaction: json['extCodTransaction'] as String?,
      codInvoice: json['codInvoice'] as String?,
      workshiftId: json['workshiftId'] as String?,
      transactionResult:
          transactionResultTypeEnumNullableFromJson(json['transactionResult']),
      transactionsTopup: json['transactionsTopup'] == null
          ? null
          : TransactionsTopUpApi.fromJson(
              json['transactionsTopup'] as Map<String, dynamic>),
      transactionsCharge: json['transactionsCharge'] == null
          ? null
          : TransactionsChargeApi.fromJson(
              json['transactionsCharge'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TransactionsApiToJson(TransactionsApi instance) =>
    <String, dynamic>{
      'transactionId': instance.transactionId,
      'epurseId': instance.epurseId,
      'codTransactionType':
          transactionTypeEnumNullableToJson(instance.codTransactionType),
      'transactionDate': _dateToJson(instance.transactionDate),
      'note': instance.note,
      'extCodTransaction': instance.extCodTransaction,
      'codInvoice': instance.codInvoice,
      'workshiftId': instance.workshiftId,
      'transactionResult':
          transactionResultTypeEnumNullableToJson(instance.transactionResult),
      'transactionsTopup': instance.transactionsTopup?.toJson(),
      'transactionsCharge': instance.transactionsCharge?.toJson(),
    };

TransactionsTopUpApi _$TransactionsTopUpApiFromJson(
        Map<String, dynamic> json) =>
    TransactionsTopUpApi(
      id: json['id'] as String?,
      numAmount: (json['numAmount'] as num?)?.toDouble(),
      ccyCode: json['ccyCode'] as String?,
      refExternalTransaction: json['refExternalTransaction'] as String?,
      codPaymentMethod: json['codPaymentMethod'] as String?,
      numCreditAmount: (json['numCreditAmount'] as num?)?.toDouble(),
      strCreditNotes: json['strCreditNotes'] as String?,
      numDiscountPerc: (json['numDiscountPerc'] as num?)?.toDouble(),
      numDiscountAmount: (json['numDiscountAmount'] as num?)?.toDouble(),
      strDiscountNotes: json['strDiscountNotes'] as String?,
    );

Map<String, dynamic> _$TransactionsTopUpApiToJson(
        TransactionsTopUpApi instance) =>
    <String, dynamic>{
      'id': instance.id,
      'numAmount': instance.numAmount,
      'ccyCode': instance.ccyCode,
      'refExternalTransaction': instance.refExternalTransaction,
      'codPaymentMethod': instance.codPaymentMethod,
      'numCreditAmount': instance.numCreditAmount,
      'strCreditNotes': instance.strCreditNotes,
      'numDiscountPerc': instance.numDiscountPerc,
      'numDiscountAmount': instance.numDiscountAmount,
      'strDiscountNotes': instance.strDiscountNotes,
    };

TransactionsChargeApi _$TransactionsChargeApiFromJson(
        Map<String, dynamic> json) =>
    TransactionsChargeApi(
      id: json['id'] as String?,
      numAmount: (json['numAmount'] as num?)?.toDouble(),
      ccyCode: json['ccyCode'] as String?,
    );

Map<String, dynamic> _$TransactionsChargeApiToJson(
        TransactionsChargeApi instance) =>
    <String, dynamic>{
      'id': instance.id,
      'numAmount': instance.numAmount,
      'ccyCode': instance.ccyCode,
    };

TouchpointReseller _$TouchpointResellerFromJson(Map<String, dynamic> json) =>
    TouchpointReseller(
      touchpointId: json['touchpointId'] as String?,
      organizationSellerId: json['organizationSellerId'] as String?,
    );

Map<String, dynamic> _$TouchpointResellerToJson(TouchpointReseller instance) =>
    <String, dynamic>{
      'touchpointId': instance.touchpointId,
      'organizationSellerId': instance.organizationSellerId,
    };

TransactionTopUpResponse _$TransactionTopUpResponseFromJson(
        Map<String, dynamic> json) =>
    TransactionTopUpResponse(
      epurseId: json['epurseId'] as String?,
      refPartyOwner: json['refPartyOwner'] as String?,
      codStatus: json['codStatus'] as String?,
      codOwnerType: json['codOwnerType'] as String?,
      workstationUpdate: json['workstationUpdate'] as String?,
      operatorUpdate: json['operatorUpdate'] as String?,
      codSource: json['codSource'] as String?,
      epurseType: json['epurseType'] as String?,
      transactionId: json['transactionId'] as String?,
      codTransactionType: json['codTransactionType'] as String?,
      note: json['note'] as String?,
      refExternalTransaction: json['refExternalTransaction'] as String?,
      transactionResult: json['transactionResult'] as String?,
      token: json['token'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      ccy: json['ccy'] as String?,
      creditAmount: (json['creditAmount'] as num?)?.toDouble(),
      paymentMethod: paymentTypeEnumNullableFromJson(json['paymentMethod']),
      creditNotes: json['creditNotes'] as String?,
      numDiscountPerc: (json['numDiscountPerc'] as num?)?.toDouble(),
      numDiscountAmount: (json['numDiscountAmount'] as num?)?.toDouble(),
      strDiscountNotes: json['strDiscountNotes'] as String?,
    );

Map<String, dynamic> _$TransactionTopUpResponseToJson(
        TransactionTopUpResponse instance) =>
    <String, dynamic>{
      'epurseId': instance.epurseId,
      'refPartyOwner': instance.refPartyOwner,
      'codStatus': instance.codStatus,
      'codOwnerType': instance.codOwnerType,
      'workstationUpdate': instance.workstationUpdate,
      'operatorUpdate': instance.operatorUpdate,
      'codSource': instance.codSource,
      'epurseType': instance.epurseType,
      'transactionId': instance.transactionId,
      'codTransactionType': instance.codTransactionType,
      'note': instance.note,
      'refExternalTransaction': instance.refExternalTransaction,
      'transactionResult': instance.transactionResult,
      'token': instance.token,
      'amount': instance.amount,
      'ccy': instance.ccy,
      'creditAmount': instance.creditAmount,
      'paymentMethod': paymentTypeEnumNullableToJson(instance.paymentMethod),
      'creditNotes': instance.creditNotes,
      'numDiscountPerc': instance.numDiscountPerc,
      'numDiscountAmount': instance.numDiscountAmount,
      'strDiscountNotes': instance.strDiscountNotes,
    };

Transaction _$TransactionFromJson(Map<String, dynamic> json) => Transaction(
      codTransaction: json['codTransaction'] as String?,
      transactionResult: transactionTransactionResultNullableFromJson(
          json['transactionResult']),
      transactionType:
          transactionTransactionTypeFromJson(json['transactionType']),
      transactionTime: json['transactionTime'] == null
          ? null
          : DateTime.parse(json['transactionTime'] as String),
      customerId: json['customerId'] as String?,
      extCodTransaction: json['extCodTransaction'] as String?,
      fareProductType:
          transactionFareProductTypeNullableFromJson(json['fareProductType']),
      infrastructureElements: (json['infrastructureElements'] as List<dynamic>?)
              ?.map((e) =>
                  InfrastructureElement.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      relatedTransactions: (json['relatedTransactions'] as List<dynamic>?)
              ?.map((e) => CodeTypeElement.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      workshiftId: json['workshiftId'] as String?,
      notes: json['notes'] as String?,
      extraData: json['extraData'] as String?,
    );

Map<String, dynamic> _$TransactionToJson(Transaction instance) =>
    <String, dynamic>{
      'codTransaction': instance.codTransaction,
      'transactionResult': transactionTransactionResultNullableToJson(
          instance.transactionResult),
      'transactionType':
          transactionTransactionTypeToJson(instance.transactionType),
      'transactionTime': instance.transactionTime?.toIso8601String(),
      'customerId': instance.customerId,
      'extCodTransaction': instance.extCodTransaction,
      'fareProductType':
          transactionFareProductTypeNullableToJson(instance.fareProductType),
      'infrastructureElements':
          instance.infrastructureElements?.map((e) => e.toJson()).toList(),
      'relatedTransactions':
          instance.relatedTransactions?.map((e) => e.toJson()).toList(),
      'workshiftId': instance.workshiftId,
      'notes': instance.notes,
      'extraData': instance.extraData,
    };

CodeTypeElement _$CodeTypeElementFromJson(Map<String, dynamic> json) =>
    CodeTypeElement(
      code: json['code'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$CodeTypeElementToJson(CodeTypeElement instance) =>
    <String, dynamic>{
      'code': instance.code,
      'type': instance.type,
    };

MissingPayoutChange _$MissingPayoutChangeFromJson(Map<String, dynamic> json) =>
    MissingPayoutChange(
      missingPayoutChange: (json['missingPayoutChange'] as num?)?.toDouble(),
      note: json['note'] as String?,
    );

Map<String, dynamic> _$MissingPayoutChangeToJson(
        MissingPayoutChange instance) =>
    <String, dynamic>{
      'missingPayoutChange': instance.missingPayoutChange,
      'note': instance.note,
    };

FareTrip _$FareTripFromJson(Map<String, dynamic> json) => FareTrip(
      tripId: json['tripId'] as String,
      bestFare: BestFare.fromJson(json['bestFare'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FareTripToJson(FareTrip instance) => <String, dynamic>{
      'tripId': instance.tripId,
      'bestFare': instance.bestFare.toJson(),
    };

BestFare _$BestFareFromJson(Map<String, dynamic> json) => BestFare(
      legsBlocks: (json['legsBlocks'] as List<dynamic>?)
              ?.map((e) => LegsBlock.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      tripPrice: (json['tripPrice'] as num).toDouble(),
      ccyPrice: json['ccyPrice'] as String,
    );

Map<String, dynamic> _$BestFareToJson(BestFare instance) => <String, dynamic>{
      'legsBlocks': instance.legsBlocks.map((e) => e.toJson()).toList(),
      'tripPrice': instance.tripPrice,
      'ccyPrice': instance.ccyPrice,
    };

LegsBlock _$LegsBlockFromJson(Map<String, dynamic> json) => LegsBlock(
      legsBlockPrice: (json['legsBlockPrice'] as num).toDouble(),
      ccyPriceBlock: json['ccyPriceBlock'] as String,
      legsId: (json['legsId'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      fareProducts: (json['fareProducts'] as List<dynamic>?)
              ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      salesPackages: (json['salesPackages'] as List<dynamic>?)
              ?.map((e) => SalesPackage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$LegsBlockToJson(LegsBlock instance) => <String, dynamic>{
      'legsBlockPrice': instance.legsBlockPrice,
      'ccyPriceBlock': instance.ccyPriceBlock,
      'legsId': instance.legsId,
      'fareProducts': instance.fareProducts?.map((e) => e.toJson()).toList(),
      'salesPackages': instance.salesPackages?.map((e) => e.toJson()).toList(),
    };

TripProducts _$TripProductsFromJson(Map<String, dynamic> json) => TripProducts(
      tripId: json['tripId'] as String,
      liteLegsBlock:
          LiteLegsBlock.fromJson(json['liteLegsBlock'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TripProductsToJson(TripProducts instance) =>
    <String, dynamic>{
      'tripId': instance.tripId,
      'liteLegsBlock': instance.liteLegsBlock.toJson(),
    };

LiteLegsBlock _$LiteLegsBlockFromJson(Map<String, dynamic> json) =>
    LiteLegsBlock(
      legsId: (json['legsId'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      fareProducts: (json['fareProducts'] as List<dynamic>?)
              ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      salesPackages: (json['salesPackages'] as List<dynamic>?)
              ?.map((e) => SalesPackage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$LiteLegsBlockToJson(LiteLegsBlock instance) =>
    <String, dynamic>{
      'legsId': instance.legsId,
      'fareProducts': instance.fareProducts?.map((e) => e.toJson()).toList(),
      'salesPackages': instance.salesPackages?.map((e) => e.toJson()).toList(),
    };

FineNotification _$FineNotificationFromJson(Map<String, dynamic> json) =>
    FineNotification(
      fineId: json['fineId'] as String?,
      dateOfNotification: json['dateOfNotification'] == null
          ? null
          : DateTime.parse(json['dateOfNotification'] as String),
      inspectorDesc: json['inspectorDesc'] as String?,
      inspectorCode: json['inspectorCode'] as String?,
      mainIndividual: json['mainIndividual'] == null
          ? null
          : IndividualWithRelation.fromJson(
              json['mainIndividual'] as Map<String, dynamic>),
      finePaymentStatus: json['finePaymentStatus'] == null
          ? null
          : FinePaymentStatus.fromJson(
              json['finePaymentStatus'] as Map<String, dynamic>),
      typeOfInfringementId: json['typeOfInfringementId'] as String?,
      flagNotified: (json['flagNotified'] as num?)?.toDouble(),
      inspectorNote: json['inspectorNote'] as String?,
      offenderStatements: json['offenderStatements'] as String?,
      inspectionTransactionReference:
          json['inspectionTransactionReference'] as String?,
      statusCode: notificationStatusEnumNullableFromJson(json['statusCode']),
      servicesAffected: json['servicesAffected'] == null
          ? null
          : ServicesAffected.fromJson(
              json['servicesAffected'] as Map<String, dynamic>),
      ticketPrice: (json['ticketPrice'] as num?)?.toDouble(),
      currencyCode: json['currencyCode'] as String?,
      ticketInspectorReference: json['ticketInspectorReference'] as String?,
      workshiftReference: json['workshiftReference'] as String?,
      touchpointReference: json['touchpointReference'] as String?,
      touchpointType: touchpointEnumNullableFromJson(json['touchpointType']),
      infringementCost: (json['infringementCost'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$FineNotificationToJson(FineNotification instance) =>
    <String, dynamic>{
      'fineId': instance.fineId,
      'dateOfNotification': instance.dateOfNotification?.toIso8601String(),
      'inspectorDesc': instance.inspectorDesc,
      'inspectorCode': instance.inspectorCode,
      'mainIndividual': instance.mainIndividual?.toJson(),
      'finePaymentStatus': instance.finePaymentStatus?.toJson(),
      'typeOfInfringementId': instance.typeOfInfringementId,
      'flagNotified': instance.flagNotified,
      'inspectorNote': instance.inspectorNote,
      'offenderStatements': instance.offenderStatements,
      'inspectionTransactionReference': instance.inspectionTransactionReference,
      'statusCode': notificationStatusEnumNullableToJson(instance.statusCode),
      'servicesAffected': instance.servicesAffected?.toJson(),
      'ticketPrice': instance.ticketPrice,
      'currencyCode': instance.currencyCode,
      'ticketInspectorReference': instance.ticketInspectorReference,
      'workshiftReference': instance.workshiftReference,
      'touchpointReference': instance.touchpointReference,
      'touchpointType': touchpointEnumNullableToJson(instance.touchpointType),
      'infringementCost': instance.infringementCost,
    };

Individual _$IndividualFromJson(Map<String, dynamic> json) => Individual(
      individualId: json['individualId'] as String?,
      dateOfBirth: DateTime.parse(json['dateOfBirth'] as String),
      legalSexType: json['legalSexType'] as String?,
      language: json['language'] as String?,
      nationalCountryCode: json['nationalCountryCode'] as String?,
      taxCode: json['taxCode'] as String?,
      nationalCountryDesc: json['nationalCountryDesc'] as String?,
      partyNamePart1: json['partyNamePart1'] as String,
      partyNamePart2: json['partyNamePart2'] as String?,
      partyNamePart3: json['partyNamePart3'] as String,
      addresses: (json['addresses'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
      emails: (json['emails'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
      phones: (json['phones'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
      documents: (json['documents'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$IndividualToJson(Individual instance) =>
    <String, dynamic>{
      'individualId': instance.individualId,
      'dateOfBirth': _dateToJson(instance.dateOfBirth),
      'legalSexType': instance.legalSexType,
      'language': instance.language,
      'nationalCountryCode': instance.nationalCountryCode,
      'taxCode': instance.taxCode,
      'nationalCountryDesc': instance.nationalCountryDesc,
      'partyNamePart1': instance.partyNamePart1,
      'partyNamePart2': instance.partyNamePart2,
      'partyNamePart3': instance.partyNamePart3,
      'addresses': instance.addresses,
      'emails': instance.emails,
      'phones': instance.phones,
      'documents': instance.documents,
    };

IndividualWithRelation _$IndividualWithRelationFromJson(
        Map<String, dynamic> json) =>
    IndividualWithRelation(
      individualId: json['individualId'] as String?,
      dateOfBirth: json['dateOfBirth'] == null
          ? null
          : DateTime.parse(json['dateOfBirth'] as String),
      legalSexType: json['legalSexType'] as String?,
      language: json['language'] as String?,
      nationalCountryCode: json['nationalCountryCode'] as String?,
      taxCode: json['taxCode'] as String?,
      nationalCountryDesc: json['nationalCountryDesc'] as String?,
      partyNamePart1: json['partyNamePart1'] as String?,
      partyNamePart2: json['partyNamePart2'] as String?,
      partyNamePart3: json['partyNamePart3'] as String?,
      addresses: (json['addresses'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
      emails: (json['emails'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
      phones: (json['phones'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
      documents: (json['documents'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
      relations: (json['relations'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$IndividualWithRelationToJson(
        IndividualWithRelation instance) =>
    <String, dynamic>{
      'individualId': instance.individualId,
      'dateOfBirth': _dateToJson(instance.dateOfBirth),
      'legalSexType': instance.legalSexType,
      'language': instance.language,
      'nationalCountryCode': instance.nationalCountryCode,
      'taxCode': instance.taxCode,
      'nationalCountryDesc': instance.nationalCountryDesc,
      'partyNamePart1': instance.partyNamePart1,
      'partyNamePart2': instance.partyNamePart2,
      'partyNamePart3': instance.partyNamePart3,
      'addresses': instance.addresses,
      'emails': instance.emails,
      'phones': instance.phones,
      'documents': instance.documents,
      'relations': instance.relations,
    };

SecondaryIndividual _$SecondaryIndividualFromJson(Map<String, dynamic> json) =>
    SecondaryIndividual(
      individualId: json['individualId'] as String?,
      dateOfBirth: json['dateOfBirth'] == null
          ? null
          : DateTime.parse(json['dateOfBirth'] as String),
      legalSexType: json['legalSexType'] as String?,
      language: json['language'] as String?,
      nationalCountryCode: json['nationalCountryCode'] as String?,
      taxCode: json['taxCode'] as String?,
      nationalCountryDesc: json['nationalCountryDesc'] as String?,
      partyNamePart1: json['partyNamePart1'] as String?,
      partyNamePart2: json['partyNamePart2'] as String?,
      partyNamePart3: json['partyNamePart3'] as String?,
      addresses: (json['addresses'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
      emails: (json['emails'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
      phones: (json['phones'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
      documents: (json['documents'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
      relations: (json['relations'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$SecondaryIndividualToJson(
        SecondaryIndividual instance) =>
    <String, dynamic>{
      'individualId': instance.individualId,
      'dateOfBirth': _dateToJson(instance.dateOfBirth),
      'legalSexType': instance.legalSexType,
      'language': instance.language,
      'nationalCountryCode': instance.nationalCountryCode,
      'taxCode': instance.taxCode,
      'nationalCountryDesc': instance.nationalCountryDesc,
      'partyNamePart1': instance.partyNamePart1,
      'partyNamePart2': instance.partyNamePart2,
      'partyNamePart3': instance.partyNamePart3,
      'addresses': instance.addresses,
      'emails': instance.emails,
      'phones': instance.phones,
      'documents': instance.documents,
      'relations': instance.relations,
    };

FinePaymentStatus _$FinePaymentStatusFromJson(Map<String, dynamic> json) =>
    FinePaymentStatus(
      fineId: json['fineId'] as String?,
      typePaymentCode: json['typePaymentCode'] as String?,
      paymentDate: json['paymentDate'] == null
          ? null
          : DateTime.parse(json['paymentDate'] as String),
      paymentStatusCode:
          paymentStatusEnumNullableFromJson(json['paymentStatusCode']),
      paymentAmount: (json['paymentAmount'] as num?)?.toDouble(),
      paymentReference: json['paymentReference'] as String?,
      paymentInstitutionDesc: json['paymentInstitutionDesc'] as String?,
      flagIsExternal: (json['flagIsExternal'] as num?)?.toDouble(),
      currency: json['currency'] as String?,
    );

Map<String, dynamic> _$FinePaymentStatusToJson(FinePaymentStatus instance) =>
    <String, dynamic>{
      'fineId': instance.fineId,
      'typePaymentCode': instance.typePaymentCode,
      'paymentDate': instance.paymentDate?.toIso8601String(),
      'paymentStatusCode':
          paymentStatusEnumNullableToJson(instance.paymentStatusCode),
      'paymentAmount': instance.paymentAmount,
      'paymentReference': instance.paymentReference,
      'paymentInstitutionDesc': instance.paymentInstitutionDesc,
      'flagIsExternal': instance.flagIsExternal,
      'currency': instance.currency,
    };

ServicesAffected _$ServicesAffectedFromJson(Map<String, dynamic> json) =>
    ServicesAffected(
      servicesAffectedId: json['servicesAffectedId'] as String?,
      serviceTypeCode: serviceTypeEnumFromJson(json['serviceTypeCode']),
      serviceCode: json['serviceCode'] as String?,
      serviceDesc: json['serviceDesc'] as String?,
      vehicleJourneyReference: json['vehicleJourneyReference'] as String?,
      vehicleJourneyDesc: json['vehicleJourneyDesc'] as String?,
      startPointReference: json['startPointReference'] as String?,
      startPointDesc: json['startPointDesc'] as String?,
      endPointReference: json['endPointReference'] as String?,
      endPointDesc: json['endPointDesc'] as String?,
    );

Map<String, dynamic> _$ServicesAffectedToJson(ServicesAffected instance) =>
    <String, dynamic>{
      'servicesAffectedId': instance.servicesAffectedId,
      'serviceTypeCode': serviceTypeEnumToJson(instance.serviceTypeCode),
      'serviceCode': instance.serviceCode,
      'serviceDesc': instance.serviceDesc,
      'vehicleJourneyReference': instance.vehicleJourneyReference,
      'vehicleJourneyDesc': instance.vehicleJourneyDesc,
      'startPointReference': instance.startPointReference,
      'startPointDesc': instance.startPointDesc,
      'endPointReference': instance.endPointReference,
      'endPointDesc': instance.endPointDesc,
    };

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      addressLine1: json['addressLine1'] as String?,
      addressLine2: json['addressLine2'] as String?,
      addressLine3: json['addressLine3'] as String?,
      postalCode: json['postalCode'] as String?,
      addressTypeCode:
          postalAddressTypeEnumNullableFromJson(json['addressTypeCode']),
      countryCode: json['countryCode'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      contactName: json['contactName'] as String?,
      contactNumber: json['contactNumber'] as String?,
      countryDesc: json['countryDesc'] as String?,
      cityCode: json['cityCode'] as String?,
      cityDesc: json['cityDesc'] as String?,
      districtCode: json['districtCode'] as String?,
      id: json['id'] as String?,
      contactTypeCode: contactTypeEnumNullableFromJson(json['contactTypeCode']),
      activationDate: json['activationDate'] == null
          ? null
          : DateTime.parse(json['activationDate'] as String),
      closingDate: json['closingDate'] == null
          ? null
          : DateTime.parse(json['closingDate'] as String),
      isPrimary: (json['isPrimary'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'addressLine1': instance.addressLine1,
      'addressLine2': instance.addressLine2,
      'addressLine3': instance.addressLine3,
      'postalCode': instance.postalCode,
      'addressTypeCode':
          postalAddressTypeEnumNullableToJson(instance.addressTypeCode),
      'countryCode': instance.countryCode,
      'location': instance.location?.toJson(),
      'contactName': instance.contactName,
      'contactNumber': instance.contactNumber,
      'countryDesc': instance.countryDesc,
      'cityCode': instance.cityCode,
      'cityDesc': instance.cityDesc,
      'districtCode': instance.districtCode,
      'id': instance.id,
      'contactTypeCode':
          contactTypeEnumNullableToJson(instance.contactTypeCode),
      'activationDate': instance.activationDate?.toIso8601String(),
      'closingDate': instance.closingDate?.toIso8601String(),
      'isPrimary': instance.isPrimary,
    };

Contact _$ContactFromJson(Map<String, dynamic> json) => Contact(
      id: json['id'] as String?,
      contactTypeCode: contactTypeEnumNullableFromJson(json['contactTypeCode']),
      activationDate: json['activationDate'] == null
          ? null
          : DateTime.parse(json['activationDate'] as String),
      closingDate: json['closingDate'] == null
          ? null
          : DateTime.parse(json['closingDate'] as String),
      isPrimary: (json['isPrimary'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ContactToJson(Contact instance) => <String, dynamic>{
      'id': instance.id,
      'contactTypeCode':
          contactTypeEnumNullableToJson(instance.contactTypeCode),
      'activationDate': instance.activationDate?.toIso8601String(),
      'closingDate': instance.closingDate?.toIso8601String(),
      'isPrimary': instance.isPrimary,
    };

Email _$EmailFromJson(Map<String, dynamic> json) => Email(
      emailAddress: json['emailAddress'] as String?,
      typeCode: postalAddressTypeEnumNullableFromJson(json['typeCode']),
      id: json['id'] as String?,
      contactTypeCode: contactTypeEnumNullableFromJson(json['contactTypeCode']),
      activationDate: json['activationDate'] == null
          ? null
          : DateTime.parse(json['activationDate'] as String),
      closingDate: json['closingDate'] == null
          ? null
          : DateTime.parse(json['closingDate'] as String),
      isPrimary: (json['isPrimary'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$EmailToJson(Email instance) => <String, dynamic>{
      'emailAddress': instance.emailAddress,
      'typeCode': postalAddressTypeEnumNullableToJson(instance.typeCode),
      'id': instance.id,
      'contactTypeCode':
          contactTypeEnumNullableToJson(instance.contactTypeCode),
      'activationDate': instance.activationDate?.toIso8601String(),
      'closingDate': instance.closingDate?.toIso8601String(),
      'isPrimary': instance.isPrimary,
    };

Phone _$PhoneFromJson(Map<String, dynamic> json) => Phone(
      phoneNumber: json['phoneNumber'] as String?,
      phoneTypeCode:
          postalAddressTypeEnumNullableFromJson(json['phoneTypeCode']),
      id: json['id'] as String?,
      contactTypeCode: contactTypeEnumNullableFromJson(json['contactTypeCode']),
      activationDate: json['activationDate'] == null
          ? null
          : DateTime.parse(json['activationDate'] as String),
      closingDate: json['closingDate'] == null
          ? null
          : DateTime.parse(json['closingDate'] as String),
      isPrimary: (json['isPrimary'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PhoneToJson(Phone instance) => <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'phoneTypeCode':
          postalAddressTypeEnumNullableToJson(instance.phoneTypeCode),
      'id': instance.id,
      'contactTypeCode':
          contactTypeEnumNullableToJson(instance.contactTypeCode),
      'activationDate': instance.activationDate?.toIso8601String(),
      'closingDate': instance.closingDate?.toIso8601String(),
      'isPrimary': instance.isPrimary,
    };

Document _$DocumentFromJson(Map<String, dynamic> json) => Document(
      documentId: json['documentId'] as String?,
      documentTitle: json['documentTitle'] as String?,
      flagVerified: (json['flagVerified'] as num?)?.toDouble(),
      documentTypeCode:
          documentTypeEnumNullableFromJson(json['documentTypeCode']),
      statusCode: json['statusCode'] as String?,
      documentNumber: json['documentNumber'] as String?,
      issuedBy: json['issuedBy'] as String?,
      dateOfIssue: json['dateOfIssue'] == null
          ? null
          : DateTime.parse(json['dateOfIssue'] as String),
      dateOfExpiry: json['dateOfExpiry'] == null
          ? null
          : DateTime.parse(json['dateOfExpiry'] as String),
    );

Map<String, dynamic> _$DocumentToJson(Document instance) => <String, dynamic>{
      'documentId': instance.documentId,
      'documentTitle': instance.documentTitle,
      'flagVerified': instance.flagVerified,
      'documentTypeCode':
          documentTypeEnumNullableToJson(instance.documentTypeCode),
      'statusCode': instance.statusCode,
      'documentNumber': instance.documentNumber,
      'issuedBy': instance.issuedBy,
      'dateOfIssue': _dateToJson(instance.dateOfIssue),
      'dateOfExpiry': _dateToJson(instance.dateOfExpiry),
    };

Relation _$RelationFromJson(Map<String, dynamic> json) => Relation(
      id: json['id'] as String?,
      secondaryIndividual: json['secondaryIndividual'] == null
          ? null
          : SecondaryIndividual.fromJson(
              json['secondaryIndividual'] as Map<String, dynamic>),
      relationType: relationTypeEnumNullableFromJson(json['relationType']),
    );

Map<String, dynamic> _$RelationToJson(Relation instance) => <String, dynamic>{
      'id': instance.id,
      'secondaryIndividual': instance.secondaryIndividual?.toJson(),
      'relationType': relationTypeEnumNullableToJson(instance.relationType),
    };

TypeOfInfringement _$TypeOfInfringementFromJson(Map<String, dynamic> json) =>
    TypeOfInfringement(
      typeOfInfringementId: json['typeOfInfringementId'] as String?,
      typeOfInfringementDescription:
          json['typeOfInfringementDescription'] as String?,
      productReference: json['productReference'] as String?,
      startValidityDate: json['startValidityDate'] == null
          ? null
          : DateTime.parse(json['startValidityDate'] as String),
      endValidityDate: json['endValidityDate'] == null
          ? null
          : DateTime.parse(json['endValidityDate'] as String),
    );

Map<String, dynamic> _$TypeOfInfringementToJson(TypeOfInfringement instance) =>
    <String, dynamic>{
      'typeOfInfringementId': instance.typeOfInfringementId,
      'typeOfInfringementDescription': instance.typeOfInfringementDescription,
      'productReference': instance.productReference,
      'startValidityDate': instance.startValidityDate?.toIso8601String(),
      'endValidityDate': instance.endValidityDate?.toIso8601String(),
    };

InfringementCost _$InfringementCostFromJson(Map<String, dynamic> json) =>
    InfringementCost(
      penaltyAmount: (json['penaltyAmount'] as num?)?.toDouble(),
      startValidityDate: json['startValidityDate'] == null
          ? null
          : DateTime.parse(json['startValidityDate'] as String),
      endValidityDate: json['endValidityDate'] == null
          ? null
          : DateTime.parse(json['endValidityDate'] as String),
      numberOfPaidDaysWithin:
          (json['numberOfPaidDaysWithin'] as num?)?.toDouble(),
      flagPlusTicket: (json['flagPlusTicket'] as num?)?.toDouble(),
      costsOfProceedings: (json['costsOfProceedings'] as num?)?.toDouble(),
      currencyCode: json['currencyCode'] as String?,
    );

Map<String, dynamic> _$InfringementCostToJson(InfringementCost instance) =>
    <String, dynamic>{
      'penaltyAmount': instance.penaltyAmount,
      'startValidityDate': instance.startValidityDate?.toIso8601String(),
      'endValidityDate': instance.endValidityDate?.toIso8601String(),
      'numberOfPaidDaysWithin': instance.numberOfPaidDaysWithin,
      'flagPlusTicket': instance.flagPlusTicket,
      'costsOfProceedings': instance.costsOfProceedings,
      'currencyCode': instance.currencyCode,
    };

FineInsertInput _$FineInsertInputFromJson(Map<String, dynamic> json) =>
    FineInsertInput(
      fineId: json['fineId'] as String?,
      dateOfNotification: DateTime.parse(json['dateOfNotification'] as String),
      inspectorDesc: json['inspectorDesc'] as String?,
      inspectorRoleCode: json['inspectorRoleCode'] as String?,
      mainIndividual:
          Individual.fromJson(json['mainIndividual'] as Map<String, dynamic>),
      relationType: relationTypeEnumNullableFromJson(json['relationType']),
      secondaryIndividual: json['secondaryIndividual'] == null
          ? null
          : Individual.fromJson(
              json['secondaryIndividual'] as Map<String, dynamic>),
      typeOfInfringementId: json['typeOfInfringementId'] as String,
      flagNotified: json['flagNotified'] as bool?,
      inspectorNote: json['inspectorNote'] as String?,
      offenderStatements: json['offenderStatements'] as String?,
      inspectionTransactionReference:
          json['inspectionTransactionReference'] as String?,
      statusCode: notificationStatusEnumNullableFromJson(json['statusCode']),
      servicesAffected: ServicesAffected.fromJson(
          json['servicesAffected'] as Map<String, dynamic>),
      ticketPrice: (json['ticketPrice'] as num?)?.toDouble(),
      currencyCode: json['currencyCode'] as String?,
      ticketInspectorReference: json['ticketInspectorReference'] as String,
      workshiftReference: json['workshiftReference'] as String?,
      touchpointReference: json['touchpointReference'] as String,
      touchpointType: touchpointEnumNullableFromJson(json['touchpointType']),
    );

Map<String, dynamic> _$FineInsertInputToJson(FineInsertInput instance) =>
    <String, dynamic>{
      'fineId': instance.fineId,
      'dateOfNotification': instance.dateOfNotification.toIso8601String(),
      'inspectorDesc': instance.inspectorDesc,
      'inspectorRoleCode': instance.inspectorRoleCode,
      'mainIndividual': instance.mainIndividual.toJson(),
      'relationType': relationTypeEnumNullableToJson(instance.relationType),
      'secondaryIndividual': instance.secondaryIndividual?.toJson(),
      'typeOfInfringementId': instance.typeOfInfringementId,
      'flagNotified': instance.flagNotified,
      'inspectorNote': instance.inspectorNote,
      'offenderStatements': instance.offenderStatements,
      'inspectionTransactionReference': instance.inspectionTransactionReference,
      'statusCode': notificationStatusEnumNullableToJson(instance.statusCode),
      'servicesAffected': instance.servicesAffected.toJson(),
      'ticketPrice': instance.ticketPrice,
      'currencyCode': instance.currencyCode,
      'ticketInspectorReference': instance.ticketInspectorReference,
      'workshiftReference': instance.workshiftReference,
      'touchpointReference': instance.touchpointReference,
      'touchpointType': touchpointEnumNullableToJson(instance.touchpointType),
    };

FineCostData _$FineCostDataFromJson(Map<String, dynamic> json) => FineCostData(
      amount: (json['amount'] as num?)?.toDouble(),
      currency: json['currency'] as String?,
    );

Map<String, dynamic> _$FineCostDataToJson(FineCostData instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
    };

FinePaymentData _$FinePaymentDataFromJson(Map<String, dynamic> json) =>
    FinePaymentData(
      fineId: json['fineId'] as String,
      externalTransactionCode: json['externalTransactionCode'] as String?,
      paymentAmount: (json['paymentAmount'] as num).toDouble(),
      ccy: json['ccy'] as String,
      paymentType: paymentTypeEnumFromJson(json['paymentType']),
      codGateway: paymentGatewayTypeNullableFromJson(json['codGateway']),
      workShiftId: json['workShiftId'] as String,
      paymentDate: DateTime.parse(json['paymentDate'] as String),
      cashAmountEntered: (json['cashAmountEntered'] as num?)?.toDouble(),
      changeValue: (json['changeValue'] as num?)?.toDouble(),
      payoutChange: (json['payoutChange'] as num?)?.toDouble(),
      missingPayoutChange: (json['missingPayoutChange'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$FinePaymentDataToJson(FinePaymentData instance) =>
    <String, dynamic>{
      'fineId': instance.fineId,
      'externalTransactionCode': instance.externalTransactionCode,
      'paymentAmount': instance.paymentAmount,
      'ccy': instance.ccy,
      'paymentType': paymentTypeEnumToJson(instance.paymentType),
      'codGateway': paymentGatewayTypeNullableToJson(instance.codGateway),
      'workShiftId': instance.workShiftId,
      'paymentDate': instance.paymentDate.toIso8601String(),
      'cashAmountEntered': instance.cashAmountEntered,
      'changeValue': instance.changeValue,
      'payoutChange': instance.payoutChange,
      'missingPayoutChange': instance.missingPayoutChange,
    };

SalesPackage$UsageParameter _$SalesPackage$UsageParameterFromJson(
        Map<String, dynamic> json) =>
    SalesPackage$UsageParameter(
      validityPeriods: (json['validityPeriods'] as List<dynamic>?)
              ?.map((e) => ValidityPeriod.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      customerProfiles: (json['customerProfiles'] as List<dynamic>?)
              ?.map((e) => CustomerProfile.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$SalesPackage$UsageParameterToJson(
        SalesPackage$UsageParameter instance) =>
    <String, dynamic>{
      'validityPeriods':
          instance.validityPeriods?.map((e) => e.toJson()).toList(),
      'customerProfiles':
          instance.customerProfiles?.map((e) => e.toJson()).toList(),
    };
