# frozen_string_literal: true

class BorderBlueprint < Blueprinter::Base
  identifier :id

  fields :name

  field :dimensions do |klass|
    klass.dimensionals.map do |d|
      {
        id: d.dimension.id,
        width: d.dimension.width,
        height: d.dimension.height,
        price: d.price.format
      }
    end
  end
end
