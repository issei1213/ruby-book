# 2進数→16進数
# リファクタリング前
# def to_hex(r,g,b)
#   "#" +
#   r.to_s(16).rjust(2,"0") +
#   g.to_s(16).rjust(2,"0") +
#   b.to_s(16).rjust(2,"0")
# end

# リファクタリング後(1回目)
# def to_hex(r,g,b)
#   hex = "#"
#   [r,g,b].each do |n|
#     hex += n.to_s(16).rjust(2,"0")
#   end
#   hex
# end

# リファクタリング後(2回目)
def to_hex(r,g,b)
  [r,g,b].inject("#") do |hex,n|
    hex + n.to_s(16).rjust(2,"0")
  end
end

# 16進数→2進数
# リファクタリング前
# def to_ints(hex)
#   r = hex[1..2]
#   g = hex[3..4]
#   b = hex[5..6]
#   ints = []
#   [r,g,b].each do |s|
#     ints << s.hex
#   end
#   ints
# end

# リファクタリング後
# def to_ints(hex)
#   r = hex[1..2]
#   g = hex[3..4]
#   b = hex[5..6]
#   [r,g,b].map do |s|
#     s.hex
#   end
# end

# リファクタリング後(上級編1)
# def to_ints(hex)
#   r,g,b = hex[1..2],hex[3..4],hex[5..6]
#   [r,g,b].map do |s|
#     s.hex
#   end
# end

# リファクタリング後(上級編2)
def to_ints(hex)
  hex.scan(/\w\w/).map(&:hex)
end
