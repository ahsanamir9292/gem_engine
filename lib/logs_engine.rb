require "logs_engine/engine"
require "google/cloud/logging"

module LogsEngine
  def self.logs(text)
		# Your Google Cloud Platform project ID
		project_id = "cogent-anvil-256812"
		# Instantiates a client
		logging = Google::Cloud::Logging.new project: project_id
		# Prepares a log entry
		entry = logging.entry
		# The data to log
		entry.payload = text
		# The name of the log to write to
		entry.log_name = "my-log"
		# The resource associated with the data
		entry.resource.type = "global"

		# Writes the log entry
		logging.write_entries entry

		puts "Logged #{entry.payload}"
  end
end
