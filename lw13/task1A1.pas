PROGRAM BubbleSort(INPUT, OUTPUT);
VAR
  Sorted: CHAR;
  F1, F2: TEXT;
  { Сортируем первую строку INPUT в OUTPUT }
PROCEDURE CopyFile(VAR InFile, OutFile: TEXT);
VAR 
  Ch: CHAR;
BEGIN 
  WHILE NOT EOLN(InFile)
  DO
    BEGIN
      READ(InFile, Ch);
      WRITE(OutFile, Ch)
    END;
  WRITELN(OutFile)
END;
BEGIN { BubbleSort }
  CopyFile(INPUT, OUTPUT);
END.{ BubbleSort }

