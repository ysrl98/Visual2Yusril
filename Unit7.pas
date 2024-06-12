unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm7 = class(TForm)
    edt1: TEdit;
    lbl1: TLabel;
    edt2: TEdit;
    lbl2: TLabel;
    edt3: TEdit;
    lbl3: TLabel;
    edt4: TEdit;
    lbl4: TLabel;
    edt5: TEdit;
    lbl5: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    lbl10: TLabel;
    edt10: TEdit;
    btn4: TButton;
    dbgrd1: TDBGrid;
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  a : string;

implementation

uses Unit4;

{$R *.dfm}

procedure TForm7.dbgrd1CellClick(Column: TColumn);
begin
    edt5.Text:= DataModule4.Zkustomer.Fields[5].AsString;
    edt4.Text:= DataModule4.Zkustomer.Fields[4].AsString;
    edt3.Text:= DataModule4.Zkustomer.Fields[3].AsString;
    edt2.Text:= DataModule4.Zkustomer.Fields[2].AsString;
    edt1.Text:= DataModule4.Zkustomer.Fields[1].AsString;
    a:= DataModule4.Zkustomer.Fields[0].AsString;
end;


procedure TForm7.btn1Click(Sender: TObject);
begin
  DataModule4.Zkustomer.SQL.Clear;
  DataModule4.Zkustomer.SQL.Add('insert into kustomer values(null,"'+edt1.Text+'","'+edt2.text+'","'+edt3.Text+'","'+edt4.text+'","'+edt5.Text+'")');
  DataModule4.Zkustomer.ExecSQL ;

  DataModule4.Zkustomer.SQL.Clear;
  DataModule4.Zkustomer.SQL.Add('select * from kustomer');
  DataModule4.Zkustomer.Open;
  Showmessage('Data Berhasil Disimpan!');
end;
procedure TForm7.btn2Click(Sender: TObject);
begin
DataModule4.Zkustomer.SQL.Clear;
   if edt1.Text <> '' then
   DataModule4.Zkustomer.SQL.Add('update kustomer set NIK="'+edt1.Text+'" where id= "'+a+'"');
   DataModule4.Zkustomer.ExecSQL;

   DataModule4.Zkustomer.SQL.Clear;
   if Edt2.Text <> '' then
   DataModule4.Zkustomer.SQL.Add('update kustomer set NAME="'+edt2.Text+'" where id= "'+a+'"');
   DataModule4.Zkustomer.ExecSQL;

   DataModule4.Zkustomer.SQL.Clear;
   if Edt3.Text <> '' then
   DataModule4.Zkustomer.SQL.Add('update kustomer set TELP="'+edt3.Text+'" where id= "'+a+'"');
   DataModule4.Zkustomer.ExecSQL;

   DataModule4.Zkustomer.SQL.Clear;
   if Edt5.Text <> '' then
   DataModule4.Zkustomer.SQL.Add('update kustomer set ALAMAT="'+edt5.Text+'" where id= "'+a+'"');
   DataModule4.Zkustomer.ExecSQL;

   DataModule4.Zkustomer.SQL.Clear;
   if Edt4.Text <> '' then
   DataModule4. Zkustomer.SQL.Add('update kustomer set EMAIL="'+edt4.Text+'" where id= "'+a+'"');
   DataModule4. Zkustomer.ExecSQL;

   DataModule4.Zkustomer.SQL.Clear;
   DataModule4.Zkustomer.SQL.Add ('select * from kustomer');
   DataModule4.Zkustomer.Open;
   ShowMessage('Data berhasil diupdate');
end;
procedure TForm7.btn3Click(Sender: TObject);
 begin
  begin
    with DataModule4.Zkustomer do
    begin
  SQL.Clear;
  SQL.Add('delete from kustomer where id= "'+a+'"');
  ExecSQL;

  SQL.Clear;
  SQL.Add('select * from kustomer');
  Open;
  end;
  ShowMessage('Data Berhasil Diupdate!');
  end;
end;


end.
