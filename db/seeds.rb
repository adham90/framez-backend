# frozen_string_literal: true

10.times do |n|
  Dimension.create!(width: n, height: n)
end

10.times do |n|
  Border.create!(name: "b-#{n}")
end

10.times do |n|
  Mat.create!(name: "m-#{n}", paddings: [1, 2, 3, 4])
end
