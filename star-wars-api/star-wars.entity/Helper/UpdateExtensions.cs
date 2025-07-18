using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace star_wars.entity.Helper
{
    public static class UpdateExtensions
    {
        public static void UpdateIfPresent(this string? source, Action<string> updateAction)
        {
            if (!string.IsNullOrWhiteSpace(source))
                updateAction(source.Trim());
        }
    }
}
