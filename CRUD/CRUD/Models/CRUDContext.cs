﻿using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace CRUD.Models
{
    public class CRUDContext : DbContext
    {
        // You can add custom code to this file. Changes will not be overwritten.
        // 
        // If you want Entity Framework to drop and regenerate your database
        // automatically whenever you change your model schema, please use data migrations.
        // For more information refer to the documentation:
        // http://msdn.microsoft.com/en-us/data/jj591621.aspx
    
        public CRUDContext() : base("name=CRUDContext")
        {
        }

        public System.Data.Entity.DbSet<CRUD.Models.Restaurante> Restaurante { get; set; }

        public System.Data.Entity.DbSet<CRUD.Models.Prato> Prato { get; set; }
    }
}
