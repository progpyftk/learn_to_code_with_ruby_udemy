# they must be put in the very end - remember that! If not you might have an error
def make_phone_call(number, international_code, area_code = 27)
    p "Calling to number #{number}-#{international_code}-#{area_code}"
end
make_phone_call("996991149", "+55")
make_phone_call("996991149", "+55", "11")