
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, roslint, nav-core2, catkin, nav-2d-msgs, rostest, nav-2d-utils, angles, rosunit, dynamic-reconfigure, roscpp, dwb-local-planner }:
buildRosPackage {
  pname = "ros-melodic-dwb-plugins";
  version = "0.2.5-r1";

  src = fetchurl {
    url = https://github.com/DLu/robot_navigation-release/archive/release/melodic/dwb_plugins/0.2.5-1.tar.gz;
    sha256 = "b329ba183c9e033d2b85423f19ebd060d36df1f05ae4d425b46a868ca87900b1";
  };

  buildInputs = [ dwb-local-planner nav-2d-utils pluginlib dynamic-reconfigure angles nav-core2 roscpp nav-2d-msgs ];
  checkInputs = [ rostest roslint rosunit ];
  propagatedBuildInputs = [ dwb-local-planner nav-2d-utils pluginlib dynamic-reconfigure angles nav-core2 roscpp nav-2d-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Standard implementations of the GoalChecker
      and TrajectoryGenerators for dwb_local_planner'';
    #license = lib.licenses.BSD;
  };
}