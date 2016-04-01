class Settings
  include Singleton

  def self.application
    symbolize configs_of(:application)
  end

  def self.mobile
    symbolize configs_of(:mobile)
  end

  def self.tablet
    symbolize configs_of(:tablet)
  end

  def self.desktop
    symbolize configs_of(:desktop)
  end

  protected

  def self.configs_of file_name
    config_file = "./config/#{file_name.to_s}.yml"
    YAML.load_file File.expand_path(config_file)
  end

  def self.symbolize(params)
    params.keys.each do |k|
      ks = k.respond_to?(:to_sym) ? k.to_sym : k
      params[ks] = params.delete k
      symbolize_all_keys params[ks] if params[ks].kind_of? Hash
    end
  end

end