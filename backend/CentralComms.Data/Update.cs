using System;
using System.Collections.Generic;
using System.Text;

namespace Updates.Data
{
    public class Update
    {
        public int id { get; set; }
        public string title { get; set; }

        public string department { get; set; }
        public string updateType { get; set; }

        public string recipients { get; set; }

        public string message { get; set; }

        public string coverImage { get; set; }

        public string summary { get; set; }

        public string followUpType { get; set; }

        public string followUpAction { get; set; }

    }
}
