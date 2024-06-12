unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm5 = class(TForm)
    dbgrd1: TDBGrid;
    lbl1: TLabel;
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    lbl2: TLabel;
    edt2: TEdit;
    lbl3: TLabel;
    edt3: TEdit;
    btn4: TButton;
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
  Form5: TForm5;
  a : string;
implementation

uses Unit4;

{$R *.dfm}

procedure TForm5.dbgrd1CellClick(Column: TColumn);
begin
    edt2.Text:= DataModule4.Zsatuan.Fields[2].AsString;
    edt1.Text:= DataModule4.Zsatuan.Fields[1].AsString;
    a:= DataModule4.Zsatuan.Fields[0].AsString;
end;

procedure TForm5.btn1Click(Sender: TObject);
begin
DataModule4.Zsatuan.SQL.Clear;
DataModule4.Zsatuan.SQL.Add('insert into satuan values(null,"'+edt1.Text+'","'+edt2.text+'")');
DataModule4.Zsatuan.ExecSQL ;

DataModule4.Zsatuan.SQL.Clear;
DataModule4.Zsatuan.SQL.Add('select * from satuan');
DataModule4.Zsatuan.Open;
Showmessage('Data Berhasil Disimpan!');
end;

procedure TForm5.btn2Click(Sender: TObject);
begin
 DataModule4.Zsatuan.SQL.Clear;
   if edt1.Text <> '' then
   DataModule4.Zsatuan.SQL.Add('update satuan set NAME="'+edt1.Text+'" where id= "'+a+'"');
   DataModule4.Zsatuan.ExecSQL;

   DataModule4.Zsatuan.SQL.Clear;
   if Edt2.Text <> '' then
   DataModule4.Zsatuan.SQL.Add('update satuan set DESKRIPSI="'+edt2.Text+'" where id= "'+a+'"');
   DataModule4.Zsatuan.ExecSQL;

   DataModule4.Zsatuan.SQL.Clear;
   DataModule4.Zsatuan.SQL.Add ('select * from satuan');
   DataModule4.Zsatuan.Open;
   ShowMessage('Data berhasil diupdate');
end;

procedure TForm5.btn3Click(Sender: TObject);
begin
  begin
    with DataModule4.Zsatuan do
    begin
  SQL.Clear;
  SQL.Add('delete from satuan where id= "'+a+'"');
  ExecSQL;

  SQL.Clear;
  SQL.Add('select * from satuan');
  Open;
  end;
  ShowMessage('Data Berhasil Diupdate!');
  end;
end;

end.
