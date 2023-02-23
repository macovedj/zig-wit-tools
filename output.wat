(component
  (type (export "example") (component
   (type $hello (instance
     (type $coord (record (field x u32) (field y u32)))
     (export "coord" (type (eq $coord))
     (export "get-position" (func (param "foo" $string) (param "bar" $u8) (result coord)))
   ))
  (export "hello" (instance (type $hello)))
  ))
))