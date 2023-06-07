pageextension 75100 "AAT Sales Order Ext. TI1" extends "Sales Order"
{
    layout
    {
        addlast(General)
        {
            field("AAT Test Impl1 Field"; Rec."AAT Test Impl1 Field")
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
            action(SayHi)
            {
                ApplicationArea = All;
                ToolTip = 'Say Hi from T1.';
                Image = ExportMessage;

                trigger OnAction()
                var
                    AATLibraryTI1: Codeunit "AAT Library TI1";
                begin
                    AATLibraryTI1.SayHiFromT1();

                end;
            }
        }
    }
}