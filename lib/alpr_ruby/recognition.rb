module AlprRuby
  class Recognition
    include Virtus.model

    attribute :results, Array[Result]
    attribute :uuid, String
    attribute :epoch_time, Integer
    attribute :processing_time, ProcessingTime
    attribute :image_bytes, String
    attribute :img_width, Integer
    attribute :img_height, Integer
    attribute :credits_monthly_used, Integer
    attribute :credits_monthly_total, Integer
    attribute :image_bytes_prefix, String
    attribute :credit_cost, Integer
    attribute :version, Integer
    attribute :error, Boolean
    attribute :regions_of_interest, Array[RegionOfInterest]

  end
end
