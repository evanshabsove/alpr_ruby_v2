module AlprRuby
  class Color
    include Virtus.model

    attribute :confidence, Float
    attribute :name, String
  end
end
