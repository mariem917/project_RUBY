class LogLineParser

  def initialize(log_line)
    @log_line = log_line.strip
  end

  def message
    @log_line.split(': ')[1].strip
  end

  def log_level
    @log_line.split(': ')[0].downcase[1..-1]
  end

  def reformat
    "#{message} (#{log_level})"
  end
end

puts LogLineParser.new('[INFO]: Operation completed').reformat




