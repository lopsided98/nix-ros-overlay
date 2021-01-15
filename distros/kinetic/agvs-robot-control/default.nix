
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-msgs, catkin, diagnostic-msgs, diagnostic-updater, geometry-msgs, message-generation, message-runtime, nav-msgs, robotnik-msgs, roscpp, sensor-msgs, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-kinetic-agvs-robot-control";
  version = "0.1.3";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/agvs_sim-release/archive/release/kinetic/agvs_robot_control/0.1.3-0.tar.gz";
    name = "0.1.3-0.tar.gz";
    sha256 = "eea289928174804be2f07c480b31fbd7d0ac4412424a84b45abdbde5fef58e83";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ ackermann-msgs diagnostic-msgs diagnostic-updater geometry-msgs message-runtime nav-msgs robotnik-msgs roscpp sensor-msgs std-msgs std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The agvs_robot_control package. Robot controller that interacts with Gazebo motor controllers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
