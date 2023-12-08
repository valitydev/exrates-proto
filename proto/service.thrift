namespace java dev.vality.exrates.service
namespace erlang exrates.service

include "base.thrift"
include "events.thrift"

struct GetCurrencyExchangeRate {
    1: required base.Currency source_currency
    2: required base.Currency destination_currency
}

service ExchangeRateService {

    events.CurrencyExchangeRate GetExchangeRateData (1: GetCurrencyExchangeRate request)

}
