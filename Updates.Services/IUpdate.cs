using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Updates.Data;

namespace Updates.Services
{
    public interface IUpdate
    {
        Update GetUpdate(int? id);
        IQueryable<Update> GetUpdates();
        void Save(Update update);
        void Delete(int? id);
    }
}
