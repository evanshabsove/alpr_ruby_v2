module AlprRuby
  class Make
    include Virtus.model

    attribute :confidence, Float
    attribute :name, String
  end
end
