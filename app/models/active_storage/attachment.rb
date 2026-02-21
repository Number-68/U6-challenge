


class ActiveStorage::Attachment < ApplicationRecord 

    self.table_name = "active_storage_attachments"

    belongs_to :record, polymorphic: true, inverse_of: :image_attachment
    belongs_to :blob, class_name: "ActiveStorage::Blob"


    def self.ransackable_attributes(auth_object = nil) 
        ["id", "name", "record_id", "record_type", "blob_id", "created_at"] 
    end 
end