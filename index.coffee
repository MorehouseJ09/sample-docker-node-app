http = require "http"

server = http.createServer (req, res)->

	res.writeHead 200, {"Content-Type": "text/plain"}
	res.end "Jon Morehouse"

server.listen 4200
