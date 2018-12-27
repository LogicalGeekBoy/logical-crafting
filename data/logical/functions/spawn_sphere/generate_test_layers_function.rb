# To generate the Minecraft function file:
#   $ ruby data/logical/functions/spawn_sphere/generate_test_layers_function.rb
#
# Note: For this to run in Minecraft, you need at least 17 render distance. This is only intended for testing the
#       generated sphere rather than player use.
#
# Command Block: Repeat | Unconditional | Needs Redstone (add lever)
# => execute at @e[type=!player] run setblock ~ ~-1 ~ diamond_block destroy
#
# Command Block: Chain | Unconditional | Always Active
# => kill @e[type=!minecraft:player]

class GenerateTestLayersFunction
  def generate
    function_file_path = File.join(__dir__, "test_layers.mcfunction")
    block = "black_concrete"

    File.open(function_file_path, "w") do |file|
      (-1..255).step(3) do |y|
        file.puts "fill ~ ~#{y} ~ ~127 ~#{y} ~255 #{block}"
        file.puts "fill ~128 ~#{y} ~ ~255 ~#{y} ~255 #{block}"

        file.puts "fill ~ ~#{y} ~256 ~256 ~#{y} ~256 #{block}"
        file.puts "fill ~256 ~#{y} ~ ~256 ~#{y} ~255 #{block}"

        file.puts "say Layer y=#{y} done"
        file.puts ""
      end
    end
  end
end

GenerateTestLayersFunction.new.generate
