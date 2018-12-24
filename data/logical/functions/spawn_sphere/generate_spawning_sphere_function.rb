# To generate the Minecraft function file:
#   $ ruby data/logical/functions/spawn_sphere/generate_spawning_sphere_function.rb

class GenerateSphereFunction
  def initialize(radius: 128, markers: 32)
    @radius = radius
    @degrees_between_markers = 360.0 / markers.to_f
  end

  def generate
    function_file_path = File.join(__dir__, "show.mcfunction")

    File.open(function_file_path, "w") do |file|
      (-180.0..180.0).step(degrees_between_markers) do |y_rot|
        (-90.0..90.0).step(degrees_between_markers) do |x_rot|
          file.puts "tp @s ~ ~ ~ #{y_rot} #{x_rot}"
          file.puts 'execute at @s run summon minecraft:armor_stand ^ ^ ^128 {CustomName:"\"logical-spawn-marker\"",Invulnerable:1,NoGravity:1}'
        end
      end

      file.puts "effect give @e[name=logical-spawn-marker] minecraft:glowing 99999 1 true"
    end
  end

  private

  attr_reader :radius, :degrees_between_markers
end

GenerateSphereFunction.new.generate
