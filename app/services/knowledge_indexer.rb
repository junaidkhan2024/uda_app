class KnowledgeIndexer
  CHUNK_SIZE = 800 # characters, adjust to taste

  def self.index(record, text:)
      chunks = chunk_text(text)

      # Batch-embed all chunks in one call — much faster than one at a time
      result = RubyLLM.embed(
      chunks, provider: :ollama, model: "nomic-embed-text", assume_model_exists: true
      )

      KnowledgeChunk.where(source_type: record.class.name, source_id: record.id).delete_all

      chunks.each_with_index do |chunk, i|
      KnowledgeChunk.create!(
          content: chunk,
          source_type: record.class.name,
          source_id: record.id,
          embedding: result.vectors[i]
      )
      end
  end

  def self.chunk_text(text)
      text.scan(/.{1,#{CHUNK_SIZE}}(?:\s|\z)/).map(&:strip).reject(&:empty?)
  end
end
