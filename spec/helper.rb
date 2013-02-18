require 'yaccl'

def create_repository(id)
  meta = YACCL::Model::Server.repository('meta')
  f = meta.new_folder
  f.name = id
  f.object_type_id = 'repository'
  f.properties['supportsRelationships'] = true
  f.properties['supportsPolicies'] = true
  f.properties['supportsItem'] = true
  meta.root.create(f)
  YACCL::Model::Server.repository(id)
end

def delete_repository(id)
  meta = YACCL::Model::Server.repository('meta')
  meta.object(id).delete
end