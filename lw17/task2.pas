PROGRAM StringToNumber(INPUT, OUTPUT);
VAR
  Num: INTEGER;
PROCEDURE ReadDigit(VAR F: TEXT; VAR D: INTEGER);
VAR 
  Ch: CHAR;
BEGIN {ReadDigit}
  Ch := ' ';
  READ(F, Ch);
  IF Ch = '0' THEN D := 0 ELSE
  IF Ch = '1' THEN D := 1 ELSE
  IF Ch = '2' THEN D := 2 ELSE
  IF Ch = '3' THEN D := 3 ELSE
  IF Ch = '4' THEN D := 4 ELSE
  IF Ch = '5' THEN D := 5 ELSE
  IF Ch = '6' THEN D := 6 ELSE 
  IF Ch = '7' THEN D := 7 ELSE
  IF Ch = '8' THEN D := 8 ELSE
  IF Ch = '9' THEN D := 9
  ELSE
    D := -1
END; {ReadDigit}
PROCEDURE ReadNumber(VAR F: TEXT; VAR Result: INTEGER);
VAR
  Digit: INTEGER;
BEGIN {ReadNumber}
  Result := 0;
  Digit := -1;
  WHILE (Digit < 0) AND (NOT EOLN(F))
  DO
    ReadDigit(F, Digit);
  IF (Digit < 0) AND EOLN(F)
  THEN
    Result := -1;  
  WHILE Digit >= 0 
  DO
    BEGIN
      IF ((Result * 10 + Digit) <= MAXINT)
      THEN
        BEGIN
          Result := Result * 10 + Digit;
          ReadDigit(F, Digit)
        END
      ELSE
        BEGIN
          Result := -2;
          Digit := -2
        END
    END
END; {ReadNumber}
BEGIN{StringToInt}
  ReadNumber(INPUT, Num);
  WRITELN(Num) 
END.{StringToInt}
