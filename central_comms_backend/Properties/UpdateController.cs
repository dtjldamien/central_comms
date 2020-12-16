using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Updates.Data;
using Updates.Services;

namespace backend.Properties
{
    [Route("api/[controller]")]
    [ApiController]
    public class UpdateController : ControllerBase
    {
        private readonly IUpdate db;

        public UpdateController(IUpdate _db)
        {
            db = _db;
        }

        [HttpPost]
        public IActionResult Save([FromBody] Update data)
        {
            if (data == null)
            {
                return BadRequest();
            }
            db.Save(data);
            return Ok(data);
        }

        [HttpGet("Id")]
        public IActionResult GetUpdate(int? id)
        {
            Update data = db.GetUpdate(id);
            return Ok(data);
        }

        [HttpGet]
        public IActionResult GetResults()
        {
            IQueryable<Update> data = db.GetUpdates();
            return Ok(data);
        }

        [HttpDelete]
        public IActionResult Delete(int? id)
        {
            db.Delete(id);
            return Ok();
        }
    }
}
