class Image
  def initialize(iteration)
    @iteration = iteration
  end

  def output_image
    @iteration.each do |row| #each index in array is saved as row 
      p row
    end
  end
end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

image.output_image
