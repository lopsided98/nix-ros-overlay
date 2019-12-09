
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, global-planner-tests, nav-grid, pluginlib, nav-core2, catkin, roslint, rostest, dlux-global-planner }:
buildRosPackage {
  pname = "ros-kinetic-dlux-plugins";
  version = "0.2.5";

  src = fetchurl {
    url = "https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/dlux_plugins/0.2.5-0.tar.gz";
    name = "0.2.5-0.tar.gz";
    sha256 = "75edd442f24ab55b0a8993940580127a3f2decccfbab29b9d0ce54516bb12a70";
  };

  buildType = "catkin";
  buildInputs = [ nav-grid pluginlib nav-core2 dlux-global-planner ];
  checkInputs = [ global-planner-tests rostest roslint ];
  propagatedBuildInputs = [ nav-grid nav-core2 pluginlib dlux-global-planner ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Implementation of dlux_global_planner plugin interfaces.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
