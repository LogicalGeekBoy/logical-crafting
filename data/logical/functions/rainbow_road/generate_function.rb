# To generate the Minecraft function file:
#   $ ruby data/logical/functions/rainbow_road/generate_function.rb

class RainbowRoad
  def generate_function
    function_file_path = File.join(__dir__, "fill.mcfunction")

    File.open(function_file_path, "w") do |file|
      file.puts "//sel poly"

      coords.each_cons(2) do |current_coords, next_coords|
        pos2x = current_coords[0]
        pos2z = current_coords[1]
        pos3x = next_coords[0]
        pos3z = next_coords[1]
        block = current_coords[2]

        file.puts "//pos1 0,72,0"
        file.puts "//pos2 #{pos2x},72,#{pos2z}"
        file.puts "//pos2 #{pos3x},72,#{pos3z}"
        file.puts "//replace stone #{block}"
        file.puts "//desel"
        file.puts ""
      end
    end
  end

  private

  def coords
    [
      ['165','0','yellow_concrete'],
      ['164','22','lime_concrete'],
      ['159','43','light_blue_concrete'],
      ['152','63','blue_concrete'],
      ['143','83','purple_concrete'],
      ['131','100','magenta_concrete'],
      ['117','117','red_concrete'],
      ['100','131','orange_concrete'],
      ['83','143','yellow_concrete'],
      ['63','152','lime_concrete'],
      ['43','159','light_blue_concrete'],
      ['22','164','blue_concrete'],
      ['0','165','purple_concrete'],
      ['-22','164'',magenta_concrete'],
      ['-43','159','red_concrete'],
      ['-63','152','orange_concrete'],
      ['-83','143','yellow_concrete'],
      ['-100','131','lime_concrete'],
      ['-117','117','light_blue_concrete'],
      ['-131','100','blue_concrete'],
      ['-143','83','purple_concrete'],
      ['-152','63','magenta_concrete'],
      ['-159','43','red_concrete'],
      ['-164','22','orange_concrete'],
      ['-165','0','yellow_concrete'],
      ['-164','-22','lime_concrete'],
      ['-159','-43','light_blue_concrete'],
      ['-152','-63','blue_concrete'],
      ['-143','-83','purple_concrete'],
      ['-131','-100','magenta_concrete'],
      ['-117','-117','red_concrete'],
      ['-100','-131','orange_concrete'],
      ['-83','-143','yellow_concrete'],
      ['-63','-152','lime_concrete'],
      ['-43','-159','light_blue_concrete'],
      ['-22','-164','blue_concrete'],
      ['0','-165','purple_concrete'],
      ['22','-164','magenta_concrete'],
      ['43','-159','red_concrete'],
      ['63','-152','orange_concrete'],
      ['83','-143','yellow_concrete'],
      ['100','-131','lime_concrete'],
      ['117','-117','light_blue_concrete'],
      ['131','-100','blue_concrete'],
      ['143','-83','purple_concrete'],
      ['152','-63','magenta_concrete'],
      ['159','-43','red_concrete'],
      ['164','-22','orange_concrete'],
      ['165','0','yellow_concrete']
    ]
  end
end

RainbowRoad.new.generate_function
