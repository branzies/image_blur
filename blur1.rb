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


# class Image
#   def initialize(iteration)
#     @iteration = iteration
#     @row_length = iteration.length
#     @collumn_length = iteration[0].length
#   end

#   def output_image
#     @iteration.each do |row| #each index in array is saved as row 
#       row.each do |pixel| #each index in row is saved as pixel 
#         print pixel, '' #should give the value of elemets 
#       end
#     puts
#     end
#   end

#   def spread(row_index, collumn_index)
#     @iteration[row_index -1][collumn_index] = 1 unless row_index == 0 
#     @iteration[row_index +1][collumn_index] = 1 unless row_index >= @row_length-1
#     @iteration[row_index][collumn_index -1] = 1 unless collumn_index == 0
#     @iteration[row_index][collumn_index +1] = 1 unless collumn_index >= @collumn_length-1
#   end

#   def find_ones
#     one_pixel =[]

#     @iteration.each_with_index do |row_iteration, row_index|
#       row_iteration.each_with_index do |cell, collumn_index|
#         if cell == 1 
#           one_pixel << [row_index, @collumn_length]
#         end
#       end
#     end
#     one_pixel
#   end

#   def transform
#     iteration_coords = find_ones

#     iteration_coords.each do |x, y|
#       spread(x, y)
#     end  
#   end
# end

# image = Image.new([
#   [0, 0, 0, 0],
#   [0, 1, 0, 0],
#   [0, 0, 0, 1],
#   [0, 0, 0, 0]
# ])

# image.output_image
# puts "--"
# image.transform
# image.output_image
