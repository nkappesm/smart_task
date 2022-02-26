# frozen_string_literal: true

# Parses a SmartLog and outputs a variety of processed data
class SmartParser
  def initialize(smart_log)
    @smart_log = smart_log
  end

  def most_viewed
    routes_visits = @smart_log.result.transform_values(&:count)
    routes_visits.sort_by { |_, visits| visits }.reverse
  end

  def most_unique_viewed
    routes_unique_visits = @smart_log.result.transform_values(&:uniq).transform_values(&:count)
    routes_unique_visits.sort_by { |_, visits| visits }.reverse
  end
end
