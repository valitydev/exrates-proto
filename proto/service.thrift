namespace java dev.vality.exrates.service
namespace erlang exrates.service

include "base.thrift"
include "events.thrift"

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

service ExchangeRateService {

    GetCurrencyExchangeRateResult GetExchangeRateData (1: GetCurrencyExchangeRateRequest request)

}
