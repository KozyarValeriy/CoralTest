unit edit_offices;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm4 = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    StringGrid1: TStringGrid;
    Button1: TButton;
    Button2: TButton;
    ADOQuery2: TADOQuery;
    Button3: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  EWrongIdError = class(Exception);

procedure set_col(grid: TDBGrid; s_grid: TStringgrid);
procedure row_up(curren_index: integer; var empty_index: integer);

var
  Form4: TForm4;
  query: string;
  allow_id: array of integer;

implementation

{$R *.dfm}

uses offices, main;

procedure TForm4.Button1Click(Sender: TObject);
var i, agencies_id, empty_index, row_count, j: integer;
    office_name, adress: string;
    cheak: boolean;
  begin
    // Допустимый индекс строки для перемещения при обработке исключений
    empty_index := 1;
    row_count := Stringgrid1.RowCount;
    if Stringgrid1.RowCount > 1 then
      begin
        for i := 1 to Stringgrid1.RowCount - 1 do
          begin
            office_name := Stringgrid1.Cells[1, i];
            adress := Stringgrid1.Cells[2, i];
            cheak := False; // Изначально считаем, что ID не в списке
            if (Length(office_name) > 0) and(Length(adress) > 0) then // Если строки не пустые
              begin
                try
                  agencies_id := StrToInt(Stringgrid1.Cells[0, i]);
                  // Поиск ID агенства в массиве всех ID
                  for j := 0 to Length(allow_id) - 1 do
                    begin
                      if (agencies_id = allow_id[j]) then
                        begin
                          cheak := True; // Если найден в допустимых, меняем флаг
                          break
                        end;
                    end;
                  if (not cheak) then
                      raise EWrongIdError.Create('Error!');
                  ADOQuery2.SQL.Text := Format(query, [agencies_id,
                                                       office_name, adress]);
                  ADOQuery2.ExecSQL;
                  Stringgrid1.Rows[i].Clear;
                  dec(row_count);
                except
                  on EConvertError do
                    begin
                      ShowMessage('ID Агенства должно быть целым числом.');
                      row_up(i, empty_index);
                    end;
                  on EWrongIdError do
                    begin
                      ShowMessage(Format('Агенства c ID = %d не существует.',
                                         [agencies_id]));
                      row_up(i, empty_index);
                    end;
                end;
              end
            else
              dec(row_count);
          end;
      end;
    Stringgrid1.RowCount := row_count;
  end;

procedure TForm4.Button2Click(Sender: TObject);
  begin
    Stringgrid1.RowCount := Stringgrid1.RowCount + 1;
  end;

procedure TForm4.Button3Click(Sender: TObject);
  begin
    if Stringgrid1.RowCount > 2 then
      Stringgrid1.RowCount := Stringgrid1.RowCount - 1;
  end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
var row, col: integer;
  begin
    // Очистка Stringgrid при закрытии формы
    for col := 0 to Stringgrid1.ColCount - 1 do
      for row := 1 to Stringgrid1.RowCount - 1 do
        Stringgrid1.Cells[col, row] := '';
    Form3.Button1Click(self);
    Action := caFree;
    Form4 := nil;
  end;

procedure TForm4.FormCreate(Sender: TObject);
var i: integer;
  begin
    set_col(DBGrid1, Stringgrid1);
    // Запрос на добавление строки в таблицу offices
    query := 'INSERT INTO offices (Agencies_id, Office_name, Adress)' +
              'VALUES (%d, ''%s'', ''%s'');';
    // Запись доступных ID агенств
    ADOQuery2.Open;
    SetLength(allow_id, ADOQuery2.RecordCount);
    ADOQuery2.First;
    for i := 0 to ADOQuery2.RecordCount - 1 do
      begin
        allow_id[i] := ADOQuery2.FieldByName('ID').AsInteger;
        ADOQuery2.Next;
      end;
  end;

procedure TForm4.FormResize(Sender: TObject);
  begin
    Button1.Top := Form4.ClientHeight - Button1.Height - 10;
    Stringgrid1.Height := Button1.Top - 15;
  end;

procedure set_col(grid: TDBGrid; s_grid: TStringgrid);
  begin
    grid.Columns[0].Width := 30;
    grid.Columns[1].Width := 170;
    grid.Columns[0].Title.Caption := 'ID';
    grid.Columns[1].Title.Caption := 'Название';
    s_grid.Cells[0, 0] := 'ID агентства';
    s_grid.Cells[1, 0] := 'Наименование офиса';
    s_grid.Cells[2, 0] := 'Адрес';
    s_grid.ColWidths[0] := 110;
    s_grid.ColWidths[1] := 185;
    s_grid.ColWidths[2] := 235;
  end;

procedure row_up(curren_index: integer; var empty_index: integer);
  begin
    // Смещение ошибочной строки к началу таблици
    if curren_index > empty_index then
      begin
        Form4.Stringgrid1.Rows[empty_index] := Form4.Stringgrid1.Rows[curren_index];
        inc(empty_index);
        Form4.Stringgrid1.Rows[curren_index].Clear;
      end;
  end;
end.
