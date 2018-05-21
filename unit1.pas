unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var veta:string;
  i,pocet:integer;
begin
 veta:=edit1.text;        //načíta vetu
 pocet:=0;            //za počiatočnú hodnotu načíta 0

for i:=1 to length(veta) do    //pre každé písmeno vo vete overí či je to medzera a ak áno tak ju nahradí *
      if veta[i]=' ' then
      begin
        veta[i]:='*';
        inc(pocet);   //po každej náhrade navýši počet uskutočnených výmen
    end;
showmessage(veta+'  Výmen : '+inttostr(pocet));  //zapíše výslednú vetu a počet zmien
end;

end.

