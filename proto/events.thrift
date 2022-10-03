namespace java dev.vality.exrates.events
namespace erlang exrates.events

include "base.thrift"

/** ISO 4217 */
typedef string CurrencySymbolicCode
typedef string EventID

struct Currency {
    1: required CurrencySymbolicCode symbolic_code
    2: required i8 exponent
}

union CurrencyEventPayload {
    1: CurrencyExchangeRate exchange_rate
}

struct CurrencyExchangeRate {
    1: required Currency source_currency
    2: required Currency destination_currency
    /** Rational presentation of the exchange rate. For example, exchange from USD to BDT = 101.678295 -> 101678295 / 1000000 */
    3: required base.Rational exchange_rate
    4: required base.Timestamp timestamp
}

struct CurrencyEvent {
    1: required EventID event_id
    2: required base.Timestamp event_created_at
    3: required CurrencyEventPayload payload
}
