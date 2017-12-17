# app.123.do

    123 - a timeline to help your work flow: do, doing, done

        # manage tasks to do +NEXT
        shell> 123 + Add a task to do later today
        shell> 123 +                              # show tasks to do later today
        shell> 123 +1 Add a task to do tomorrow
        shell> 123 +1                             # show tasks to do tomorrow

        # manage the task you're doing !NOW
        shell> 123 ! Add a task in progress       # only one task at a time is allowed!
        shell> 123 !                              # show what you're doing NOW

        # manage tasks done in the -PAST
        shell> 123 - Add a completed task
        shell> 123 -                              # show tasks completed earlier today
        shell> 123 -1 Add a task completed yesterday
        shell> 123 -1                             # show tasks completed yesterday

        # move tasks around the timeline
        shell> 123 999 !                          # move task id 999 to do NOW
        shell> 123 999 -                          # move to earlier today
        shell> 123 999 +                          # move to later today
        shell> 123 999 -1                         # move to yesterday
        shell> 123 999 +1                         # move to tomorrow

        shell> 123 edit                           # use your $EDITOR to make bulk changes
        shell> 123 rm 999                         # delete task with id 999

