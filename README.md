#sesskill
sesskill is a shell program that makes the process of session termination easier.  
It has been developed and tested on a default Debian box, but should work on any Linux-based distro.  
It has primarily been designed for users/admins who wish to terminate SSH connections, but can be used in other scenarios as well.  
  

####For those who are not sure how to use it:
1. Run **w** to find out which users are online and which TTYs are running for the corresponding users  
e.g.:  
USER     TTY      FROM             LOGIN@   IDLE   JCPU   PCPU WHAT  
root     tty2                      23:36    1:02m  0.18s  0.16s -bash  
chirag   pts/0    :0               23:23   13:18   0.44s  7.18s gnome-terminal  
Mike.W   pts/3    192.168.1.106    23:28   11.00s  0.56s  7.18s gnome-terminal  

2. Now in this example if you wish to terminate the session of Mike.W, you must run **sesskill pts/3**  
Please note that this will only terminate the current session and will not stop him from connecting and starting another one.  
  
Please report bugs / suggestions at chiroo.dev+sesskill@gmail.com