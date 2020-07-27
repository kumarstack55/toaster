Option Explicit

Dim Sh, PsArgs
ReDim ArgArray(WScript.Arguments.Count-1)

For i = 0 To WScript.Arguments.Count-1
  ArgArray(i) = WScript.Arguments(i)
Next
PsArgs = Join(ArgArray, " ")

Set Sh = CreateObject("WScript.Shell")
Sh.Run "powershell -ExecutionPolicy RemoteSigned -File " + PsArgs, 0
