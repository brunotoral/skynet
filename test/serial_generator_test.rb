 require "test_helper"

class SerialGenerator < Minitest::Test
  PADRAO_DO_NUMERO = /^[A-Z]{2}\d{3}$/

  def test_e_um_numero_valido
    assert_match PADRAO_DO_NUMERO, Skynet::SerialGenerator.new.generate
  end

  def test_chars_are_frozen
    assert Skynet::SerialGenerator::CHARS.frozen?
  end
end
