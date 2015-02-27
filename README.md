# Dogelicious

Convert English to [Doge](http://en.wikipedia.org/wiki/Doge_(meme))!

We are using [EngTagger](https://github.com/yohasebe/engtagger), an English Part-of-Speech Tagger Library; a Ruby port of Lingua::EN::Tagger. Parsing is not perfect, but it works.

## Usage
There are several ways of using Dogeify. The first way is to go through the Dogelicious class itself.
    require 'dogelicious'

    dogeifier = Dogelicious.new
    dogeifier.process('My grandmom gave me a sweater for Christmas.')
    # => "so grandmom. such sweater. very christmas. wow."

The second way is to modify the String or Array classes by including either core extension.

    require 'dogelicious/all'

    'My grandmom gave me a sweater for Christmas.'.dogeify
    # => "so grandmom. such sweater. very christmas. wow."

    ['I like turtles.', 'It is during our darkest moments that we must focus to see the light.'].dogeify
    # => ["so turtles. wow.", "so darkest. such moments. very light. wow."]

## Options
For each of the above method calls, an optional `options` hash can be passed in
to specify additional processing preferences.  Currently, only the `ignore`
option exists, accepting a string/regex value (or array of string/regex values)
that should not be converted to doge.

    dogifier.process('My grandmom gave me a sweater for Christmas.', ignore: 'grandmom')
    # => "so sweater. such christmas. wow."

    'My grandmom gave me a sweater for Christmas'.dogeify(ignore: [/christmas/i, 'sweater'])
    # => "so grandmom. wow."
