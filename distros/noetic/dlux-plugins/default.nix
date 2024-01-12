
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dlux-global-planner, global-planner-tests, nav-core2, nav-grid, pluginlib, roslint, rostest }:
buildRosPackage {
  pname = "ros-noetic-dlux-plugins";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/noetic/dlux_plugins/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "29ea1f12d379a9ee2b053d1d99e07437b9a5447405b5bbfb3fb32ced2be6385b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ global-planner-tests roslint rostest ];
  propagatedBuildInputs = [ dlux-global-planner nav-core2 nav-grid pluginlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Implementation of dlux_global_planner plugin interfaces.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
