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
PROCEDURE CopySwap(VAR F1, F2: TEXT; VAR Sorted: CHAR);
VAR
  Ch1, Ch2: CHAR;
BEGIN
  IF NOT EOLN(F1)
  THEN
    BEGIN
      READ(F1, Ch1);
      WHILE NOT EOLN(F1)
      DO
        BEGIN
          READ(F1, Ch2);
          IF Ch1 <= Ch2
          THEN
            BEGIN
              WRITE(F2, Ch1);
              Ch1 := Ch2
            END
          ELSE
            BEGIN
              WRITE(F2, Ch2);
              Sorted := 'N'
            END
        END;
      WRITELN(F2, Ch1)  
    END
END;
BEGIN { BubbleSort }
  REWRITE(F1);
  CopyFile(INPUT, F1);
  RESET(F1);
  CopySwap(F1, OUTPUT, Sorted)
END.{ BubbleSort }

