def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end

#

def xor?(value1, value2)
  !!((value1 && !value2) || (value2 && !value1))
end