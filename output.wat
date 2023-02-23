(component
  (type (export "example") (component
   (type $hello (instance
     (export "get-position" (func (param "foo" $string) (param "bar" $u8) (result coord)))
   ))
  (export "hello" (instance (type $hello)))
  ))
)