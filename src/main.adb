with Ada.Text_IO;
with Ada.Float_Text_IO;
with Ada.Integer_Text_IO;

procedure Main is

   type Float_Array is array (Integer range <>) of Float;

   procedure Test (X : in out Float_Array) is
   begin
      for I in X'First .. X'Last - 1 loop
         X (I + 1) := 1.0 - (2.0 / X (I));
      end loop;
   end;

   X : Float_Array (1 .. 1000);

begin

   X (1) := 1.0;

   Test (X);

   for I in X'Range loop
      Ada.Float_Text_IO.Put (X (I), 3, 3, 0);
      Ada.Text_IO.New_Line;
   end loop;


   null;
end;
