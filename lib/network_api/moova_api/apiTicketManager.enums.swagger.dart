import 'package:json_annotation/json_annotation.dart';

enum CardDataModelEncodingType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('BASE64')
  base64('BASE64');

  final String? value;

  const CardDataModelEncodingType(this.value);
}

enum DeviceDataStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ACTIVE')
  active('ACTIVE'),
  @JsonValue('INACTIVE')
  inactive('INACTIVE');

  final String? value;

  const DeviceDataStatus(this.value);
}

enum TicketListDataCodInsertionType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('WL')
  wl('WL'),
  @JsonValue('BL')
  bl('BL');

  final String? value;

  const TicketListDataCodInsertionType(this.value);
}

enum EventDataEventType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('TKTBASED')
  tktbased('TKTBASED'),
  @JsonValue('ACCBASED')
  accbased('ACCBASED');

  final String? value;

  const EventDataEventType(this.value);
}

enum EventDataEventOutcome {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('SUCCESS')
  success('SUCCESS'),
  @JsonValue('ERROR')
  error('ERROR');

  final String? value;

  const EventDataEventOutcome(this.value);
}

enum PurchaseCartPurchaseOutcome {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('SUCCESS')
  success('SUCCESS'),
  @JsonValue('ERROR')
  error('ERROR');

  final String? value;

  const PurchaseCartPurchaseOutcome(this.value);
}

enum PurchaseDataItemType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('PRODUCT')
  product('PRODUCT'),
  @JsonValue('SALESPACKAGE')
  salespackage('SALESPACKAGE');

  final String? value;

  const PurchaseDataItemType(this.value);
}

enum PurchaseDataMediaType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('HCE')
  hce('HCE'),
  @JsonValue('SC')
  sc('SC'),
  @JsonValue('PPR')
  ppr('PPR'),
  @JsonValue('PPRS')
  pprs('PPRS'),
  @JsonValue('MOB')
  mob('MOB'),
  @JsonValue('VT')
  vt('VT'),
  @JsonValue('CP')
  cp('CP'),
  @JsonValue('EMV')
  emv('EMV'),
  @JsonValue('CIE')
  cie('CIE'),
  @JsonValue('CNS')
  cns('CNS');

  final String? value;

  const PurchaseDataMediaType(this.value);
}

enum EpursePurchaseCartPurchaseOutcome {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('SUCCESS')
  success('SUCCESS'),
  @JsonValue('ERROR')
  error('ERROR');

  final String? value;

  const EpursePurchaseCartPurchaseOutcome(this.value);
}

enum ValidationDataCodeValidationEvent {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('CHECKIN')
  checkin('CHECKIN'),
  @JsonValue('CHECKOUT')
  checkout('CHECKOUT');

  final String? value;

  const ValidationDataCodeValidationEvent(this.value);
}

enum ValidationDataServiceType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('TRANSPORTATION')
  transportation('TRANSPORTATION');

  final String? value;

  const ValidationDataServiceType(this.value);
}

enum TransactionChangeCompensationTransactionResult {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('SCS')
  scs('SCS'),
  @JsonValue('ERR')
  err('ERR'),
  @JsonValue('WRN')
  wrn('WRN');

  final String? value;

  const TransactionChangeCompensationTransactionResult(this.value);
}

enum TransactionChangeCompensationTransactionType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ISS')
  iss('ISS'),
  @JsonValue('VLD')
  vld('VLD'),
  @JsonValue('ISP')
  isp('ISP'),
  @JsonValue('PRC')
  prc('PRC'),
  @JsonValue('CXL')
  cxl('CXL'),
  @JsonValue('PPC')
  ppc('PPC'),
  @JsonValue('EXP')
  exp('EXP'),
  @JsonValue('RFD')
  rfd('RFD'),
  @JsonValue('CCM')
  ccm('CCM');

  final String? value;

  const TransactionChangeCompensationTransactionType(this.value);
}

enum TransactionChangeCompensationFareProductType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('TKTBASED')
  tktbased('TKTBASED'),
  @JsonValue('ACCBASED')
  accbased('ACCBASED');

  final String? value;

  const TransactionChangeCompensationFareProductType(this.value);
}

enum TicketDataMediaType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('HCE')
  hce('HCE'),
  @JsonValue('SC')
  sc('SC'),
  @JsonValue('PPR')
  ppr('PPR'),
  @JsonValue('PPRS')
  pprs('PPRS'),
  @JsonValue('MOB')
  mob('MOB'),
  @JsonValue('VT')
  vt('VT'),
  @JsonValue('CP')
  cp('CP'),
  @JsonValue('EMV')
  emv('EMV'),
  @JsonValue('CIE')
  cie('CIE'),
  @JsonValue('CNS')
  cns('CNS');

  final String? value;

  const TicketDataMediaType(this.value);
}

enum PaymentTypeEnum {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('CASH')
  cash('CASH'),
  @JsonValue('CARD')
  card('CARD'),
  @JsonValue('EPURSE')
  epurse('EPURSE'),
  @JsonValue('COUPON')
  coupon('COUPON'),
  @JsonValue('RID')
  rid('RID'),
  @JsonValue('ACCOUNT_BASED')
  accountBased('ACCOUNT_BASED');

  final String? value;

  const PaymentTypeEnum(this.value);
}

enum PaymentGatewayType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('PAGOPA')
  pagopa('PAGOPA'),
  @JsonValue('NEXI')
  nexi('NEXI');

  final String? value;

  const PaymentGatewayType(this.value);
}

enum InfrastructureElementType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('DEVICE')
  device('DEVICE'),
  @JsonValue('TOUCHPOINT')
  touchpoint('TOUCHPOINT'),
  @JsonValue('STOPPOINT')
  stoppoint('STOPPOINT'),
  @JsonValue('LINE')
  line('LINE'),
  @JsonValue('ZONE')
  zone('ZONE');

  final String? value;

  const InfrastructureElementType(this.value);
}

enum OrganisationOrganisationTypeCode {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('AT')
  at('AT'),
  @JsonValue('OP')
  op('OP'),
  @JsonValue('CO')
  co('CO'),
  @JsonValue('DO')
  $do('DO'),
  @JsonValue('OW')
  ow('OW');

  final String? value;

  const OrganisationOrganisationTypeCode(this.value);
}

enum AgreementAgreementType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('SA')
  sa('SA'),
  @JsonValue('CA')
  ca('CA'),
  @JsonValue('SL')
  sl('SL');

  final String? value;

  const AgreementAgreementType(this.value);
}

enum ServiceScopingValidityClassificationCode {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('FC')
  fc('FC'),
  @JsonValue('FS')
  fs('FS'),
  @JsonValue('TN')
  tn('TN'),
  @JsonValue('VJ')
  vj('VJ'),
  @JsonValue('GOS')
  gos('GOS'),
  @JsonValue('TM')
  tm('TM');

  final String? value;

  const ServiceScopingValidityClassificationCode(this.value);
}

enum ServiceRestrictionRestrictionOn {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('LINE')
  line('LINE');

  final String? value;

  const ServiceRestrictionRestrictionOn(this.value);
}

enum ServiceRestrictionRestrictionType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ONCE_FOR_LINE')
  onceForLine('ONCE_FOR_LINE');

  final String? value;

  const ServiceRestrictionRestrictionType(this.value);
}

enum FareZoneScopingValidityParameterType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('GRP.NT')
  grpNt('GRP.NT'),
  @JsonValue('NT')
  nt('NT');

  final String? value;

  const FareZoneScopingValidityParameterType(this.value);
}

enum FareZoneGroupType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('FIXED')
  fixed('FIXED'),
  @JsonValue('COMBINED')
  combined('COMBINED');

  final String? value;

  const FareZoneGroupType(this.value);
}

enum ZoneAppliedTariffType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('INT')
  int('INT'),
  @JsonValue('NUMZ')
  numz('NUMZ'),
  @JsonValue('ZONE')
  zone('ZONE');

  final String? value;

  const ZoneAppliedTariffType(this.value);
}

enum DateTimeBandTypeBand {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('D')
  d('D'),
  @JsonValue('T')
  t('T'),
  @JsonValue('DT')
  dt('DT'),
  @JsonValue('GRP')
  grp('GRP');

  final String? value;

  const DateTimeBandTypeBand(this.value);
}

enum DateTimeBandBlackOutUse {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('noTravelWithinPeriod')
  notravelwithinperiod('noTravelWithinPeriod'),
  @JsonValue('mayCompleteIfStartedBefore')
  maycompleteifstartedbefore('mayCompleteIfStartedBefore'),
  @JsonValue('noTravelWithinTimeband')
  notravelwithintimeband('noTravelWithinTimeband');

  final String? value;

  const DateTimeBandBlackOutUse(this.value);
}

enum ValidityPeriodTypeUsageParameter {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('VP')
  vp('VP');

  final String? value;

  const ValidityPeriodTypeUsageParameter(this.value);
}

enum ValidityPeriodValidityPeriodType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('C')
  c('C'),
  @JsonValue('D')
  d('D'),
  @JsonValue('H')
  h('H'),
  @JsonValue('M')
  m('M'),
  @JsonValue('T')
  t('T'),
  @JsonValue('W')
  w('W'),
  @JsonValue('Y')
  y('Y');

  final String? value;

  const ValidityPeriodValidityPeriodType(this.value);
}

enum TriggerUsageTriggerType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('GGMM')
  ggmm('GGMM'),
  @JsonValue('GGSE')
  ggse('GGSE'),
  @JsonValue('I')
  i('I'),
  @JsonValue('MM')
  mm('MM'),
  @JsonValue('P')
  p('P'),
  @JsonValue('V')
  v('V');

  final String? value;

  const TriggerUsageTriggerType(this.value);
}

enum TravelSummaryDistanceUnit {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('CENTIMETERS')
  centimeters('CENTIMETERS'),
  @JsonValue('FEET')
  feet('FEET'),
  @JsonValue('INCH')
  inch('INCH'),
  @JsonValue('KILOMETERS')
  kilometers('KILOMETERS'),
  @JsonValue('METERS')
  meters('METERS'),
  @JsonValue('MILES')
  miles('MILES'),
  @JsonValue('MILLIMETERS')
  millimeters('MILLIMETERS'),
  @JsonValue('NAUTICALMILES')
  nauticalmiles('NAUTICALMILES'),
  @JsonValue('YARD')
  yard('YARD');

  final String? value;

  const TravelSummaryDistanceUnit(this.value);
}

enum TravelSummaryDurationUnit {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('SECONDS')
  seconds('SECONDS'),
  @JsonValue('MINUTES')
  minutes('MINUTES'),
  @JsonValue('HOURS')
  hours('HOURS'),
  @JsonValue('DAYS')
  days('DAYS'),
  @JsonValue('WEEKS')
  weeks('WEEKS'),
  @JsonValue('MONTHS')
  months('MONTHS'),
  @JsonValue('YEARS')
  years('YEARS');

  final String? value;

  const TravelSummaryDurationUnit(this.value);
}

enum CustomerProfileTypeUsageParameter {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('CP')
  cp('CP');

  final String? value;

  const CustomerProfileTypeUsageParameter(this.value);
}

enum FrequenciesOfUseTypeUsageParameter {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('FQ')
  fq('FQ');

  final String? value;

  const FrequenciesOfUseTypeUsageParameter(this.value);
}

enum LuggageSetAllowanceTypeUsageParameter {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('LG')
  lg('LG');

  final String? value;

  const LuggageSetAllowanceTypeUsageParameter(this.value);
}

enum LuggageSetAllowanceBaggageType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('LGGFB')
  lggfb('LGGFB'),
  @JsonValue('LGGLB')
  lgglb('LGGLB'),
  @JsonValue('LGGMB')
  lggmb('LGGMB'),
  @JsonValue('LGGN')
  lggn('LGGN'),
  @JsonValue('LGGSB')
  lggsb('LGGSB'),
  @JsonValue('LGGSP')
  lggsp('LGGSP');

  final String? value;

  const LuggageSetAllowanceBaggageType(this.value);
}

enum GeographicalIntervalScopingGeographicalType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('GINT')
  gint('GINT'),
  @JsonValue('GINF')
  ginf('GINF');

  final String? value;

  const GeographicalIntervalScopingGeographicalType(this.value);
}

enum GeographicalIntervalIntervalType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('CO')
  co('CO'),
  @JsonValue('D')
  d('D'),
  @JsonValue('S')
  s('S'),
  @JsonValue('T')
  t('T');

  final String? value;

  const GeographicalIntervalIntervalType(this.value);
}

enum DistributionTouchPointDistributionTouchpointType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('atStop')
  atstop('atStop'),
  @JsonValue('onBoard')
  onboard('onBoard'),
  @JsonValue('online')
  online('online'),
  @JsonValue('telephone')
  telephone('telephone'),
  @JsonValue('electronicPass')
  electronicpass('electronicPass'),
  @JsonValue('HCE')
  hce('HCE'),
  @JsonValue('agency')
  agency('agency'),
  @JsonValue('tourOperator')
  touroperator('tourOperator'),
  @JsonValue('TVM')
  tvm('TVM'),
  @JsonValue('other')
  other('other'),
  @JsonValue('GRPTouchPoint')
  grptouchpoint('GRPTouchPoint'),
  @JsonValue('TO')
  to('TO'),
  @JsonValue('VA')
  va('VA'),
  @JsonValue('MApp')
  mapp('MApp'),
  @JsonValue('POS')
  pos('POS'),
  @JsonValue('Wapp')
  wapp('Wapp'),
  @JsonValue('OBS')
  obs('OBS');

  final String? value;

  const DistributionTouchPointDistributionTouchpointType(this.value);
}

enum PromotionTypePromotionType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('F')
  f('F'),
  @JsonValue('P')
  p('P');

  final String? value;

  const PromotionTypePromotionType(this.value);
}

enum TouchPointDistributionTouchpointType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('atStop')
  atstop('atStop'),
  @JsonValue('onBoard')
  onboard('onBoard'),
  @JsonValue('online')
  online('online'),
  @JsonValue('telephone')
  telephone('telephone'),
  @JsonValue('electronicPass')
  electronicpass('electronicPass'),
  @JsonValue('HCE')
  hce('HCE'),
  @JsonValue('agency')
  agency('agency'),
  @JsonValue('tourOperator')
  touroperator('tourOperator'),
  @JsonValue('TVM')
  tvm('TVM'),
  @JsonValue('other')
  other('other'),
  @JsonValue('GRPTouchPoint')
  grptouchpoint('GRPTouchPoint'),
  @JsonValue('TO')
  to('TO'),
  @JsonValue('VA')
  va('VA'),
  @JsonValue('MApp')
  mapp('MApp'),
  @JsonValue('POS')
  pos('POS'),
  @JsonValue('Wapp')
  wapp('Wapp'),
  @JsonValue('OBS')
  obs('OBS');

  final String? value;

  const TouchPointDistributionTouchpointType(this.value);
}

enum MediaTypeRefMediaType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('HCE')
  hce('HCE'),
  @JsonValue('SC')
  sc('SC'),
  @JsonValue('PPR')
  ppr('PPR'),
  @JsonValue('PPRS')
  pprs('PPRS'),
  @JsonValue('MOB')
  mob('MOB'),
  @JsonValue('VT')
  vt('VT'),
  @JsonValue('CP')
  cp('CP'),
  @JsonValue('EMV')
  emv('EMV'),
  @JsonValue('CIE')
  cie('CIE'),
  @JsonValue('CNS')
  cns('CNS');

  final String? value;

  const MediaTypeRefMediaType(this.value);
}

enum JourneyGroupStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('OPEN')
  open('OPEN'),
  @JsonValue('CLOSED')
  closed('CLOSED'),
  @JsonValue('CANCELLED')
  cancelled('CANCELLED'),
  @JsonValue('ERROR')
  error('ERROR');

  final String? value;

  const JourneyGroupStatus(this.value);
}

enum AccountBasedValidationSummaryStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('TO_ELABORATE')
  toElaborate('TO_ELABORATE'),
  @JsonValue('ELABORATED')
  elaborated('ELABORATED'),
  @JsonValue('CLOSED')
  closed('CLOSED'),
  @JsonValue('CANCELLED')
  cancelled('CANCELLED');

  final String? value;

  const AccountBasedValidationSummaryStatus(this.value);
}

enum ExtendedDistanceMatrixServiceMode {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('01.00')
  value_0100('01.00'),
  @JsonValue('05.00')
  value_0500('05.00'),
  @JsonValue('07.00')
  value_0700('07.00');

  final String? value;

  const ExtendedDistanceMatrixServiceMode(this.value);
}

enum GeographicalIntervalLimitInfrastructureElementType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ROUTE')
  route('ROUTE'),
  @JsonValue('LINE')
  line('LINE');

  final String? value;

  const GeographicalIntervalLimitInfrastructureElementType(this.value);
}

enum PrePurchaseConfirmationResult {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('CONFIRMED')
  confirmed('CONFIRMED'),
  @JsonValue('CANCELED')
  canceled('CANCELED');

  final String? value;

  const PrePurchaseConfirmationResult(this.value);
}

enum BasketItemMediaType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('HCE')
  hce('HCE'),
  @JsonValue('SC')
  sc('SC'),
  @JsonValue('PPR')
  ppr('PPR'),
  @JsonValue('PPRS')
  pprs('PPRS'),
  @JsonValue('MOB')
  mob('MOB'),
  @JsonValue('VT')
  vt('VT'),
  @JsonValue('CP')
  cp('CP'),
  @JsonValue('EMV')
  emv('EMV'),
  @JsonValue('CIE')
  cie('CIE'),
  @JsonValue('CNS')
  cns('CNS');

  final String? value;

  const BasketItemMediaType(this.value);
}

enum TransactionTransactionResult {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('SCS')
  scs('SCS'),
  @JsonValue('ERR')
  err('ERR'),
  @JsonValue('WRN')
  wrn('WRN');

  final String? value;

  const TransactionTransactionResult(this.value);
}

enum TransactionTransactionType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ISS')
  iss('ISS'),
  @JsonValue('VLD')
  vld('VLD'),
  @JsonValue('ISP')
  isp('ISP'),
  @JsonValue('PRC')
  prc('PRC'),
  @JsonValue('CXL')
  cxl('CXL'),
  @JsonValue('PPC')
  ppc('PPC'),
  @JsonValue('EXP')
  exp('EXP'),
  @JsonValue('RFD')
  rfd('RFD'),
  @JsonValue('CCM')
  ccm('CCM');

  final String? value;

  const TransactionTransactionType(this.value);
}

enum TransactionFareProductType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('TKTBASED')
  tktbased('TKTBASED'),
  @JsonValue('ACCBASED')
  accbased('ACCBASED');

  final String? value;

  const TransactionFareProductType(this.value);
}

enum OwnerTypeEnum {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('CUSTOMER')
  customer('CUSTOMER'),
  @JsonValue('RESELLER')
  reseller('RESELLER');

  final String? value;

  const OwnerTypeEnum(this.value);
}

enum EpurseStatusEnum {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('OPEN')
  open('OPEN'),
  @JsonValue('CLOSED')
  closed('CLOSED');

  final String? value;

  const EpurseStatusEnum(this.value);
}

enum TransactionTypeEnum {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('TOP-UP')
  topUp('TOP-UP'),
  @JsonValue('CHARGE')
  charge('CHARGE'),
  @JsonValue('PRE-AUTHORIZATION')
  preAuthorization('PRE-AUTHORIZATION');

  final String? value;

  const TransactionTypeEnum(this.value);
}

enum TransactionResultTypeEnum {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ERROR')
  error('ERROR'),
  @JsonValue('SUCCESS')
  success('SUCCESS');

  final String? value;

  const TransactionResultTypeEnum(this.value);
}

enum ListInsertionTypeEnum {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('BLOCKED')
  blocked('BLOCKED'),
  @JsonValue('SUSPENDED')
  suspended('SUSPENDED');

  final String? value;

  const ListInsertionTypeEnum(this.value);
}

enum ListTypeEnum {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('BLACK')
  black('BLACK'),
  @JsonValue('WHITE')
  white('WHITE');

  final String? value;

  const ListTypeEnum(this.value);
}

enum StatusListEnum {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('INSERTED')
  inserted('INSERTED'),
  @JsonValue('REMOVED')
  removed('REMOVED');

  final String? value;

  const StatusListEnum(this.value);
}

enum LegDataEnum {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('TRMOB')
  trmob('TRMOB'),
  @JsonValue('PMOB')
  pmob('PMOB'),
  @JsonValue('SHARE')
  share('SHARE');

  final String? value;

  const LegDataEnum(this.value);
}

enum RelationTypeEnum {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('LEGAL GUARDIAN')
  legalGuardian('LEGAL GUARDIAN'),
  @JsonValue('FATHER')
  father('FATHER'),
  @JsonValue('MOTHER')
  mother('MOTHER'),
  @JsonValue('OTHER')
  other('OTHER');

  final String? value;

  const RelationTypeEnum(this.value);
}

enum NotificationStatusEnum {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ISSUED')
  issued('ISSUED'),
  @JsonValue('CONTESTED')
  contested('CONTESTED'),
  @JsonValue('CANCELED')
  canceled('CANCELED');

  final String? value;

  const NotificationStatusEnum(this.value);
}

enum PostalAddressTypeEnum {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('MAIL')
  mail('MAIL'),
  @JsonValue('HOME')
  home('HOME'),
  @JsonValue('WORK')
  work('WORK'),
  @JsonValue('RESIDENCE')
  residence('RESIDENCE'),
  @JsonValue('BILLING')
  billing('BILLING');

  final String? value;

  const PostalAddressTypeEnum(this.value);
}

enum ServiceTypeEnum {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('BUS')
  bus('BUS'),
  @JsonValue('METRO')
  metro('METRO'),
  @JsonValue('TRAIN')
  train('TRAIN'),
  @JsonValue('OTHER')
  other('OTHER');

  final String? value;

  const ServiceTypeEnum(this.value);
}

enum DocumentTypeEnum {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('PASSPORT')
  passport('PASSPORT'),
  @JsonValue('DRIVERLICENSE')
  driverlicense('DRIVERLICENSE'),
  @JsonValue('IDENTITYCARD')
  identitycard('IDENTITYCARD'),
  @JsonValue('OTHER')
  other('OTHER');

  final String? value;

  const DocumentTypeEnum(this.value);
}

enum PaymentStatusEnum {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('PAYED')
  payed('PAYED'),
  @JsonValue('DISPUTE')
  dispute('DISPUTE'),
  @JsonValue('NOTPAYED')
  notpayed('NOTPAYED'),
  @JsonValue('OTHER')
  other('OTHER');

  final String? value;

  const PaymentStatusEnum(this.value);
}

enum ContactTypeEnum {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('EMAIL')
  email('EMAIL'),
  @JsonValue('ADDRESS')
  address('ADDRESS'),
  @JsonValue('PHONE')
  phone('PHONE');

  final String? value;

  const ContactTypeEnum(this.value);
}

enum TouchpointEnum {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('DEVICE')
  device('DEVICE');

  final String? value;

  const TouchpointEnum(this.value);
}

enum ProductsGetOrgTC {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('AT')
  at('AT'),
  @JsonValue('OP')
  op('OP'),
  @JsonValue('CO')
  co('CO'),
  @JsonValue('DO')
  $do('DO'),
  @JsonValue('OW')
  ow('OW');

  final String? value;

  const ProductsGetOrgTC(this.value);
}

enum ProductsGetVldPT {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('C')
  c('C'),
  @JsonValue('D')
  d('D'),
  @JsonValue('H')
  h('H'),
  @JsonValue('M')
  m('M'),
  @JsonValue('T')
  t('T'),
  @JsonValue('W')
  w('W'),
  @JsonValue('Y')
  y('Y');

  final String? value;

  const ProductsGetVldPT(this.value);
}

enum ProductsGetCpRes {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('0')
  value_0('0'),
  @JsonValue('1')
  value_1('1');

  final String? value;

  const ProductsGetCpRes(this.value);
}

enum ProductsGetLugBT {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('LGGFB')
  lggfb('LGGFB'),
  @JsonValue('LGGLB')
  lgglb('LGGLB'),
  @JsonValue('LGGMB')
  lggmb('LGGMB'),
  @JsonValue('LGGN')
  lggn('LGGN'),
  @JsonValue('LGGSB')
  lggsb('LGGSB'),
  @JsonValue('LGGSP')
  lggsp('LGGSP');

  final String? value;

  const ProductsGetLugBT(this.value);
}

enum ProductsGetTpTyp {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('OBS')
  obs('OBS'),
  @JsonValue('MApp')
  mapp('MApp'),
  @JsonValue('atStop')
  atstop('atStop'),
  @JsonValue('onBoard')
  onboard('onBoard'),
  @JsonValue('online')
  online('online'),
  @JsonValue('telephone')
  telephone('telephone'),
  @JsonValue('electronicPass')
  electronicpass('electronicPass'),
  @JsonValue('HCE')
  hce('HCE'),
  @JsonValue('agency')
  agency('agency'),
  @JsonValue('tourOperator')
  touroperator('tourOperator'),
  @JsonValue('TVM')
  tvm('TVM'),
  @JsonValue('other')
  other('other'),
  @JsonValue('GRPTouchPoint')
  grptouchpoint('GRPTouchPoint'),
  @JsonValue('TO')
  to('TO'),
  @JsonValue('VA')
  va('VA');

  final String? value;

  const ProductsGetTpTyp(this.value);
}

enum ProductsGetMedTp {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('EMV')
  emv('EMV'),
  @JsonValue('SC')
  sc('SC'),
  @JsonValue('PPR')
  ppr('PPR'),
  @JsonValue('PPRS')
  pprs('PPRS'),
  @JsonValue('MOB')
  mob('MOB'),
  @JsonValue('VT')
  vt('VT'),
  @JsonValue('HCE')
  hce('HCE'),
  @JsonValue('CP')
  cp('CP'),
  @JsonValue('CIE')
  cie('CIE'),
  @JsonValue('CNS')
  cns('CNS');

  final String? value;

  const ProductsGetMedTp(this.value);
}

enum ProductsGetCpIdOp {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('AND')
  and('AND'),
  @JsonValue('OR')
  or('OR');

  final String? value;

  const ProductsGetCpIdOp(this.value);
}

enum SalespackagesGetTpTyp {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('MApp')
  mapp('MApp'),
  @JsonValue('atStop')
  atstop('atStop'),
  @JsonValue('onBoard')
  onboard('onBoard'),
  @JsonValue('online')
  online('online'),
  @JsonValue('telephone')
  telephone('telephone'),
  @JsonValue('electronicPass')
  electronicpass('electronicPass'),
  @JsonValue('HCE')
  hce('HCE'),
  @JsonValue('agency')
  agency('agency'),
  @JsonValue('tourOperator')
  touroperator('tourOperator'),
  @JsonValue('TVM')
  tvm('TVM'),
  @JsonValue('other')
  other('other'),
  @JsonValue('GRPTouchPoint')
  grptouchpoint('GRPTouchPoint'),
  @JsonValue('TO')
  to('TO'),
  @JsonValue('VA')
  va('VA');

  final String? value;

  const SalespackagesGetTpTyp(this.value);
}

enum SalespackagesGetOrgTC {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('AT')
  at('AT'),
  @JsonValue('OP')
  op('OP'),
  @JsonValue('CO')
  co('CO'),
  @JsonValue('DO')
  $do('DO'),
  @JsonValue('OW')
  ow('OW');

  final String? value;

  const SalespackagesGetOrgTC(this.value);
}

enum SalespackagesGetCpRes {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('0')
  value_0('0'),
  @JsonValue('1')
  value_1('1');

  final String? value;

  const SalespackagesGetCpRes(this.value);
}

enum SalespackagesGetMedTp {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('EMV')
  emv('EMV'),
  @JsonValue('SC')
  sc('SC'),
  @JsonValue('PPR')
  ppr('PPR'),
  @JsonValue('MOB')
  mob('MOB'),
  @JsonValue('VT')
  vt('VT'),
  @JsonValue('HCE')
  hce('HCE'),
  @JsonValue('CP')
  cp('CP'),
  @JsonValue('CIE')
  cie('CIE'),
  @JsonValue('CNS')
  cns('CNS');

  final String? value;

  const SalespackagesGetMedTp(this.value);
}

enum SalespackagesGetVldPT {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('C')
  c('C'),
  @JsonValue('D')
  d('D'),
  @JsonValue('H')
  h('H'),
  @JsonValue('M')
  m('M'),
  @JsonValue('T')
  t('T'),
  @JsonValue('W')
  w('W'),
  @JsonValue('Y')
  y('Y');

  final String? value;

  const SalespackagesGetVldPT(this.value);
}

enum SalespackagesGetLugBT {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('LGGFB')
  lggfb('LGGFB'),
  @JsonValue('LGGLB')
  lgglb('LGGLB'),
  @JsonValue('LGGMB')
  lggmb('LGGMB'),
  @JsonValue('LGGN')
  lggn('LGGN'),
  @JsonValue('LGGSB')
  lggsb('LGGSB'),
  @JsonValue('LGGSP')
  lggsp('LGGSP');

  final String? value;

  const SalespackagesGetLugBT(this.value);
}

enum SalespackagesGetCpIdOp {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('AND')
  and('AND'),
  @JsonValue('OR')
  or('OR');

  final String? value;

  const SalespackagesGetCpIdOp(this.value);
}

enum ExtendedDistanceMatrixGetServiceMode {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('01.00')
  value_0100('01.00'),
  @JsonValue('05.00')
  value_0500('05.00'),
  @JsonValue('07.00')
  value_0700('07.00');

  final String? value;

  const ExtendedDistanceMatrixGetServiceMode(this.value);
}

enum ExtendedDistanceMatrixLocationGetLocationType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ORIGIN')
  origin('ORIGIN'),
  @JsonValue('DESTINATION')
  destination('DESTINATION');

  final String? value;

  const ExtendedDistanceMatrixLocationGetLocationType(this.value);
}

enum SearchTransactionsGetTransactionType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('PRC')
  prc('PRC'),
  @JsonValue('PPC')
  ppc('PPC'),
  @JsonValue('ISS')
  iss('ISS'),
  @JsonValue('VLD')
  vld('VLD'),
  @JsonValue('ISP')
  isp('ISP'),
  @JsonValue('CXL')
  cxl('CXL'),
  @JsonValue('EXP')
  exp('EXP'),
  @JsonValue('RFD')
  rfd('RFD'),
  @JsonValue('CCM')
  ccm('CCM'),
  @JsonValue('OTH')
  oth('OTH');

  final String? value;

  const SearchTransactionsGetTransactionType(this.value);
}

enum SearchTransactionsGetTransactionResult {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('SCS')
  scs('SCS'),
  @JsonValue('ERR')
  err('ERR'),
  @JsonValue('WRN')
  wrn('WRN'),
  @JsonValue('CLD')
  cld('CLD');

  final String? value;

  const SearchTransactionsGetTransactionResult(this.value);
}
