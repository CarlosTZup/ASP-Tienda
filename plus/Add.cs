using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;

namespace FF_al_15
{
    public class Add
    {
        public int Id { get; set; }
        public string Marca { get; set; }
        public string Producto { get; set; }
        public string Precio { get; set; }
        public string Cantidad { get; set; }
        public string Address { get; set; }
        public Add() { }

        public Add(string pMarca, string pProducto, string pPrecio, string pCanidad, int PId, string pAddress)

        {
            this.Id = PId;
            this.Marca = pMarca;
            this.Producto = pProducto;
            this.Precio = pPrecio;
            this.Cantidad = pCanidad;
            this.Address = pAddress;
        }
    }
}