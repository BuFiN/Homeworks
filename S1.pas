const n=500;
var
i,x:integer;
a:array [1..n] of integer;
begin
for i:=2 to n div 2 do begin
x:=i*2;
while x<=n do begin
a[x]:=1;
x:=x+i;
end;
x:=0;
end;
for i:=1 to n do
if a[i]=0 then
write(i,' ');
end.
