using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TodoList
{
    class TaskItem
    {
        public string Description { get; set; }

        public bool IsCompleted { get; set; }

        public TaskItem(string description)
        {
            this.Description = description;
            IsCompleted = false;
        }
    }
}
