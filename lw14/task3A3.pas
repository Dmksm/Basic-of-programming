PROGRAM RSort(INPUT, OUTPUT);
VAR
  Ch: CHAR;
  F1: TEXT;
PROCEDURE Split(VAR F1, F2, F3: TEXT);{Разбивает F1 на F2, F3}
VAR
  Ch, Switch: CHAR;
BEGIN {Split}
  RESET(F1);
  REWRITE(F2);
  REWRITE(F3); {Копировать F1 попеременно в F2 и F3}
  Switch := '2';
  WHILE NOT EOLN(F1)
  DO
    BEGIN
      READ(F1, Ch);
      IF Switch = '2'
      THEN
        BEGIN
          WRITE(F2, Ch);
          Switch := '3'
        END
      ELSE
        BEGIN
          WRITE(F3, Ch);
          Switch := '2'
        END
    END; 
  WRITELN(F2);
  WRITELN(F3)
END; {Split}
PROCEDURE Merge(VAR F1, F2, F3: TEXT);
{Сливает F2, F3 в сортированном порядке}
VAR
  Ch2, Ch3, Flag: CHAR;
BEGIN {Merge}
  RESET(F2);
  RESET(F3);
  REWRITE(F1);
  READ(F2, Ch2);
  READ(F3, Ch3);
  Flag := '0';
  WHILE (NOT EOLN(F2)) AND (NOT EOLN(F3))
  DO
    BEGIN
      IF Flag = '2'
      THEN
        READ(F2, Ch2);
      IF Flag = '3'
      THEN
        READ(F3, Ch3);
      IF Ch2 < Ch3
      THEN
        BEGIN
          WRITE(F1, Ch2);
          Flag := '2'
        END
      ELSE
        BEGIN
          WRITE(F1, Ch3);
          Flag := '3'
        END
    END;
  {Копировать остаток в F1}
  IF Flag = '2' 
  THEN
    IF NOT EOLN(F2)
    THEN
      READ(F2, Ch2)
    ELSE
      BEGIN
        Ch2 := Ch3;
        READ(F3, Ch3);
      END;
  IF Flag = '3'
  THEN
    IF NOT EOLN(F3)
    THEN
      READ(F3, Ch3)
    ELSE
      BEGIN
        Ch3 := Ch2;
        READ(F2, Ch2);
      END; 
  IF (Ch2 < Ch3) 
  THEN
    BEGIN
      WRITE(F1, Ch2);
      IF NOT EOLN(F2)
      THEN
        BEGIN
          READ(F2, Ch2);
          IF Ch2 < Ch3
          THEN
            BEGIN
              WRITE(F1, Ch2);
              WRITE(F1, Ch3)
            END
          ELSE
            BEGIN
              WRITE(F1, Ch3);
              WRITE(F1, Ch2)
            END
        END    
      ELSE
        WRITE(F1, Ch3)
    END
  ELSE
    BEGIN
      WRITE(F1, Ch3);
      IF NOT EOLN(F3)
      THEN
        BEGIN
          READ(F3, Ch3);
          IF Ch3 < Ch2
          THEN
            BEGIN
              WRITE(F1, Ch3);
              WRITE(F1, Ch2)
            END
          ELSE
            BEGIN
              WRITE(F1, Ch2);
              WRITE(F1, Ch3)
            END
        END
      ELSE
        WRITE(F1, Ch2)
    END;
  IF NOT EOLN(F2)
  THEN
    BEGIN
      READ(F2, Ch2);
      WRITE(F1, Ch2)
    END;
  IF NOT EOLN(F3)
  THEN
    BEGIN
      READ(F3, Ch3);
      WRITE(F1, Ch3)
    END; 
  WRITELN(F1)
END; {Merge}
PROCEDURE RecursiveSort(VAR F1: TEXT);
VAR
  F2, F3: TEXT;
  Ch: CHAR;
BEGIN {RecursiveSort}
  RESET(F1);
  IF NOT EOLN(F1)
  THEN
    BEGIN
      READ(F1, Ch);
      IF NOT EOLN(F1)
      THEN {Файл имеет как минимум 2 символа}
        BEGIN
          Split(F1, F2, F3);
          RecursiveSort(F2);
          RecursiveSort(F3);
          Merge(F1, F2, F3)
        END
    END
END; {RecursiveSort}  
BEGIN
  REWRITE(F1);
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch);
      WRITE(F1, Ch)
    END;
  WRITELN(F1);
  RecursiveSort(F1);
  RESET(F1);
  WHILE NOT EOLN(F1)
  DO
    BEGIN
      READ(F1, Ch);
      WRITE(Ch)
    END 
END.
