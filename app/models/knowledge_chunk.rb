class KnowledgeChunk < ApplicationRecord
  has_neighbors :embedding

  belongs_to :source, polymorphic: true, optional: true # optional convenience

  def self.search_by_similarity(query_text, limit: 5)
    query_vector = RubyLLM.embed(
      query_text, provider: :ollama, model: "nomic-embed-text", assume_model_exists: true
    ).vectors

    nearest_neighbors(:embedding, query_vector, distance: :cosine).limit(limit)
  end
end
