
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, geometry-msgs, sensor-msgs, catkin, robotnik-msgs, roscpp, diagnostic-updater, nav-msgs, message-generation, message-runtime, std-msgs, diagnostic-msgs, tf, ackermann-msgs }:
buildRosPackage {
  pname = "ros-kinetic-agvs-robot-control";
  version = "0.1.3";

  src = fetchurl {
    url = https://github.com/RobotnikAutomation/agvs_sim-release/archive/release/kinetic/agvs_robot_control/0.1.3-0.tar.gz;
    sha256 = "eea289928174804be2f07c480b31fbd7d0ac4412424a84b45abdbde5fef58e83";
  };

  buildInputs = [ std-srvs geometry-msgs sensor-msgs robotnik-msgs roscpp diagnostic-updater message-generation nav-msgs std-msgs diagnostic-msgs tf ackermann-msgs ];
  propagatedBuildInputs = [ std-srvs geometry-msgs sensor-msgs robotnik-msgs roscpp diagnostic-updater nav-msgs message-runtime std-msgs diagnostic-msgs tf ackermann-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The agvs_robot_control package. Robot controller that interacts with Gazebo motor controllers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
