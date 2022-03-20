PROGRAM Count3(INPUT, OUTPUT);
USES Count3;
VAR
  x100, x10, x1, Ch: CHAR;
BEGIN
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch);
      Bump;
      Value(x100, x10, x1);
      WRITELN(x100, x10, x1)
    END
END. {UNIT Count3}                                                                                                                                                                                            
