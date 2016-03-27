class OneTimePad

  def decrypt(k, c)
    # todo
  end

  def encrypt(k, m)
    k.scan(/\h\h/)
      .map { |hex| hex.hex }
      .each_with_index.map { |n,i| (n ^ m[i].ord) }
      .map { |n| n.to_s(16).rjust(2, "0") }.join("")
  end

  def hex_to_words(hex_string)
    hex_string.scan(/\h\h/)
      .map { |hex| hex.hex }
      .map { |n| n.chr }
      .join("")
  end

  def words_to_hex(word)
    word
      .scan(/./)
      .map { |ch| ch.ord }
      .map { |n|  n.to_s(16).rjust(2, "0") }
      .join("")
  end
end
