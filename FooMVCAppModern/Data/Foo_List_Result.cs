//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace FooMVCAppModern.Data
{
    using System;
    
    public partial class Foo_List_Result
    {
        public int Id { get; set; }
        public System.DateTime LastUpdate { get; set; }
        public bool Active { get; set; }
        public bool OtherFlag { get; set; }
        public int FKFirstNotNull { get; set; }
        public Nullable<int> FKSecondNull { get; set; }
        public Nullable<int> FKThirdDefaultValue { get; set; }
        public string Labels { get; set; }
    }
}
