class Ckeditor::Asset < ActiveRecord::Base
    include ActiveRecord
    include Ckeditor::Orm::ActiveRecord::AssetBase
end
