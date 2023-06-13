// CREAR BASE DE DATOS
use wolex

// JSON SCHEMA VALIDATION
db.createCollection("usuario", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: ["nombres", "apellidos", "telefono", "dni"],
      properties: {
        nombres: {
          bsonType: "string",
          minLength: 1,
          maxLength: 40
        },
        apellidos: {
          bsonType: "string",
          minLength: 1,
          maxLength: 40
        },
        telefono: {
          bsonType: "string",
          pattern: "^[0-9]{9}$"
        },
        dni: {
          bsonType: "string",
          pattern: "^[0-9]{8}$"
        },
        empresaProveedora: {
          bsonType: "array",
          items: {
            bsonType: "object",
            required: ["nombreProveedora"],
            properties: {
              nombreProveedora: {
                bsonType: "string",
                minLength: 1,
                maxLength: 50
              },
              informacion: {
                bsonType: "string",
                maxLength: 777
              },
              empresaReguladora: {
                bsonType: "array",
                items: {
                  bsonType: "object",
                  required: ["nombreReguladora"],
                  properties: {
                    nombreReguladora: {
                      bsonType: "string",
                      minLength: 1,
                      maxLength: 50
                    },
                    informacion: {
                      bsonType: "string",
                      maxLength: 777
                    }
                  }
                }
              }
            }
          }
        },
        zona: {
          bsonType: "array",
          items: {
            bsonType: "object",
            required: ["nombreZona", "latitud", "longitud", "distrito"],
            properties: {
              nombreZona: {
                bsonType: "string",
                maxLength: 50
              },
              latitud: {
                bsonType: "double",
                minimum: -90,
                maximum: 90
              },
              longitud: {
                bsonType: "double",
                minimum: -180,
                maximum: 180
              },
              distrito: {
                bsonType: "array",
                items: {
                  bsonType: "object",
                  required: ["nombreDistrito", "codigoDistrital", "ciudad"],
                  properties: {
                    nombreDistrito: {
                      bsonType: "string",
                      minLength: 1,
                      maxLength: 50
                    },
                    codigoDistrital: {
                      bsonType: "string",
                      pattern: "^[0-9]{6}$"
                    },
                    ciudad: {
                      bsonType: "array",
                      items: {
                        bsonType: "object",
                        required: ["nombreCiudad", "codigoPostal"],
                        properties: {
                          nombreCiudad: {
                            bsonType: "string",
                            minLength: 1,
                            maxLength: 50
                          },
                          codigoPostal: {
                            bsonType: "string",
                            pattern: "^[0-9]{5}$"
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
});

// INSERTAR DATO QUE CUMPLE CON LAS CONDICIONES
db.usuario.insertOne({
  nombres: "Juan Luciano",
  apellidos: "Garcia Pérez",
  telefono: "987654321",
  dni: "73849182",
  empresaProveedora: [
    {
      nombreProveedora: "Enel Perú",
      informacion: "Información sobre Enel Perú",
      empresaReguladora: [
        {
          nombreReguladora: "OSINERGMIN",
          informacion: "Información sobre OSINERGMIN"
        }
      ]
    }
  ],
  zona: [
    {
      nombreZona: "Villa",
      latitud: -12.102345,
      longitud: -77.023456,
      distrito: [
        {
          nombreDistrito: "Villa el Salvador",
          codigoDistrital: "150961",
          ciudad: [
            {
              nombreCiudad: "Lima",
              codigoPostal: "15001"
            }
          ]
        }
      ]
    }
  ]
});

// INSERTAR DATO QUE NO CUMPLE CON LAS CONDICIONES
db.usuario.insertOne({
  nombres: "Julian", // Valor vacío, no cumple con la restricción minLength
  apellidos: "Smith",
  telefono: "12345678", // No cumple con la restricción pattern
  dni: "987654321" // No cumple con la restricción pattern
});