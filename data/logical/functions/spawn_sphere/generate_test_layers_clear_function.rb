# To generate the Minecraft function file:
#   $ ruby data/logical/functions/spawn_sphere/generate_test_layers_clear_function.rb
#
# Note: For this to run in Minecraft, you need at least 17 render distance. This is only intended for testing the
#       generated sphere rather than player use.

class GenerateTestLayersClearFunction
  def generate
    function_file_path = File.join(__dir__, "test_layers_clear.mcfunction")

    File.open(function_file_path, "w") do |file|
      (-1..255).step(3) do |y|
        file.puts "fill ~ ~#{y} ~ ~127 ~#{y} ~255 air replace black_concrete"
        file.puts "fill ~128 ~#{y} ~ ~255 ~#{y} ~255 air replace black_concrete"

        file.puts "fill ~ ~#{y} ~256 ~256 ~#{y} ~256 air replace black_concrete"
        file.puts "fill ~256 ~#{y} ~ ~256 ~#{y} ~255 air replace black_concrete"

        file.puts "say Layer y=#{y} done"
        file.puts ""
      end
    end
  end
end

GenerateTestLayersClearFunction.new.generate
