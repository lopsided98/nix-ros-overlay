
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, dwb-local-planner, dynamic-reconfigure, nav-2d-msgs, nav-2d-utils, nav-core2, pluginlib, roscpp, roslint, rostest, rosunit }:
buildRosPackage {
  pname = "ros-melodic-dwb-plugins";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/melodic/dwb_plugins/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "e9326875f9630b6e0b1cdc3a465656c025bace6c19f912f48f5d9b014e378831";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint rostest rosunit ];
  propagatedBuildInputs = [ angles dwb-local-planner dynamic-reconfigure nav-2d-msgs nav-2d-utils nav-core2 pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Standard implementations of the GoalChecker
      and TrajectoryGenerators for dwb_local_planner'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
