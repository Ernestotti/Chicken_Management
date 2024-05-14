table 70007 EFCEggProductionHeader
{
    Caption = 'EFC Egg Production Header';
    DataClassification = CustomerContent;

    fields
    {
       
        field(1; EFCNo; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No.';
        }
        field(2; EFCDocumentDate; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Document Date';
        }
    }
    keys
    {
        key(Key1; EFCNo)
        {
            Clustered = true;
        }
    }
}
