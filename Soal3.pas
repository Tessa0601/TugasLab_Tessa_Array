program UrutNilaiUAS;
uses crt;

var
    nilai: array[1..10] of integer;
    n, i, j, temp: integer;

begin
    clrscr;

    write('Masukkan jumlah mahasiswa: ');
    readln(n);

    for i := 1 to n do
    begin
        write('Masukkan nilai UAS mahasiswa ke-', i, ': ');
        readln(nilai[i]);
    end;

    for i := 1 to n - 1 do
    begin
        for j := 1 to n - i do
        begin
            if nilai[j] > nilai[j + 1] then
            begin
                temp := nilai[j];
                nilai[j] := nilai[j + 1];
                nilai[j + 1] := temp;
            end;
        end;
    end;

    writeln;
    writeln('Nilai UAS dari terendah ke tertinggi:');

    for i := 1 to n do
        writeln(nilai[i]);

    readln;
end.