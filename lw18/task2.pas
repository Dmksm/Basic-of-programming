PROGRAM AverageScore(INPUT, OUTPUT);
CONST
  NumberOfScores = 4;
  ClassSize = 4;
TYPE
  Score = 0 .. 100;
VAR
  Ch: CHAR;
  F: TEXT;
  WhichScore: 1 .. NumberOfScores;
  Student: 1 .. ClassSize;
  NextScore: Score;
  Ave, TotalScore, ClassTotal: INTEGER;
BEGIN {AverageScore}
  ClassTotal := 0;
  Student := 1;
  WHILE Student <= ClassSize
  DO 
    BEGIN
      TotalScore := 0;
      WhichScore := 1;
      REWRITE(F);
      Ch := '0';
      WHILE (Ch <> ' ') AND (NOT EOLN)
      DO
        BEGIN
          READ(Ch);
          WRITE(F, Ch)
        END;
      WRITELN(F);  
      WHILE (WhichScore <= NumberOfScores) AND (NOT EOLN)
      DO
        BEGIN       
          READ(NextScore);                      
          TotalScore := TotalScore + NextScore;
          WhichScore := WhichScore + 1; 
          IF NOT EOLN
          THEN
            READ
        END;
      READLN;
      TotalScore := TotalScore * 10;
      Ave := TotalScore DIV NumberOfScores;
      WRITE('Average student ', Student, ' score:');
      RESET(F);
      WHILE NOT EOLN(F)
      DO
        BEGIN
          READ(F, Ch);
          WRITE(Ch)
        END;
      IF Ave MOD 10 >= 5
      THEN
        WRITELN(Ave DIV 10 + 1)
      ELSE
        WRITELN(Ave DIV 10);  
      ClassTotal := ClassTotal + TotalScore;
      Student := Student + 1
    END;
  WRITELN;
  WRITELN('Class average: ');
  ClassTotal := ClassTotal DIV (ClassSize * NumberOfScores);
  WRITELN(ClassTotal DIV 10, '.', ClassTotal MOD 10:1)
END.  {AverageScore}

