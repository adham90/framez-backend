# frozen_string_literal: true

module FrameService::Commands
  class Create < CommandBase
    # Attributes
    # attribute :frame_id, Integer
    attribute :name, String
    attribute :border_id, Integer
    attribute :mat_id, Integer

    # Validations
    # validates :REPLACE_ME, presence: true
  end
end
