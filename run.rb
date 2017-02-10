require_relative 'router'
require_relative 'repository'
require_relative 'controller'

repository = Repository.new
controller = Controller.new(repository)
router = Router.new(controller)
router.run
