
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dlux-global-planner, global-planner-tests, nav-core2, nav-grid, pluginlib, roslint, rostest }:
buildRosPackage {
  pname = "ros-kinetic-dlux-plugins";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/dlux_plugins/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "8f8d049649dd1fbbe3fa269b8cfe1d3b6f814f60c653e09ceaaf0545a5b15bd9";
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
