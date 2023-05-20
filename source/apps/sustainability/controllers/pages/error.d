/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module apps.sustainability.controllers.pages.error;

import apps.sustainability;
@safe:

class DSUSErrorPageController : DAPPPageController {
  mixin(ControllerThis!("SUSErrorPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(SUSErrorView(this));
  }
}
mixin(ControllerCalls!("SUSErrorPageController"));
