class KnowledgeIndexJob < ApplicationJob
  queue_as :default

  def perform(source_type, source_id)
    record = source_type.constantize.find(source_id)
    KnowledgeIndexer.index(record, text: "#{record.title}\n\n#{record.body}")
  end
end
