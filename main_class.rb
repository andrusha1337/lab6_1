class Integr
  def initialize(toch = nil)
    @eps = toch
    @n = 0
  end

  def calc
    a = 0.0
    s1 = 0.0
    b = @n = 1.0
    loop do
      @n *= 2
      h = (b - a) / @n
      s = s1
      s1 = 0.0
      (0..@n - 1).each do |i|
        s1 += (f(a + i * h) + f(a + (i + 1) * h)) * h / 2
      end
      break if (s1 - s).abs <= @eps
    end
    s1
  end

  def f(x)
    x * (1 - x**2)**0.5
  end

  attr_accessor :eps
  attr_reader :n
end
