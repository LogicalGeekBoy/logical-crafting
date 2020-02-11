require "fileutils"
require "zip"

class BuildPack
  BUILD_OUTPUT_PATH = "./dist/logical-crafting.zip"

  def call
    clean_files
    zip_pack
  end

  private

  def clean_files
    FileUtils.rm(BUILD_OUTPUT_PATH, :force => true)
  end

  def zip_pack
    files = ['pack.mcmeta', 'LICENSE.md', 'README.md'].concat(Dir.glob('data/**/*.{json,mcfunction}'))

    Zip::File.open(BUILD_OUTPUT_PATH, Zip::File::CREATE) do |zip_file|
      files.each do |file|
        zip_file.add(file, file)
      end
    end
  end
end

BuildPack.new.call
