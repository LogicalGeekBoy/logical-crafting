# To generate the Minecraft function file:
#   $ ruby data/logical/functions/perimeter/generate_clear_perimeter_function.rb

# 21 * 21 chunks (336 blocks)
# Render distance 12
# Player starts in centre chunk, north-west corner to chunk align

# _MethodZz_: https://youtu.be/gjdHLdUvd9s
# xisumavoid: https://youtu.be/dAy6mLr1ZcA

class GenerateClearPerimeterFunction
  def initialize(chunks)
    @chunks = chunks # A chunk is 16x16 blocks as we fill in 16x16x128 columns. `chunks` should be an odd number
  end

  def generate
    function_file_path = File.join(__dir__, "clear.mcfunction")

    File.open(function_file_path, "w") do |file|
      write_bossbar(to: file)

      chunk = 0

      chunks_radius = (chunks - 1) / 2
      chunk_range = -chunks_radius..chunks_radius

      chunk_range.each do |chunk_x|
        chunk_range.each do |chunk_z|
          chunk += 1

          write_fill_commands_for(chunk_x, chunk_z, to: file)
          write_bossbar_for(chunk, to: file)
        end
      end

      write_afk_spot(to: file)
      write_remove_entities(to: file)

      write_complete_commands(to: file)
    end
  end

  private

  attr_reader :chunks

  def write_bossbar(to:)
    to.puts('bossbar add perimeter "Clearing Perimeter"')
    to.puts("bossbar set perimeter color green")
    to.puts("bossbar set perimeter players @s")
    to.puts("bossbar set perimeter style progress")
    to.puts("")
  end

  def write_bossbar_for(chunk, to:)
    total_chunks = chunks * chunks

    percent = (chunk.to_f / total_chunks.to_f) * 100.0

    to.puts("bossbar set perimeter value #{percent.round}")
    to.puts("")
  end

  def write_fill_commands_for(chunk_x, chunk_z, to:)
    x1 = chunk_x * 16
    z1 = chunk_z * 16
    x2 = x1 + 15
    z2 = z1 + 15

    to.puts("fill ~#{x1} 134 ~#{z1} ~#{x2} 255 ~#{z2} air")
    to.puts("fill ~#{x1} 6 ~#{z1} ~#{x2} 133 ~#{z2} air")
    to.puts("fill ~#{x1} 5 ~#{z1} ~#{x2} 5 ~#{z2} white_stained_glass")
    to.puts("")
  end

  def write_afk_spot(to:)
    to.puts "setblock ~ ~-1 ~ diamond_block"
  end

  def write_remove_entities(to:)
    to.puts "kill @e[type=!player]"
    to.puts "kill @e[type=item]"
  end

  def write_complete_commands(to:)
    to.puts("bossbar remove perimeter")
    to.puts('tellraw @s ["", {"text": "Perimeter Complete", "bold":true, "color":"green"}]')
  end
end

GenerateClearPerimeterFunction.new(21).generate
