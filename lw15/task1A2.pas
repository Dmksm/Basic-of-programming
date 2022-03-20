PROGRAM Count3(INPUT, OUTPUT);
USES Count3;
VAR
  Ch1, Ch2, Ch3: CHAR;
BEGIN
  IF NOT EOLN
  THEN
    BEGIN
      READ(Ch1);
      IF NOT EOLN
      THEN
        BEGIN
          READ(Ch2);
          WHILE NOT EOLN
          DO
            BEGIN
              READ(Ch3);
              IF ((Ch2 > Ch1) AND (Ch2 > Ch3)) OR ((Ch2 < Ch1) AND (Ch2 < Ch3))
              THEN
                Bump;
              Ch1 := Ch2;
              Ch2 := Ch3
            END
        END
    END;
  Value(Ch1, Ch2, Ch3);
  WRITELN(Ch1, Ch2, Ch3)
END. {UNIT Count3}                                                                                                                                                                                            
