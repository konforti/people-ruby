require 'json'
require 'people/api/v1/persons'
require 'people/api/v1/roles'

module People
  module Api
    module V1
      include People::Api::V1::Persons
      include People::Api::V1::Roles
    end
  end
end
