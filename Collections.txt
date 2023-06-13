// CREAR BASE DE DATOS
use wolex

// COLLECTION 1
db.usuario.insertOne({
    _id: "US_1",
    nombres: "Samuel Felipe",
    apellidos: "Anderson Cuya",
    telefono: "984728491",
    dni: "73849182",
    empresaProveedora: [
        {
            _id: "EMPROV_1",
            nombreProveedora: "Enel Perú",
            informacion: "Enel desc.",
            empresaReguladora: [
                {
                    _id: "EMPREG_1",
                    nombreReguladora: "OSINERGMIN",
                    informacion: "OSINERGMIN desc."
                }
            ]
        }
    ],
    zona: [
        {
            _id: "ZN1",
            nombreZona: "Villa",
            latitud: -12.087593,
            longitud: -77.007772,
            distrito: [
                {
                    _id: "DST1",
                    nombreDistrito: "Villa el Salvador",
                    codigoDistrital: 15096,
                    ciudad: [
                        {
                            _id: "CD1",
                            nombreCiudad: "Lima",
                            codigoPostal: "15001"
                        }
                    ]
                }
            ]
        }

    ]
});