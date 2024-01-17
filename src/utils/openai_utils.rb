require_relative '../lib/api/openai.rb'

module ChatUtil
  def chat(prompt)
    ClientOpenAI.init_client.chat(
      parameters: {
        model: "gpt-3.5-turbo",
        messages: [{ role: "user", content: prompt}],
        temperature: 0.7,
        }
      )
    end
  end
end