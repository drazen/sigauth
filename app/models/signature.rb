class Signature
  include Mongoid::Document
  field :name, type: String
  field :signature, type: String
end
