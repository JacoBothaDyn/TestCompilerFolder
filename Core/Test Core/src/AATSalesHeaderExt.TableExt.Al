tableextension 75000 "AAT Sales Header Ext" extends "Sales Header"
{
    fields
    {
        field(75100; "AAT Test Impl1 Field"; Code[20])
        {
            Caption = 'Test Impl1 Field';
        }
        field(75200; "AAT Test Impl2 Field"; Code[20])
        {
            Caption = 'Test Impl2 Field';
        }

    }

}