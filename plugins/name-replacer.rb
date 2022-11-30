Jekyll::Hooks.register([:pages, :posts], :pre_render) do |post|
    post.content = post.content.gsub('foo', 'bar')
end