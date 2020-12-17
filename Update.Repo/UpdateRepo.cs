using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Updates.Data;
using Updates.Services;

namespace Updates.Repo
{
    public class UpdateRepo : IUpdate
    {
        private readonly UpdateDbContext _db;

        public UpdateRepo(UpdateDbContext db)
        {
            _db = db;
        }

        IQueryable<Update> IUpdate.GetUpdates()
        {
             return _db.Updates;
        }

        public void Delete(int? id)
        {
            Update update = _db.Updates.Find(id);
            _db.Updates.Remove(update);
            _db.SaveChanges();
        }

        public Update GetUpdate(int? id)
        {
            Update update = _db.Updates.Find(id);
            return update;
        }

        // Create and Update
        public void Save(Update update)
        {
            if (update.id == 0)
            {
                _db.Updates.Add(update);
                _db.SaveChanges();
            }
            else
            {
                Update updateToSave = _db.Updates.Find(update.id);
                updateToSave.title = update.title;
                updateToSave.department = update.department;
                updateToSave.updateType = update.updateType;
                updateToSave.recipients = update.recipients;
                updateToSave.message = update.message;
                updateToSave.coverImage = update.coverImage;
                updateToSave.summary = update.summary;
                updateToSave.followUpType = update.followUpType;
                updateToSave.followUpAction = update.followUpAction;
                _db.SaveChanges();
            }  
        }
    }
}
