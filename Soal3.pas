program UrutNilaiUAS;
uses crt;

var
    { Array untuk menyimpan nilai UAS maksimal 10 mahasiswa }
    nilai: array[1..10] of integer;

    { Variabel untuk jumlah mahasiswa, perulangan, dan pertukaran nilai }
    n, i, j, temp: integer;

begin
    clrscr;

    { Meminta pengguna memasukkan jumlah mahasiswa }
    write('Masukkan jumlah mahasiswa: ');
    readln(n);

    { Memasukkan nilai UAS setiap mahasiswa ke dalam array }
    for i := 1 to n do
    begin
        write('Masukkan nilai UAS mahasiswa ke-', i, ': ');
        readln(nilai[i]);
    end;

    { Proses pengurutan nilai menggunakan algoritma Bubble Sort }
    for i := 1 to n - 1 do
    begin
        { Membandingkan nilai yang berdekatan secara berulang }
        for j := 1 to n - i do
        begin
            { Jika nilai kiri lebih besar, kedua nilai ditukar }
            if nilai[j] > nilai[j + 1] then
            begin
                { Menyimpan nilai sementara sebelum pertukaran }
                temp := nilai[j];

                { Memindahkan nilai yang lebih kecil ke kiri }
                nilai[j] := nilai[j + 1];

                { Memindahkan nilai sebelumnya ke kanan }
                nilai[j + 1] := temp;
            end;
        end;
    end;

    { Menampilkan judul hasil pengurutan }
    writeln;
    writeln('Nilai UAS dari terendah ke tertinggi:');

    { Menampilkan nilai yang sudah terurut }
    for i := 1 to n do
        writeln(nilai[i]);

    readln;
end.