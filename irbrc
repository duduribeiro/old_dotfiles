require 'awesome_print'
require 'irb/completion'
require 'pp'

IRB.conf[:AUTO_INDENT]  = true

module ObjectInspector
  def local_methods
    (self.methods - self.class.superclass.instance_methods - Kernel.methods).sort
  end
end
Object.include(ObjectInspector)
