# SLString
Copy Swift Strings to C char array / tuple

When using C structs in Swift, all char arrays are bridged as tuples. There are already code snippets to convert these char arrays to Strings. This extension to the String class allows users to copy a Swift String into a Swift Tuple or C char array.

Usage:

<code>// C/C++</code>

<code>CStruct {</code>
<code>    char s[32];</code>
<code>}</code>

<code>var cStruct = CStruct()</code>

<code>let s = "This is a Swift string"</code>

<code>s.copyTo(tuple: &cStruct.s)</code>
