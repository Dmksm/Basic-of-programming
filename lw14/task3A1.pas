PROGRAM RSort(INPUT, OUTPUT);
VAR
  Ch: CHAR;
  F1, F2, F3: TEXT;
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
          WRITE('F2:', Ch, ' ');
          Switch := '3'
        END
      ELSE
        BEGIN
          WRITE('F3:', Ch, ' ');
          Switch := '2'
        END
    END; 
  WRITELN(F2);
  WRITELN(F3)
END; {Split}
BEGIN
  REWRITE(F1);
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch);
      WRITE(F1, Ch)
    END;
  WRITELN(F1);
  Split(F1, F2, F3)
END.
