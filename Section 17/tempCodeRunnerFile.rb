# used when you need to match any character except those - ^
# Example: match all the characters except all the hexadecimal digits
p "lorenzo123456".match(/[^A-Fz-f0-9]/)