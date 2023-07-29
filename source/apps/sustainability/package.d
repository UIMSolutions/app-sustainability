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

static this() {
  // Create app
  auto myApp = App("sustainabilityApp", "apps/sustainability");

  // Customize app
  with(myApp) {
    importTranslations;
    addControllers([
      "sustain.index": IndexPageController
    ]);
    addRoutes(
      Route("", HTTPMethod.GET, controller("sustain.index")),
      Route("/", HTTPMethod.GET, controller("sustain.index"))
    );
  }

  // Register app
  AppRegistry.register("apps.sustainability", myApp);
}