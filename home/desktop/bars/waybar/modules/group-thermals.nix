{
  waybarModules = {
    "group/thermals" = {
      orientation = "horizontal";
      modules = [
        "custom/thm-cpu"
        "custom/bullet"
        "custom/thm-nvme"
      ];
      drawer = {
        trigger = "hover";
      };
    };
  };
}
