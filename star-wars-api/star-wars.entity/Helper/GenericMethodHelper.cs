using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace star_wars.entity.Helper
{
    public static class GenericMethodHelper
    {
        public static int ToInt(this string value)
        {
            if (string.IsNullOrWhiteSpace(value))
                return 0;
            if (int.TryParse(value, out int result))
                return result;
            return 0;
        }
    }
}
