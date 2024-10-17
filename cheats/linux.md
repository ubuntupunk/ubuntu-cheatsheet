# Linux Command Line Cheat Sheet

## Bash Commands

| Command                     | Description             |
|------------------------------|-------------------------|
| `uname -a`                   | Show system and kernel   |
| `head -n1 /etc/issue`        | Show distribution        |
| `mount`                      | Show mounted filesystems |
| `date`                       | Show system date         |
| `uptime`                     | Show uptime              |
| `whoami`                     | Show your username       |
| `man *command*`              | Show manual for *command* |


## Bash Shortcuts

| Shortcut     | Description                  |
|--------------|------------------------------|
| `CTRL-c`     | Stop current command          |
| `CTRL-z`     | Sleep program                 |
| `CTRL-a`     | Go to start of line          |
| `CTRL-e`     | Go to end of line            |
| `CTRL-u`     | Cut from start of line       |
| `CTRL-k`     | Cut to end of line           |
| `CTRL-r`     | Search history                |
| `!!`         | Repeat last command           |
| `!*abc*`     | Run last command starting with *abc* |
| `!*abc*:p`   | Print last command starting with *abc* |
| `!$`         | Last argument of previous command |
| `ALT-.`      | Last argument of previous command |
| `!*`         | All arguments of previous command |
| `^abc^123`   | Run previous command, replacing *abc* with *123* |


## Bash Variables

| Variable   | Description                |
|------------|----------------------------|
| `env`       | Show environment variables  |
| `echo $NAME` | Output value of `$NAME` variable |
| `export NAME=value` | Set `$NAME` to *value*     |
| `$PATH`     | Executable search path      |
| `$HOME`     | Home directory              |
| `$SHELL`    | Current shell               |


## IO Redirection

| Command                     | Description                                                              |
|------------------------------|--------------------------------------------------------------------------|
| `cmd < file`                 | Input of `cmd` from `file`                                                |
| `cmd1 <(cmd2)`               | Output of `cmd2` as file input to `cmd1`                                  |
| `cmd > file`                 | Standard output (stdout) of `cmd` to `file`                              |
| `cmd > /dev/null`            | Discard stdout of `cmd`                                                   |
| `cmd >> file`                | Append stdout to `file`                                                    |
| `cmd 2> file`                | Error output (stderr) of `cmd` to `file`                                 |
| `cmd 1>&2`                   | stdout to same place as stderr                                             |
| `cmd 2>&1`                   | stderr to same place as stdout                                             |
| `cmd &> file`                | Every output of `cmd` to `file`                                           |
| *cmd* refers to a command. |                                                                          |


## Pipes

| Command             | Description                                    |
|----------------------|------------------------------------------------|
| `cmd1 \| cmd2`       | stdout of `cmd1` to `cmd2`                     |
| `cmd1 \|& cmd2`      | stderr of `cmd1` to `cmd2`                     |


## Command Lists

| Command                     | Description                                         |
|------------------------------|-----------------------------------------------------|
| `cmd1 ; cmd2`                | Run `cmd1` then `cmd2`                               |
| `cmd1 \&\& cmd2`             | Run `cmd2` if `cmd1` is successful                   |
| `cmd1 \|\| cmd2`             | Run `cmd2` if `cmd1` is not successful              |
| `cmd &`                      | Run `cmd` in a subshell                             |


## Directory Operations

| Command          | Description             |
|-------------------|-------------------------|
| `pwd`             | Show current directory   |
| `mkdir dir`       | Make directory `dir`     |
| `cd dir`          | Change directory to `dir` |
| `cd ..`           | Go up a directory        |
| `ls`              | List files               |


## ls Options

| Option | Description             |
|--------|-------------------------|
| `-a`    | Show all (including hidden) |
| `-R`    | Recursive list           |
| `-r`    | Reverse order            |
| `-t`    | Sort by last modified    |
| `-S`    | Sort by file size        |
| `-l`    | Long listing format      |
| `-1`    | One file per line        |
| `-m`    | Comma-separated output   |
| `-Q`    | Quoted output            |


## Search Files

| Command                               | Description                                                                 |
|----------------------------------------|-----------------------------------------------------------------------------|
| `grep pattern files`                   | Search for *pattern* in *files*                                             |
| `grep -i`                              | Case insensitive search                                                      |
| `grep -r`                              | Recursive search                                                             |
| `grep -v`                              | Inverted search                                                              |
| `grep -o`                              | Show matched part of file only                                               |
| `find /dir/ -name name*`               | Find files starting with *name* in *dir*                                    |
| `find /dir/ -user name`                | Find files owned by *name* in *dir*                                       |
| `find /dir/ -mmin num`                 | Find files modifed less than *num* minutes ago in *dir*                     |
| `whereis command`                       | Find binary / source / manual for *command*                                 |
| `locate file`                          | Find *file* (quick search of system index)                                  |


## File Operations

| Command                     | Description                                         |
|------------------------------|-----------------------------------------------------|
| `touch file1`                | Create `file1`                                       |
| `cat file1 file2`             | Concatenate files and output                           |
| `less file1`                  | View and paginate `file1`                             |
| `file file1`                  | Get type of `file1`                                   |
| `cp file1 file2`               | Copy `file1` to `file2`                                |
| `mv file1 file2`               | Move `file1` to `file2`                                |
| `rm file1`                    | Delete `file1`                                       |
| `head file1`                  | Show first 10 lines of `file1`                       |
| `tail file1`                  | Show last 10 lines of `file1`                        |
| `tail -F file1`               | Output last lines of `file1` as it changes             |


## Watch a Command

| Command                               | Description                                                              |
|----------------------------------------|--------------------------------------------------------------------------|
| `watch -n 5 'ntpq -p'`                 | Issue the 'ntpq -p' command every 5 seconds and display output           |


## Process Management

| Command          | Description                               |
|-------------------|-------------------------------------------|
| `ps`              | Show snapshot of processes                 |
| `top`             | Show real time processes                   |
| `kill pid`        | Kill process with id *pid*                 |
| `pkill name`      | Kill process with name *name*               |
| `killall name`    | Kill all processes with names beginning *name* |


## Nano Shortcuts

| Shortcut     | Description                  | Shortcut     | Description                  |
|--------------|------------------------------|--------------|------------------------------|
| `Ctrl-R`     | Read file                    | `ALT-A`      | Start marking text           |
| `Ctrl-O`     | Save file                    | `CTRL-K`     | Cut marked text or line       |
| `Ctrl-X`     | Close file                   | `CTRL-U`     | Paste text                    |
|              |                              |              |                              |
|              | **Navigate File**            |              | **Search File**              |
| `ALT-/`      | End of file                  | `CTRL-W`     | Find                          |
| `CTRL-A`     | Beginning of line           | `ALT-W`      | Find next                     |
| `CTRL-E`     | End of line                  | `CTRL-\`     | Search and replace            |
| `CTRL-C`     | Show line number             |              |                              |
| `CTRL-_`     | Go to line number            |              |                              |
|              | **Cut and Paste**            |              |                              |
|              |                              |              |                              |
| More nano info at: http://www.nano-editor.org/docs.php |


## Screen Shortcuts

| Shortcut     | Description                               | Shortcut     | Description                               |
|--------------|-------------------------------------------|--------------|-------------------------------------------|
| `screen`     | Start a screen session.                    | `CTRL-A n`   | Go to the next instance of terminal.      |
| `screen -r`  | Resume a screen session.                   | `CTRL-A p`   | Go to the previous instance of terminal.     |
| `screen -list`| Show your current screen sessions.          | `CTRL-A "`   | Show current instances of terminals.        |
| `CTRL-A`     | Activate commands for screen.               | `CTRL-A A`   | Rename the current instance.                 |
| `CTRL-A c`   | Create a new instance of terminal.          | More screen info at: http://www.gnu.org/software/screen/ |


## File Permissions

| Command                     | Description                                         |
|------------------------------|-----------------------------------------------------|
| `chmod 775 file`             | Change mode of *file* to 775                         |
| `chmod -R 600 folder`        | Recursively chmod *folder* to 600                    |
| `chown user:group file`      | Change *file* owner to *user* and group to *group*   |


## File Permission Numbers

| Number | Permission |
|--------|-------------|
| 4      | read (r)    |
| 2      | write (w)   |
| 1      | execute (x) |

First digit is owner permission, second is group and third is everyone. Calculate permission digits by adding numbers above.
