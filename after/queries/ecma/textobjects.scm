; extends
(object
  (pair
    key: (_) @property.lhs
    value: (_) @property.inner @property.rhs) @property.outer)
(property_signature
  name: (_) @type.lhs
  type: (type_annotation
    (predefined_type) @type.inner @type.rhs) @type.outer)
