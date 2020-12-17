using Updates.Data;
using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;

namespace Update.Services
{
    public interface IUpdate
    {
        Update GetUpdate(int? id);
        IQueryable<Update> GetUpdates { get; }
    }
}
