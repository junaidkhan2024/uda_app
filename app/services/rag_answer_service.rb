class RagAnswerService
  SYSTEM_PROMPT = <<~PROMPT
    You are a helpful assistant answering questions about this application's data.
    Only use the CONTEXT below to answer. If the answer isn't in the context,
    say you don't have that information — do not make things up.
  PROMPT

  def self.call(question)
    matches = KnowledgeChunk.search_by_similarity(question, limit: 5)
    context = matches.map { |m| "- #{m.content}" }.join("\n")

    chat = RubyLLM.chat(provider: :ollama, model: "llama3.1", assume_model_exists: true)
    chat.with_instructions(SYSTEM_PROMPT)

    chat.ask(<<~PROMPT)
      CONTEXT:
      #{context}

      QUESTION: #{question}
    PROMPT
  end
end
