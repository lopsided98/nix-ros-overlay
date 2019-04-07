
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, nav-grid, roslint, dlux-global-planner, nav-core2, catkin, rostest, global-planner-tests }:
buildRosPackage {
  pname = "ros-melodic-dlux-plugins";
  version = "0.2.5-r1";

  src = fetchurl {
    url = https://github.com/DLu/robot_navigation-release/archive/release/melodic/dlux_plugins/0.2.5-1.tar.gz;
    sha256 = "c76766fca13a89b2f6e6222c47f57f44765c44268c7b4439db3bc5869c23a296";
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
