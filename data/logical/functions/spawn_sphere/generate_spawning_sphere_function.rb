# To generate the Minecraft function file:
#   $ ruby data/logical/functions/spawn_sphere/generate_spawning_sphere_function.rb

class GenerateSphereFunction
  def initialize(radius: 128, markers: 64, marker_name: "logical-spawn-marker")
    @radius = radius
    @markers = markers.to_f
    @marker_name = marker_name
    @full_marker_name = "\"\\\"#{marker_name}\\\"\""
  end

  def generate
    function_file_path = File.join(__dir__, "show.mcfunction")
    x_degrees_between_markers = 360.0 / markers

    File.open(function_file_path, "w") do |file|
      (-90.0..90.0).step(x_degrees_between_markers) do |x_rot|
        x_percent = 100.0 - ((x_rot.abs / 90.0) * 100.0)

        if x_percent.positive?
          y_degrees_between_markers = 360.0 / ((markers / 100.0) * x_percent)

          (-180.0..180.0).step(y_degrees_between_markers) do |y_rot|
            write_marker_for(x_rot, y_rot, to: file)
          end
        end
      end

      write_marker_for(0, 90, to: file)
      write_marker_for(0, -90, to: file)

      file.puts "effect give @e[name=#{marker_name}] minecraft:glowing 99999 1 true"
    end
  end

  private

  attr_reader :radius, :markers, :marker_name, :full_marker_name

  def write_marker_for(x_rot, y_rot, to:)
    to.puts "tp @s ~ ~ ~ #{y_rot} #{x_rot}"
    to.puts "execute at @s run summon minecraft:armor_stand ^ ^ ^#{radius} {CustomName:#{full_marker_name},Invulnerable:1,NoGravity:1}"
  end
end

GenerateSphereFunction.new.generate
