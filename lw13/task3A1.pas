PROGRAM Split(INPUT, OUTPUT);
{�������� INPUT � OUTPUT,������� ��������,� ����� ������
   ��������}
VAR
  Ch, Next: CHAR;
  Odds, Evens: TEXT;
PROCEDURE CopyOut(VAR F1: TEXT; VAR Ch: CHAR);
BEGIN
  {�������� F1 � OUTPUT}
  WHILE NOT EOLN(F1)
  DO 
    BEGIN
      READ(F1, Ch);
      WRITE(Ch)
    END
END;
BEGIN
  {��������� INPUT � Odds � Evens}
  REWRITE(Odds);
  REWRITE(Evens);
  Next := 'O';
  WHILE NOT EOF
  DO
    WHILE NOT EOLN
    DO
      BEGIN
        {��������� Ch, �������� � ����, ��������� �����
         Next, ����������� Next}
        READLN;
        WRITELN(Odds, '#');
        WRITELN(Evens, '#')
      END;
  {WRITELN(Odds);
  WRITELN(Evens);}
  RESET(Odds);
  CopyOut(Odds, Ch);
  RESET(Evens);
  CopyOut(Evens, Ch);
  WRITELN
END.

