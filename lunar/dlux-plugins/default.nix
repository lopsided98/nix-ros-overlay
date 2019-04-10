
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, nav-grid, roslint, dlux-global-planner, nav-core2, catkin, rostest, global-planner-tests }:
buildRosPackage {
  pname = "ros-lunar-dlux-plugins";
  version = "0.2.5";

  src = fetchurl {
    url = https://github.com/locusrobotics/robot_navigation-release/archive/release/lunar/dlux_plugins/0.2.5-0.tar.gz;
    sha256 = "a5b4e721fdf6bb99840467058ea58b8c5bcd9f63353ce6a8aa6cbf4f6c504add";
  };

  buildInputs = [ dlux-global-planner nav-core2 pluginlib nav-grid ];
  checkInputs = [ rostest global-planner-tests roslint ];
  propagatedBuildInputs = [ dlux-global-planner nav-core2 pluginlib nav-grid ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Implementation of dlux_global_planner plugin interfaces.'';
    #license = lib.licenses.BSD;
  };
}
