
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, roslint, nav-core2, catkin, nav-2d-msgs, rostest, nav-2d-utils, angles, rosunit, dynamic-reconfigure, roscpp, dwb-local-planner }:
buildRosPackage {
  pname = "ros-kinetic-dwb-plugins";
  version = "0.2.5";

  src = fetchurl {
    url = https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/dwb_plugins/0.2.5-0.tar.gz;
    sha256 = "02391bb26c0eb14b95500bc80476a23cc7a87c241c03213ad54196db4415828f";
  };

  buildInputs = [ pluginlib nav-core2 nav-2d-msgs nav-2d-utils dynamic-reconfigure angles roscpp dwb-local-planner ];
  checkInputs = [ rostest roslint rosunit ];
  propagatedBuildInputs = [ pluginlib nav-core2 nav-2d-msgs nav-2d-utils dynamic-reconfigure angles roscpp dwb-local-planner ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Standard implementations of the GoalChecker
      and TrajectoryGenerators for dwb_local_planner'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
