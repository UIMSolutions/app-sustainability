module apps.sustainability;

mixin(ImportPhobos!());

public { // required uim libraries
  import uim.core;
  import uim.oop;
  import uim.apps;
}

public { // admin-sustainability libraries
  import apps.sustainability.controllers;
  import apps.sustainability.helpers;
  import apps.sustainability.routers;
  import apps.sustainability.tests;
  import apps.sustainability.views;
}
