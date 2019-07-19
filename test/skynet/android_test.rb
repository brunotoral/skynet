require "test_helper"

class AndroidTest < MiniTest::Test
  def setup
    @android_one = Skynet::Android.new
    @android_two = Skynet::Android.new
  end

  def test_ao_resetar_deve_trocar_de_numero
    android = Skynet::Android.new
    primeiro_numero = android.numero
    android.resetar
    refute_equal primeiro_numero, android.numero
  end

  def test_androids_devem_ter_numeros_diferentes
    refute_equal @android_one.numero, @android_two.numero
  end

  def test_androids_possuem_um_objetivo
    objetivo = @android_one.objetivo

    refute_equal objetivo, objetivo.empty?
  end
end
