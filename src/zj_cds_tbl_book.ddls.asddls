@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root view for zjtbl_book table'
//@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZJ_CDS_TBL_BOOK 
  as select from zjtbl_book
{
  key travel_id     as Travel_Id,
  key booking_id    as Booking_Id,
      booking_date  as Booking_Date,
      customer_id   as Customer_Id,
      carrier_id    as Carrier_Id,
      connection_id as Connection_Id,
      flight_date   as Flight_Date,
      @Semantics.amount.currencyCode : 'Currency_Code'
      flight_price  as Flight_Price,
      currency_code as Currency_Code
}
