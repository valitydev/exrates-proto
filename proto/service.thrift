namespace java dev.vality.exrates.service
namespace erlang exrates.service

include "base.thrift"

typedef string SourceID

struct CurrencyData {
    1: required base.CurrencySymbolicCode source_currency
    2: required base.CurrencySymbolicCode destination_currency
}

struct GetCurrencyExchangeRateResult {
    1: required CurrencyData currency_data
    2: required base.Rational exchange_rate
    3: required base.Timestamp timestamp
}

struct GetCurrencyExchangeRateRequest {
    1: required CurrencyData currency_data
}

/**
* Запрос на конвертацию, где:
* source - валюта, из которой конвертируют
* destination - валюта, в которую конвертируют
* amount - сумма в валюте source в минорных денежных единицах
* datetime - дата и время, за которое нужно провести конвертацию
*/
struct ConversionRequest {
    1: required base.CurrencySymbolicCode source
    2: required base.CurrencySymbolicCode destination
    3: required base.Amount amount
    4: optional base.Timestamp datetime
}

exception ExRateNotFound {}
exception CurrencyNotFound {}

service ExchangeRateService {

    GetCurrencyExchangeRateResult GetExchangeRateData (1: GetCurrencyExchangeRateRequest request)
     throws (1: ExRateNotFound ex1)

     base.Rational GetConvertedAmount(1: SourceID source, 2: ConversionRequest request)
             throws (
                 1: ExRateNotFound ex1
                 2: CurrencyNotFound ex2
             )

}
