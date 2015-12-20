const N=10;
type Arr=array[1..N] of integer;
var mid, left, right, key, i: integer;
A: Arr;
function BinarySearch(A: Arr; key: integer): integer;
begin
left:=1; right:=N;
while left<=right do
begin
mid:=left+(right-left) div 2;
if (key<A[mid]) then right:=mid-1
else if (key>A[mid]) then left:=mid+1
else begin BinarySearch:=mid; exit; end;
end;
BinarySearch:=-1;
end;
begin
write('Искомый элемент > '); 
read(key);
write('Исходный массив: ');
for i:=1 to N do
begin A[i]:=N*i; 
write(A[i], ' '); 
end;
writeln;
if (BinarySearch(A, key)=-1) then write('Элемент не найден')
else write('Номер элемента: ', BinarySearch(A, key));
end.
