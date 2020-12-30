require "test_helper"

class PlexTest < Minitest::Test

  def test_that_it_has_a_version_number
    refute_nil ::Plex::VERSION
  end

  def test_plex_configure_sets_config
    config = {
      port: 1000, host: '192.168.1.1', token: 'token'
    }
    @server = Plex::Server.new(config)
    assert_equal config[:port], @server.port
    assert_equal config[:host], @server.host
    assert_equal config[:token], @server.token
  end

  def test_plex_sets_default_port
    @server = Plex::Server.new
    assert_equal 32400, @server.port

    l = @server.libraries.first

    puts l.title
    puts l.updated_at
    puts l.keys
    puts l.locations
    puts l.to_json

  end



end
