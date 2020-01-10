
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, dwb-local-planner, dynamic-reconfigure, nav-2d-msgs, nav-2d-utils, nav-core2, pluginlib, roscpp, roslint, rostest, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-dwb-plugins";
  version = "0.2.5";

  src = fetchurl {
    url = "https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/dwb_plugins/0.2.5-0.tar.gz";
    name = "0.2.5-0.tar.gz";
    sha256 = "02391bb26c0eb14b95500bc80476a23cc7a87c241c03213ad54196db4415828f";
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
