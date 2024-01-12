require 'httparty'

desc "import all prompts from huggingface"

task :import_prompts => :environment do
  limit = 100
  offset = 0
  continue = true

  while continue
    sleep(2) if offset.positive? && (offset % 5000).zero? # avoid rate limit
    puts "offset: #{offset}"
    response = HTTParty.get("https://datasets-server.huggingface.co/rows?dataset=Gustavosta%2FStable-Diffusion-Prompts&config=default&split=train&offset=#{offset}&length=#{limit}")
    if response["rows"].count.positive?
      prompts = []
      response["rows"].each do |row|
        prompts << { prompt: row.dig("row", "Prompt") }
      end

      Prompt.import prompts

      offset += limit
    else
      continue = false
    end
  end

  Prompt.reindex
end
