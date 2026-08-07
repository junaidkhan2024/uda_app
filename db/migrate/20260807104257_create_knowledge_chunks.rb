class CreateKnowledgeChunks < ActiveRecord::Migration[8.1]
  def change
    create_table :knowledge_chunks do |t|
      t.text :content, null: false
      t.string :source_type
      t.bigint :source_id
      t.vector :embedding, limit: 768
      t.timestamps
    end

    add_index :knowledge_chunks, [ :source_type, :source_id ]
    add_index :knowledge_chunks, :embedding, using: :hnsw, opclass: :vector_cosine_ops
  end
end
