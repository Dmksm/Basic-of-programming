PROGRAM SarahRevere(INPUT, OUTPUT);
VAR
  W1, W2, W3, W4: CHAR;
  Looking, Land, Sea: BOOLEAN;
BEGIN {SarahRevere}
 {�������������}
  W1 := ' ';
  W2 := ' ';
  W3 := ' ';
  W4 := ' ';
  Looking := TRUE;
  WHILE Looking AND NOT(Land OR Sea)
  DO
    BEGIN
     {�������� ����}
      W1 := W2;
      W2 := W3;
      W3 := W4;
      IF NOT EOLN
      THEN
        READ(W4)
      ELSE
        Looking := FALSE;
      {�������� ���� �� land}
      Land := (W1 = 'l') AND (W2 = 'a') AND (W3 = 'n') AND (W4 = 'd');
      {�������� ���� �� sea}
      Sea := (W2 = 's') AND (W3 = 'e') AND (W4 = 'a')
    END;
  {�������� ��������� Sarah}
  IF Land
  THEN
    WRITELN('The British are coming by land')
  ELSE
    IF Sea
    THEN
      WRITELN('The British are coming by sea')
    ELSE
      WRITELN('Sarah didn''t say')
END. {SarahRevere}
