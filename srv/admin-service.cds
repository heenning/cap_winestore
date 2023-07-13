using { de.albansberg.winestore as my } from '../db/schema';
service AdminService @(requires:'authenticated-user') { 
  entity Wines as projection on my.Wines;
  entity Wineries as projection on my.Wineries;
}