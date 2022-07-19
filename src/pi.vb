Imports System

Module Pi
  Function CalculatePi(ByVal precision As Integer) As Double
    Dim pi As Double = 0, k As Double = 1
    Dim max As Integer = 10 ^ precision, i As Integer
      For i = 0 To max
        If (i MOD 2 = 0) Then
          pi += 4 / k
        Else
          pi -= 4 / k
        End If
        k += 2
      Next 
    Return pi
  End Function

  Sub Main()
    Dim pi As Double = CalculatePi(9)
    Console.WriteLine("Pi = {0:0.00000000}", pi)
  End Sub
End Module


