namespace TodoList
{
    class ToDoListApp
    {
        static TaskManager taskManager = new();

        static void Main()
        {
            taskManager.LoadTasks();

            while (true)
            {
                Console.WriteLine("\n--- TO-DO LIST MENU ---");
                Console.WriteLine("1. Add Task");
                Console.WriteLine("2. View Tasks");
                Console.WriteLine("3. Mark Task as Completed");
                Console.WriteLine("4. Delete Task");
                Console.WriteLine("5. Update Task");
                Console.WriteLine("6. Save and Exit");
                Console.Write("Enter choice: ");

                string choice = Console.ReadLine();
                int index = 0;
                string description = "";

                switch (choice)
                {
                    case "1":
                        {
                            description = Console.ReadLine();
                            taskManager.AddTask(description);
                            break;
                        }
                    case "2":
                        {
                            taskManager.ViewTask();
                            break;
                        }
                    case "3":
                        {
                            Console.Write("Enter index: ");
                            index = int.Parse(Console.ReadLine());
                            taskManager.MarkTaskByIndex(index);
                            break;
                        }
                    case "4":
                        {
                            Console.Write("Enter index: ");
                            index = int.Parse(Console.ReadLine());
                            taskManager.DeleteTaskByIndex(index);
                            break;
                        }
                    case "5":
                        {
                            Console.Write("Enter index and description: ");
                            string[] oup = Console.ReadLine().Split(' ');
                            index = int.Parse(oup[0]);
                            description = oup[1];
                            taskManager.UpdateTaskByIndex(index, description);
                            break;
                        }
                    case "6":
                        {
                            taskManager.SaveTasks();
                            Console.WriteLine("Tasks saved. Exiting...");
                            return;
                        }
                    default:
                        {
                            Console.WriteLine("Invalid choice. Try again.");
                            break;
                        }
                }
            }

        }

    }

}