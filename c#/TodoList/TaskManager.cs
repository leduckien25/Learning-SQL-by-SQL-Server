namespace TodoList
{
    class TaskManager
    {
        private List<TaskItem> tasks = new();

        public void AddTask(string description)
        {
            tasks.Add(new TaskItem(description));
            Console.WriteLine("Task added successfully!");
        }

        public void ViewTask()
        {
            if (!tasks.Any())
            {
                Console.WriteLine("No tasks available.");
                return;
            }

            Console.WriteLine("--- Your To-Do List ---");


            for (int i = 0; i < tasks.Count; i++)
            {
                Console.WriteLine($"No.{i + 1}: {tasks[i].Description}, status: {(tasks[i].IsCompleted ? "[v]" : "[ ]")}");
            }
        }

        public void MarkTaskByIndex(int index)
        {
            index--;
            if (index < 0 || index >= tasks.Count)
            {
                Console.WriteLine("Invalid task index.");
                return;
            }

            tasks[index].IsCompleted = true;
            Console.WriteLine("Task marked as completed!");
        }

        public void DeleteTaskByIndex(int index)
        {
            index--;
            if (index < 0 || index >= tasks.Count)
            {
                Console.WriteLine("Invalid task index.");
                return;
            }

            tasks.RemoveAt(index);
            Console.WriteLine("Task deleted successfully!");
        }

        public void UpdateTaskByIndex(int index, string newDescription)
        {
            index--;
            if (index < 0 || index >= tasks.Count)
            {
                Console.WriteLine("Invalid task index.");
                return;
            }

            tasks[index].Description = newDescription;
            Console.WriteLine("Task updated successfully!");
        }

        public void SaveTasks()
        {
            using (StreamWriter writer = new("tasks.txt"))
            {
                foreach (var task in tasks)
                {
                    writer.WriteLine($"{task.Description}|{task.IsCompleted}");
                }
            }
        }

        public void LoadTasks()
        {
            if (!File.Exists("tasks.txt"))
                return;

            tasks.Clear();

            using (StreamReader reader = new("tasks.txt"))
            {
                string line;
                while ((line = reader.ReadLine()) != null)
                {
                    string[] parts = line.Split('|');
                    if (parts.Length == 2)
                    {
                        tasks.Add(new(parts[0]) { IsCompleted = bool.Parse(parts[1]) });
                    }
                }
            }
        }

    }
}
