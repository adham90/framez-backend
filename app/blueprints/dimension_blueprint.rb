# frozen_string_literal: true

class DimensionBlueprint < Blueprinter::Base
  identifier :id

  fields :width, :height
end
