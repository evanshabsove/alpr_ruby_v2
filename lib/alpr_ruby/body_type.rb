module AlprRuby
  class BodyType
    include Virtus.model

    attribute :confidence, Float
    attribute :name, String
  end
end
