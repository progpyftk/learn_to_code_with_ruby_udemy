to_euros = lambda {|dollar| dollar * 0.95 }
to_pesos = lambda {|dollar| dollar * 20.67 }
to_rupees = lambda {|dollar| dollar * 68.13 }

# note that we dont need to use yield here, because we are calling lambda.call
def convert_currency(dollars, currency_lambda)
    currency_lambda.call(dollars) if dollars.is_a?(Numeric)
end

# because of currency_lambda is in fact a method parameter, we dont need to use &
# note that it does not expect a block, but yield always expect a block
p convert_currency(1000, to_euros)
p convert_currency(1000, to_pesos)
p convert_currency(1000, to_rupees)

# in this case, the .map method uses yield, and expects a block
# so we must use &
p [100, 2200, 3000].map(&to_euros)