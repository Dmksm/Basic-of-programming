PROGRAM CopyReverce(INPUT, OUTPUT);
PROCEDURE Reverce(VAR F1, F2: TEXT);
VAR
  Ch: CHAR;
BEGIN
  IF NOT EOLN(F1)
  THEN
    BEGIN
      READ(F1, Ch);
      Reverce(F1, F2);
      WRITE(F2, Ch)
    END
END;
BEGIN
  Reverce(INPUT, OUTPUT);
  WRITELN
END.

