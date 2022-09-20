
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dlux-global-planner, global-planner-tests, nav-core2, nav-grid, pluginlib, roslint, rostest }:
buildRosPackage {
  pname = "ros-melodic-dlux-plugins";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/melodic/dlux_plugins/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "808a7a1c10ea340eb062a34d08d03d980eeb14084598245ef80282d007b9e616";
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
