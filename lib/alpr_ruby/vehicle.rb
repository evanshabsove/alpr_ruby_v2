module AlprRuby
  class Vehicle
    include Virtus.model

    attribute :color, Array[Color]
    attribute :body_type, Array[BodyType]
    attribute :make, Array[Make]
    attribute :make_model, Array[Model]

  end
end
