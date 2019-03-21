
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dwb-local-planner, pluginlib, roslint, nav-core2, catkin, rostest, nav-2d-utils, angles, rosunit, dynamic-reconfigure, roscpp, nav-2d-msgs }:
buildRosPackage {
  pname = "ros-kinetic-dwb-plugins";
  version = "0.2.5";

  src = fetchurl {
    url = https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/dwb_plugins/0.2.5-0.tar.gz;
    sha256 = "02391bb26c0eb14b95500bc80476a23cc7a87c241c03213ad54196db4415828f";
  };

  checkInputs = [ rostest roslint rosunit ];
  propagatedBuildInputs = [ dwb-local-planner nav-2d-utils pluginlib dynamic-reconfigure angles nav-core2 roscpp nav-2d-msgs ];
  nativeBuildInputs = [ pluginlib nav-core2 catkin nav-2d-msgs nav-2d-utils dynamic-reconfigure angles roscpp dwb-local-planner ];

  meta = {
    description = ''Standard implementations of the GoalChecker
      and TrajectoryGenerators for dwb_local_planner'';
    #license = lib.licenses.BSD;
  };
}
