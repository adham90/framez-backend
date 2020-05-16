# frozen_string_literal: true

module FrameService::Usecases
  class Create < CaseBase
    def call
      cmd.dimensions
    end
  end
end

{
  name: 'Frame name',
  border_id: 1,
  mat_id: []
}

art:

mat: 
  name
  fill_color
  border_color
  paddings: [1, 2, 3]
  base_price

Frame:
  name
  color_codes [1,2,3]
  width
  height
  mat_padding
  thickness
  images
  price
  matt_id

mat_price_const