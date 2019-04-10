
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, roslint, nav-core2, catkin, nav-2d-msgs, rostest, nav-2d-utils, angles, rosunit, dynamic-reconfigure, roscpp, dwb-local-planner }:
buildRosPackage {
  pname = "ros-lunar-dwb-plugins";
  version = "0.2.5";

  src = fetchurl {
    url = https://github.com/locusrobotics/robot_navigation-release/archive/release/lunar/dwb_plugins/0.2.5-0.tar.gz;
    sha256 = "df53e24bdabe2e3d107dab5da89152fefd956e3bfba187b85d4c130fdf90eca9";
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
