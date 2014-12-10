module Boxr
	class Client

		def user_events(stream_position: 0, stream_type: :all, limit: 100)
			query = {stream_position: stream_position, stream_type: stream_type, limit: limit}
			events, response = get(EVENTS_URI, query: query)
			events
		end

	end
end