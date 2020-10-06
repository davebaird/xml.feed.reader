Ingests an RSS or Atom feed from URL or file and prints it as XML in the
indicated feed format (RSS 0.91|RSS 1.0|RSS 2.0|Atom - default is Atom).

    $ alias xml.feed.reader='docker run --rm -i --user "$(id -u):$(id -g)" --volume "$PWD:/workdir" dvz5/xml.feed.reader'

    $ xml.feed.reader https://news.yale.edu/topics/science-technology/rss
