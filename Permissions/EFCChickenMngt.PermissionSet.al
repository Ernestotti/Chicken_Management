permissionset 70017 EFCChickenMngt
{
    Assignable = true;
    Permissions = tabledata EFCChicken=RIMD,
        tabledata EFCChickenType=RIMD,
        tabledata EFCEggProductionHeader=RIMD,
        tabledata EFCEggProductionLine=RIMD,
        tabledata EFCEggType=RIMD,
        table EFCChicken=X,
        table EFCChickenType=X,
        table EFCEggProductionHeader=X,
        table EFCEggProductionLine=X,
        table EFCEggType=X,
        codeunit EFCInstallation=X,
        page EFCChickenCard=X,
        page EFCChickenList=X,
        page EFCChickenManagementRoleCenter=X,
        page EFCChickenTypes=X,
        page EFCEggProductionDocument=X,
        page EFCEggProductionLineList=X,
        page EFCEggProductionList=X,
        page EFCEggProductionSubpage=X,
        page EFCEggTypes=X;
}