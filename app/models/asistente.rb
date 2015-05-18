class Asistente < ActiveRecord::Base
  FORMAS_PAGO = ["Efectivo", "Tarjeta de crédito"]

  begin :validations
    validates :nombres, presence: true
    validates :apellidos, presence: true
    validates :correo, presence: true, uniqueness: true
    validates :fecha_nacimiento, presence: true
    validates :cedula, presence: true, uniqueness: true, length: {is: 10}
    validates :direccion, presence: true
    validates :telefono, presence: true, uniqueness: true
    validates :forma_pago, presence: true
  end
end
