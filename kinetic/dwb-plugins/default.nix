
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rostest, dynamic-reconfigure, nav-core2, pluginlib, catkin, roscpp, rosunit, roslint, dwb-local-planner, nav-2d-msgs, angles, nav-2d-utils }:
buildRosPackage {
  pname = "ros-kinetic-dwb-plugins";
  version = "0.2.5";

  src = fetchurl {
    url = "https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/dwb_plugins/0.2.5-0.tar.gz";
    name = "0.2.5-0.tar.gz";
    sha256 = "02391bb26c0eb14b95500bc80476a23cc7a87c241c03213ad54196db4415828f";
  };

  buildType = "catkin";
  buildInputs = [ dynamic-reconfigure nav-core2 pluginlib roscpp dwb-local-planner nav-2d-msgs angles nav-2d-utils ];
  checkInputs = [ roslint rostest rosunit ];
  propagatedBuildInputs = [ dynamic-reconfigure nav-core2 pluginlib roscpp dwb-local-planner nav-2d-msgs angles nav-2d-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Standard implementations of the GoalChecker
      and TrajectoryGenerators for dwb_local_planner'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
