require 'active_record'

module UseIndex
  module ActiveRecordModelExtension
    extend ActiveSupport::Concern

    module ClassMethods
      def use_index(index)
        if ActiveRecord::Base.connection.class.to_s =~ /mysql/i
          from("#{table_name} USE INDEX(#{index})")
        else
          self
        end
      end
    end
  end
end
