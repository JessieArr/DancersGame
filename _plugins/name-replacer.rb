# Plugins are disabled on Github Pages... :(
Jekyll::Hooks.register([:pages, :posts], :pre_render) do |post|
    post.content = post.content.gsub('Misdreavus', '[Misdreavus](https://bulbapedia.bulbagarden.net/wiki/Misdreavus_(Pok%C3%A9mon)){:target="_blank"}')
end