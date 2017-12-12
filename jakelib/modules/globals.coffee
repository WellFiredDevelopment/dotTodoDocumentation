global.config = {
    name:           'WellFired.Profile.Dcumentation',
    sphinxInputDir: 'xml',
    sphinxOutputDir:'sphinx/source'
}

module.exports = {
    config: -> return config

    wtask: ->
        t = task.apply(global, arguments)

        t.addListener 'start', ->
            WellFired.logStart(this);

        return t
}