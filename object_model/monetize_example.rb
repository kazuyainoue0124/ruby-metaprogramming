# Monetize gemの動作確認

require 'money'

# Set the rounding mode explicitly to avoid the warning
Money.rounding_mode = BigDecimal::ROUND_HALF_UP

# # Set the locale backend to avoid the deprecation warning
Money.locale_backend = :currency

require 'monetize'

bargain_price = Monetize.from_numeric(99, "USD")
puts bargain_price.format

# Numeric#to_moneyメソッドを使っても同じ結果が得られる
# Monetize gemはNumericクラスにto_moneyメソッドを追加している
standard_price = 100.to_money("USD")
puts standard_price.format