Testing tool for the popular KBD command line utility that allows reading keyboard inputs into the console window (an alternative to choice that allows special characters, arrow keys, caps, etc).
Windows only, but you wouldnt exactly be testing kbd.exe on linux, would you?
![image](https://github.com/W1BTR/KBD-Tester/assets/164893442/93d39d94-37e3-444e-b48c-a8027de02f6a)

kbd is not and cannot be used as a keylogger, as it only listens for keys sent to the console.

I believe it's a microsoft executable that is long lost, but Im not sure. If youre the owner feel free to reach out.

```Here a description of kbd.exe from https://www.reddit.com/user/jcunews1/

No option (i.e. just: kbd.exe): Wait for a key press, and returns its scan code. If an extended key (e.g. F1, Page Up, etc.) is pressed, returns the extended key's scan code.

Option 0 (i.e. kbd.exe 0): Wait for a key press, and returns its scan code. If an extended key is pressed, returns scan code 00 or E0. The extended key's 2nd scan code is "eaten", and removed from keyboard buffer, and ignored.

Option 1 (i.e. kbd.exe 1) is like without using any option, and option 2 (i.e. kbd.exe 2) is like option 0. The difference is that, they won't wait for a key press. If there's no key press, it returns 0.

Notes:

The program always get key press from the keyboard buffer, and it does not clear the keyboard buffer when it starts. If there's a key press in the buffer, it will use that, then remove it from the buffer. It won't wait for a key press if the keyboard buffer is not empty, even if the program is told to wait for a key press.

Non extended keys emits only one scan code. Extended keys emits two scan codes (e.g. in hexadecimal): E0 xx or 00 xx. That first E0/00 scan code indicates an extended key.

Because of design flaw where option 2 will return 0 when there's no key press or buffered key press, there's no way to differentiate between no key pressed and pressed extended key, since both may return 0. This is a flaw in C runtime library itself (function _getch()).

PS) there's no option for timeout.```


