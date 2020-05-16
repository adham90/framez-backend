# frozen_string_literal: true

class MatBlueprint < Blueprinter::Base
  identifier :id

  fields :name, :paddings

  field :dimensions do |klass|
    klass.dimensionals.map do |d|
      {
        id: d.dimension.id,
        width: d.dimension.width,
        height: d.dimension.height,
        price: d.price
      }
    end
  end
end
