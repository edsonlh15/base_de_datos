// Collection: usuario
db.usuario.insertOne({
  _id: "US_1",
  nombres: "Heather Alexandra",
  apellidos: "Valencia Dominguez",
  telefono: "948271958",
  dni: "73859281",
  propiedades: [
    {
      _id: "PROP_1",
      idZona: "ZONA_1",
      tipoPropiedad: "Casa",
      dispositivoMedidor: {
        _id: "DISMED_1",
        modeloMedidor: "Modelo 123",
        marcaMedidor: "Marca A",
        tipoMedidor: "Tipo X",
        capacidadMedidor: 5.6,
        electrodomesticos: [
          {
            _id: "ELEC_1",
            idReporteConsumoEnergia: "REPORTE_1",
            nombreElec: "Refrigeradora",
            marcaElec: "LG",
            modeloElec: "XYZ123",
            tipoElec: "Electrodoméstico",
            descripcionElec: "Una moderna refrigeradora",
            minutosDeUsoElec: 120,
            consumoEnergiaElec: 300.0,
          },
          {
            _id: "ELEC_2",
            idReporteConsumoEnergia: "REPORTE_2",
            nombreElec: "Televisor",
            marcaElec: "Samsung",
            modeloElec: "ABC456",
            tipoElec: "Electrodoméstico",
            descripcionElec: "Un televisor de alta definición",
            minutosDeUsoElec: 180,
            consumoEnergiaElec: 200.0,
          },
        ],
      },
      empresaProveedora: {
        _id: "EMPROV_1",
        nombreProveedora: "Luz del Sur",
        informacion:
          "Empresa proveedora de energía eléctrica en Perú. Provee servicios de electricidad a diversos distritos de Lima y Callao.",
        empresaReguladora: {
          _id: "EMPREG_1",
          nombreReguladora: "OSINERGMIN",
          informacion:
            "Organismo Supervisor de la Inversión en Energía y Minería en Perú. Se encarga de regular y supervisar el sector energético y minero del país.",
        },
      },
    },
    {
      _id: "PROP_2",
      idZona: "ZONA_2",
      tipoPropiedad: "Departamento",
      dispositivoMedidor: {
        _id: "DISMED_2",
        modeloMedidor: "Modelo 456",
        marcaMedidor: "Marca B",
        tipoMedidor: "Tipo Y",
        capacidadMedidor: 8.2,
        electrodomesticos: [
          {
            _id: "ELEC_3",
            idReporteConsumoEnergia: "REPORTE_3",
            nombreElec: "Lavadora",
            marcaElec: "Whirlpool",
            modeloElec: "123XYZ",
            tipoElec: "Electrodoméstico",
            descripcionElec: "Una moderna lavadora",
            minutosDeUsoElec: 90,
            consumoEnergiaElec: 150.0,
          },
          {
            _id: "ELEC_4",
            idReporteConsumoEnergia: "REPORTE_4",
            nombreElec: "Horno",
            marcaElec: "Bosch",
            modeloElec: "789ABC",
            tipoElec: "Electrodoméstico",
            descripcionElec: "Un horno de última generación",
            minutosDeUsoElec: 60,
            consumoEnergiaElec: 180.0,
          },
        ],
      },
      empresaProveedora: {
        _id: "EMPROV_2",
        nombreProveedora: "Enel Perú",
        informacion:
          "Empresa proveedora de servicios de energía eléctrica en Perú. Ofrece soluciones energéticas sostenibles y de calidad.",
        empresaReguladora: {
          _id: "EMPREG_2",
          nombreReguladora: "OSINERGMIN",
          informacion:
            "Organismo Supervisor de la Inversión en Energía y Minería en Perú. Encargado de supervisar y regular el sector energético y minero del país.",
        },
      },
    },
  ],
});
db.usuario.find();

// Collection: dispositivo_medidor
use("wolex");
db.dispositivo_medidor.insertOne({
  _id: "DM_1",
  tipo: "Medidor de luz",
  descripcion: "Medidor de consumo eléctrico",
  usuario: "US_1",
  electrodomesticos: [
    {
      _id: "ED_1",
      nombre: "Refrigeradora",
      consumo: 200,
      estado: "Encendido",
      avisos: [
        {
          tipo: "Alerta de consumo",
          mensaje:
            "El consumo de la refrigeradora está por encima del promedio.",
          fecha: ISODate("2023-06-01T10:30:00Z"),
        },
        {
          tipo: "Aviso de mantenimiento",
          mensaje:
            "Es necesario realizar un mantenimiento preventivo en la refrigeradora.",
          fecha: ISODate("2023-06-02T09:45:00Z"),
        },
      ],
    },
    {
      _id: "ED_2",
      nombre: "Televisor",
      consumo: 100,
      estado: "Apagado",
      avisos: [
        {
          tipo: "Recordatorio",
          mensaje:
            "Recuerda apagar el televisor cuando no esté en uso para ahorrar energía.",
          fecha: ISODate("2023-06-03T15:20:00Z"),
        },
        {
          tipo: "Aviso de programación",
          mensaje:
            "Hoy a las 20:00 horas se emitirá tu programa favorito en el televisor.",
          fecha: ISODate("2023-06-04T18:10:00Z"),
        },
      ],
    },
  ],
});
db.dispositivo_medidor.find();
