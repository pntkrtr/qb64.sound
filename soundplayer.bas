Rem Creado por Víctor Manuel Espinosa López en 2023
Dim Shared numeroDeNotas As Integer
numeroDeNotas = 81
Dim Shared notaesp(numeroDeNotas) As String
Dim Shared notaeng(numeroDeNotas) As String
Dim Shared frec(numeroDeNotas) As Integer
For n = 0 To numeroDeNotas - 1
    Read notaesp(n), notaeng(n), frec(n)
Next n
Print "Escalas cromaticas"
Print "------------------"
' Print "Oscilacion "
For x = 1 To 3
    For i = 0 To numeroDeNotas - 1
        ' Sound frec(i), 9 / 18
    Next i
    For i = numeroDeNotas - 1 To 0 Step -1
        ' Sound frec(i), 9 / 18
    Next i
Next x
Print "Cancion de cuna de J. Brahms"
Call nota("Mi4", 9): Call nota("Mi4", 9)
Call nota("Sol4", 18): Call nota("Mi4", 9): Call nota("Mi4", 9)
Call nota("Sol4", 18): Call nota("Mi4", 9): Call nota("Sol4", 9)
Call nota("Do5", 9): Call nota("Si4", 13.5): Call nota("La4", 4.5)
Call nota("La4", 9): Call nota("Sol4", 9): Call nota("Re4", 4.5): Call nota("Mi4", 4.5)
Call nota("Fa4", 9): Call nota("Re4", 9): Call nota("Re4", 4.5): Call nota("Mi4", 4.5)
Call nota("Fa4", 18): Call nota("Re4", 4.5): Call nota("Fa4", 4.5)
Call nota("Si4", 4.5): Call nota("La4", 4.5): Call nota("Sol4", 9): Call nota("Si4", 9)
Call nota("Do5", 18): Call nota("Do4", 4.5): Call nota("Do4", 4.5)
Call nota("Do5", 18): Call nota("La4", 4.5): Call nota("Fa4", 4.5)
Call nota("Sol4", 18): Call nota("Mi4", 4.5): Call nota("Do4", 4.5)
Call nota("Fa4", 9): Call nota("Sol4", 9): Call nota("La4", 9)
Call nota("Sol4", 9): Call nota("Do5", 9): Call nota("Do4", 4.5): Call nota("Do4", 4.5)
Call nota("Do5", 18): Call nota("La4", 4.5): Call nota("Fa4", 4.5)
Call nota("Sol4", 18): Call nota("Mi4", 4.5): Call nota("Do4", 4.5)
Call nota("Fa4", 4.5): Call nota("Sol4", 2.25): Call nota("Fa4", 2.25): Call nota("Mi4", 9): Call nota("Re4", 9)
Call nota("Do4", 18): Call nota("", 9)
End
Sub nota (n As String, t As Integer)
    Dim i, salir As Integer
    i = 0: salir = 0
    Do
        If notaesp(i) = n Or notaeng(i) = n Then
            Sound frec(i), t
            salir = 1
        End If
        i = i + 1
    Loop While i <= numeroDeNotas - 1 And salir = 0
End Sub
Rem Escalas cromaticas por frecuencia
Data "Re#1","D#1",39,"Mi1","E1",41,"Fa1","F1",44
Data "Fa#1","F#1",46,"Sol1","G1",49,"Sol#1","G#1",51
Data "La1","A1",55,"La#1","A#1",58,"Si1","B1",62
Data "Do2","C2",65,"Do#2","C#2",69,"Re2","D2",73
Data "Re#2","D#2",78,"Mi2","E2",82,"Fa2","F2",87
Data "Fa#2","F#2",92,"Sol2","G2",98,"Sol#2","G#2",104
Data "La2","A2",110,"La#2","A#2",117,"Si2","B2",123
Data "Do3","C3",131,"Do#3","C#3",139,"Re3","D3",147
Data "Re#3","D#3",156,"Mi3","E3",165,"Fa3","F3",175
Data "Fa#3","F#3",185,"Sol3","G3",196,"Sol#3","G#3",208
Data "La3","A3",220,"La#3","A#3",233,"Si3","B3",247
Data "Do4","C4",262,"Do#4","C#4",277,"Re4","D4",294
Data "Re#4","D#4",311,"Mi4","E4",330,"Fa4","F4",349
Data "Fa#4","F#4",370,"Sol4","G4",392,"Sol#4","G#4",415
Data "La4","A4",440,"La#4","A#4",466,"Si4","B4",494
Data "Do5","C5",523,"Do#5","C#5",554,"Re5","D5",587
Data "Re#5","D#5",622,"Mi5","E5",659,"Fa5","F5",698
Data "Fa#5","F#5",740,"Sol5","G5",784,"Sol#5","G#5",831
Data "La5","A5",880,"La#5","A#5",932,"Si5","B5",988
Data "Do6","C6",1047,"Do#6","C#6",1109,"Re6","D6",1175
Data "Re#6","D#6",1245,"Mi6","E6",1318,"Fa6","F6",1397
Data "Fa#6","F#6",1480,"Sol6","G6",1568,"Sol#6","G#6",1661
Data "La6","A6",1760,"La#6","A#6",1865,"Si6","B6",1976
Data "Do7","C7",2093,"Do#7","C#7",2217,"Re7","D7",2349
Data "Re#7","D#7",2489,"Mi7","E7",2637,"Fa7","F7",2794
Data "Fa#7","F#7",2960,"Sol7","G7",3136,"Sol#7","G#7",3322
Data "La7","A7",3520,"La#7","A#8",3729,"Si8","B8",3951
Data "Do8","C8",4186
