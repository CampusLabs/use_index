require "use_index/active_record_module_extension"
require "use_index/version"

ActiveSupport.on_load(:active_record) do
  include UseIndex::ActiveRecordModelExtension
end