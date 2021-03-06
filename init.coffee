exports.configure = [
  {
    name: 'name'
    message: "Your project's name"
  },
  {
    name: 'description'
    message: "A brief description of your project"
  },
  {
    type: 'confirm'
    name: 'grid'
    message: 'Do you require a grid framework?'
  },
  {
    type: 'checkbox'
    name: 'postcssPlugins'
    message: 'Check all Postcss plugins you wish to install.'
    choices: [
      'rucksack'
      'cssnext'
      'system'
      'postcss font pack'
      'postcss import'
    ]
  },
  {
    type: 'confirm'
    name: 'yaml'
    message: 'Do you require roots yaml integration?'
  }
]

# restructure json objects in array for later convience
exports.beforeRender = (utils, config) ->
  @tmp = []
  for plugin in config.postcssPlugins
    @tmp[plugin.name] = { 'checked': plugin.checked }
  config.postcssPlugins = @tmp
