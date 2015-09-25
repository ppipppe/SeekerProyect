using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Biblioteca
{
    public class Proyectos
    {
        private String nombreProyecto;

        public String NombreProyecto
        {
            get { return nombreProyecto; }
            set { nombreProyecto = value; }
        }
        private String descripcion;

        public String Descripcion
        {
            get { return descripcion; }
            set { descripcion = value; }
        }
        private String areaProyecto;

        public String AreaProyecto
        {
            get { return areaProyecto; }
            set { areaProyecto = value; }
        }
        private Int32 cantidadPersonas;

        public Int32 CantidadPersonas
        {
            get { return cantidadPersonas; }
            set { cantidadPersonas = value; }
        }

        public String detalleProyecto()
        { 
            String datos = "Nombre Proyecto  = " + NombreProyecto;
            datos += "Cantidad de personas  = " + CantidadPersonas;
             datos += "Descripcion de proyecto  = " + Descripcion;
             return datos;
        }
    }
}
