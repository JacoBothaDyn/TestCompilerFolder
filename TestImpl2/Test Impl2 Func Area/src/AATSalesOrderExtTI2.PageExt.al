
pageextension 75200 "AAT Sales Order Ext. TI2" extends "Sales Order"
{
    layout
    {
        addlast(General)
        {
            field("AAT Test Impl2 Field"; Rec."AAT Test Impl2 Field")
            {
                ApplicationArea = All;
                ToolTip = 'From Test Impl1 Functional Area';

            }
        }
    }
    actions
    {
        addlast(processing)
        {
            action(SayHi2)
            {
                ApplicationArea = All;
                ToolTip = 'Say Hi from T2.';
                Image = ExportMessage;

                trigger OnAction()
                var
                    AATLibraryTI2: Codeunit "AAT Library TI2";
                begin
                    AATLibraryTI2.SayHiFromT2();

                end;
            }
        }
    }
}