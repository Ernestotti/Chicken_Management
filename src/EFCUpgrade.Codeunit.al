codeunit 70016 EFCUpgrade
{
  Subtype = Upgrade;

  trigger OnCheckPreconditionsPerDatabase();
  var
        myInfo: ModuleInfo;
  begin
        ShouldUpgradeChickenTypes := true;
        if NavApp.GetCurrentModuleInfo(myInfo) then
          if myInfo.DataVersion > Version.Create(1, 0) then
            ShouldUpgradeChickenTypes := false;
  end;

  trigger OnUpgradePerCompany()
    begin
      if ShouldUpgradeChickenTypes then
        UpgradeChickenTypes();
    end;

    local procedure UpgradeChickenTypes()
    begin
      RenameChickenTypes('CHICKENTYPE01', 'TYPE01', 'Chicken Type 01');
      RenameChickenTypes('CHICKENTYPE02', 'TYPE02', 'Chicken Type 02');
      RenameChickenTypes('CHICKENTYPE03', 'TYPE03', 'Chicken Type 03');
    end;

    local procedure RenameChickenTypes(TypeCodeOld: Code[20]; TypeCodeNew: Code[20]; TypeDescription: Text[100])
    var
      ChickenTypes: Record EFCChickenType;
    begin
      ChickenTypes.Reset();
      if ChickenTypes.Get(TypeCodeOld) then begin
        ChickenTypes.Rename(TypeCodeNew);
        ChickenTypes.EFCDescription := TypeDescription;
        ChickenTypes.Modify()
      end;
    end;
    
    var
      ShouldUpgradeChickenTypes: Boolean;
    
}
