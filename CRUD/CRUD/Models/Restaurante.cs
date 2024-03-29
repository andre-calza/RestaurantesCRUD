﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace CRUD.Models
{
    public class Restaurante
    {
        public int ID { get; set; }
        [Required]
        [Display(Name = "Nome do restaurante")]
        public string Nome { get; set; }
    }
}