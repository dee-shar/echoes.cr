# echoes.cr
Web-API for [echoes.soferity.com](https://echoes.soferity.com/) a modern platform that allows you to easily discover inspiring quotes from around the world

## Example
```cr
require "./echoes"

echoes = Echoes.new
quotes = echoes.get_quotes()
puts quotes
```
