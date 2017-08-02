module AlprRuby
  class ProcessingTime
    include Virtus.model

    attribute :total, Float
    attribute :plates, Float
    attribute :vehicles, Float
    
  end
end
