# Theory of Constraints (ToC) Calculator

Based on the idea that tasks have variable durations based on risk; but how much risk should be allowed in the plan.

This app takes both an optimistic and pessermistic duration and calculates a risk allocation based on a normal distribution curve.  Further, as risk is unlikely to materialise in all tasks, it creates a buffer (risk) value for a chain of tasks; and, therefore, for the project as a whole.

Intended as a demonstrator rather than a scalable model, the initial version assumes a single chain of tasks for each project.

# Milestones
Setup - Initial configuration (now complete)
RankedModel - Allows for the re-ordering of tasks within each project (future)
Subtasking - Allows tasks to have hierarchy with subtasks.  Subtasks will form their own chain of tasks under a parent task. (future)

# Environment

Based on Ruby on Rails 6 and Ruby 2.7

Utilises a remote MySQL instance

Database.yml excluded from repository for security.  Therefore, will not run 'out of the box'.

