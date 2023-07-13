using { managed , cuid , Country , sap } from '@sap/cds/common';

namespace de.albansberg.winestore;

entity Wines : managed, cuid {
    title : String;
    description : String;
    price : Decimal(9,2);
    grape : Association to Grapes;

}

entity Wineries : managed, cuid {
    title : String;
    street : String;
    town : String;
    country : Country;
}

entity Grapes : sap.common.CodeList { 
  key ID   : Integer;
  parent   : Association to Grapes;
  children : Composition of many Grapes on children.parent = $self;
}
