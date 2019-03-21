
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, roslint, nav-grid, dlux-global-planner, nav-core2, catkin, rostest, global-planner-tests }:
buildRosPackage {
  pname = "ros-kinetic-dlux-plugins";
  version = "0.2.5";

  src = fetchurl {
    url = https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/dlux_plugins/0.2.5-0.tar.gz;
    sha256 = "75edd442f24ab55b0a8993940580127a3f2decccfbab29b9d0ce54516bb12a70";
  };

  checkInputs = [ rostest global-planner-tests roslint ];
  propagatedBuildInputs = [ dlux-global-planner nav-core2 pluginlib nav-grid ];
  nativeBuildInputs = [ pluginlib nav-grid dlux-global-planner nav-core2 catkin ];

  meta = {
    description = ''Implementation of dlux_global_planner plugin interfaces.'';
    #license = lib.licenses.BSD;
  };
}
