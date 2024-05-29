namespace java dev.vality.exrates.base
namespace erlang exrates.base

/** ISO 4217 */
typedef string CurrencySymbolicCode
/**
 * Timestamp according to RFC 3339.
 *
 * The string must contain date and time in UTC in the following format:
 * `2016-03-22T06:12:27Z`.
 */
typedef string Timestamp

/** Rational number. */
struct Rational {
    1: required i64 p
    2: required i64 q
}

struct Currency {
    1: required CurrencySymbolicCode symbolic_code
    2: required i16 exponent
}

/** Сумма в минимальных денежных единицах. */
typedef i64 Amount
