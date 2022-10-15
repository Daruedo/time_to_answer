class Coin < ApplicationRecord
    belongs_to :mining_type
    validate  :valid_url_image

    def valid_url_image
        if self.url_image.present?
            validate_url_image
        else
            set_default_url_image
        end
    end

    def validate_url_image
        uri = URI.parse(self.url_image.to_s)

        self.errors.add(:url_image, "is invalid") if !uri.kind_of?(URI::HTTP)
    end

    def set_default_url_image
        self.url_image = "https://i.pinimg.com/474x/2c/e8/89/2ce889b2a3332f0ddb749a50285115e8.jpg"
    end
end

