
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, dwb-local-planner, dynamic-reconfigure, nav-2d-msgs, nav-2d-utils, nav-core2, pluginlib, roscpp, roslint, rostest, rosunit }:
buildRosPackage {
  pname = "ros-melodic-dwb-plugins";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/melodic/dwb_plugins/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "b329ba183c9e033d2b85423f19ebd060d36df1f05ae4d425b46a868ca87900b1";
  };

  buildType = "catkin";
  checkInputs = [ roslint rostest rosunit ];
  propagatedBuildInputs = [ angles dwb-local-planner dynamic-reconfigure nav-2d-msgs nav-2d-utils nav-core2 pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Standard implementations of the GoalChecker
      and TrajectoryGenerators for dwb_local_planner'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
