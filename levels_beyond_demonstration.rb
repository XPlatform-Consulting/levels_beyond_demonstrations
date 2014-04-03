class LevelsBeyondDemonstration < ActiveRecord::Base
  include Action

  # Default Values

  DEFAULT_HOST_ADDRESS  = 'localhost'
  DEFAULT_HOST_PORT     = ''
  DEFAULT_USERNAME      = 'admin'
  DEFAULT_PASSWORD      = 'password'


  # Input Parameters

  VAR_OPERATION = 'operation'
  OPERATION_LIST = [
    'Project_create',
    'Project_asset_add',
    'Project_metadata_get',
    'Project_metadata_set',
    'Asset_create',
    'Asset_delete',
    'Asset_metadata_get',
    'Asset_metadata_delete',
    'Collection_create',
    'Collection_asset_add',
    'Execute_workflow'
  ]

  # Output Fields
  # TODO Add Output Fields


  # Revision history
  # => 0.0.1 initial release
  def self.version
    return 0, 0, 1
  end

  def self.display_name
    'Levels Beyond'
  end

  # The Plug-in Description
  def description
    'This action plug-in can be used to interact with the Levels Beyond Reach Engine platform.'
  end

  def category
    [ CATEGORY_INTEGRATION ]
  end

  def self.dependencies
    [ ]
  end

  def inputs_spec
    @required_inputs = {}
    @optional_inputs = { '' => TYPE_STRING }

    return @required_inputs, @optional_inputs
  end

  def outputs_spec
    return { '' => TYPE_STRING }
  end

  def execute

  end

end