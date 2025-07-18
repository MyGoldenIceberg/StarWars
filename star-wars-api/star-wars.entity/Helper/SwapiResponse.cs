﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace star_wars.entity.Helper
{
    public class SwapiResponse<T>
    {
        public int Count { get; set; }
        public string? Next { get; set; }
        public string? Previous { get; set; }
        public List<T> Results { get; set; } = new();
    }

}
