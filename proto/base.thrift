namespace java dev.vality.exrates.base
namespace erlang exrates.base

/**
 * Отметка во времени согласно RFC 3339.
 *
 * Строка должна содержать дату и время в UTC в следующем формате:
 * `2016-03-22T06:12:27Z`.
 */
typedef string Timestamp

/** Рациональное число. */
struct Rational {
    1: required i64 p
    2: required i64 q
}
