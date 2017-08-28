json.extract! carga, :id, :user, :cajas, :costoManejo, :alto, :ancho, :largo, :pesoEstimado, :direccion, :valorAsegurado, :nombreDestinatario, :telefonoDestinatario, :recibeSabados, :flete, :fleteTotal, :guia, :created_at, :updated_at
json.url carga_url(carga, format: :json)
