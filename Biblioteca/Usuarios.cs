using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Biblioteca
{
    public class Usuarios
    {
        private String nombreUsuario;

        public String NombreUsuario
        {
            get { return nombreUsuario; }
            set { nombreUsuario = value; }
        }
        private String rutUsuario;

        public String RutUsuario
        {
            get { return rutUsuario; }
            set { rutUsuario = value; }
        }
        private int numTelefonoUsuario;

        public int NumTelefonoUsuario
        {
            get { return numTelefonoUsuario; }
            set { numTelefonoUsuario = value; }
        }
        private String emailUsuario;

        public String EmailUsuario
        {
            get { return emailUsuario; }
            set { emailUsuario = value; }
        }
        private String passUsuario;

        public String PassUsuario
        {
            get { return passUsuario; }
            set { passUsuario = value; }
        }
        private String areaUsuario;

        public String AreaUsuario
        {
            get { return areaUsuario; }
            set { areaUsuario = value; }
        }
        private DateTime fechaNacimientoUsuario;

        public DateTime FechaNacimientoUsuario
        {
            get { return fechaNacimientoUsuario; }
            set { fechaNacimientoUsuario = value; }
        }
        private DateTime fechaRegistroUsuario;

        public DateTime FechaRegistroUsuario
        {
            get { return fechaRegistroUsuario; }
            set { fechaRegistroUsuario = value; }
        }


        public String detalleUsuario()
        {
            String datos = "Nombre = " + NombreUsuario;
            datos += "Rut = " + RutUsuario;
            datos += "Numero de telefono = " + NumTelefonoUsuario;
            datos += "E-Mail = " + EmailUsuario;
            datos += "Area = " + AreaUsuario;
            datos += "Fecha de Nacimiento = " + FechaNacimientoUsuario;
            datos += "Fecha de Registro = " + FechaRegistroUsuario;
            return datos;
        }

    }
}
