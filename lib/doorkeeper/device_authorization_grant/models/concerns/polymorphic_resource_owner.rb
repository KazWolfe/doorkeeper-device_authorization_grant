module Doorkeeper
  module DeviceAuthorizationGrant
    module Models
      module PolymorphicResourceOwner
        extend ActiveSupport::Concern

        included do
          if Doorkeeper.configuration.polymorphic_resource_owner?
            belongs_to :resource_owner, polymorphic: true, optional: true
          end
        end
      end
    end
  end
end
