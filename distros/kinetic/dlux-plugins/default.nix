
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dlux-global-planner, global-planner-tests, nav-core2, nav-grid, pluginlib, roslint, rostest }:
buildRosPackage {
  pname = "ros-kinetic-dlux-plugins";
  version = "0.2.5";

  src = fetchurl {
    url = "https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/dlux_plugins/0.2.5-0.tar.gz";
    name = "0.2.5-0.tar.gz";
    sha256 = "75edd442f24ab55b0a8993940580127a3f2decccfbab29b9d0ce54516bb12a70";
  };

  buildType = "catkin";
  checkInputs = [ global-planner-tests roslint rostest ];
  propagatedBuildInputs = [ dlux-global-planner nav-core2 nav-grid pluginlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Implementation of dlux_global_planner plugin interfaces.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
