module AlprRuby
  class Model
    include Virtus.model

    attribute :confidence, Float
    attribute :name, String
  end
end
