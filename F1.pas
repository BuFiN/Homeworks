type
  m = array[1..100] of char;
var
  f:text;
  a:m;
  i,start,mStart,size,lmax:integer;
begin
  assign(f,'text.txt');
  reset(f);
  start:= 1;
  while not eof(f) do
  begin
    inc(i);
    read(f,a[i]); 
    if (a[i]=' ') then
    begin
      size:=i-start;
      if (lmax<size) then
      begin
      mStart:=start;
      lmax:=size;
      end;
      start:=i+1;
    end;
  end;
  close(f);
  writeln(lmax);
  for i:=mStart to mStart+lmax-1 do
  write(a[i]);
end.
