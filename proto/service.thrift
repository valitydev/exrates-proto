namespace java dev.vality.exrates.service
namespace erlang exrates.service

include "base.thrift"
include "events.thrift"

struct GetCurrencyExchangeRateResult {
    1: required base.CurrencyData currency_data
    2: required base.Rational exchange_rate
    3: required base.Timestamp timestamp
}

struct GetCurrencyExchangeRateRequest {
    1: required base.CurrencyData currency_data
}

service ExchangeRateService {

    CurrencyExchangeRateResult GetExchangeRateData (1: GetCurrencyExchangeRateRequest request)

}
