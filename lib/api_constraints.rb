class ApiConstraints
  def initialize(options)
    @version = options[:version]
    @default = options[:default]
  end

  def matchs?(req)
    @default || req.headers['Accepts'].include?("application/simbora.v#{@version}")
  end
end
