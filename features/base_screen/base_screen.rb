require 'appium_lib'

class BaseScreen
   def self.element(element_name, &block)
     define_method(element_name.to_s, *block)
   end

   class << self
     alias_method :value, :element
     alias_method :action, :element
     alias_method :trait, :element
   end

   def wait_element(id, elem = :id)
     wait {find_element(elem, id)}
   end

   def touch_element(id, elem = :id)
     wait {find_element(elem, id).click}
   end
end
