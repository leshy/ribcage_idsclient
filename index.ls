require! {
  underscore: _
  backbone4000: Backbone
  idsclient: { idsclient }
}

exports.lego = backbone.Model.extend4000 do
  init: (callback) ->
    idsclient = @idsclient = @env.idsclient = new idsclient @settings
    @env.ids = idsClient.send
    callback()
