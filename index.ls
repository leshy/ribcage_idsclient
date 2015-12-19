require! {
  backbone4000: Backbone
  idsclient: { idsclient }
  underscore: _
}

exports.lego = Backbone.Model.extend4000 do
    after: [ 'logger' ]
    init: (callback) ->
      @settings = _.extend {
        host: 'localhost'
        port: 12312
        logger: @env.logger
      }, @settings

      @idsclient = @env.idsclient = new idsclient @settings
      @env.ids = @idsclient.send.bind(@idsclient)
      callback()

