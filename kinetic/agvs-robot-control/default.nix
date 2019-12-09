
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, sensor-msgs, robotnik-msgs, diagnostic-msgs, geometry-msgs, ackermann-msgs, std-msgs, std-srvs, tf, catkin, roscpp, message-runtime, nav-msgs, diagnostic-updater }:
buildRosPackage {
  pname = "ros-kinetic-agvs-robot-control";
  version = "0.1.3";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/agvs_sim-release/archive/release/kinetic/agvs_robot_control/0.1.3-0.tar.gz";
    name = "0.1.3-0.tar.gz";
    sha256 = "eea289928174804be2f07c480b31fbd7d0ac4412424a84b45abdbde5fef58e83";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs robotnik-msgs geometry-msgs diagnostic-msgs ackermann-msgs std-msgs std-srvs tf roscpp message-generation nav-msgs diagnostic-updater ];
  propagatedBuildInputs = [ sensor-msgs robotnik-msgs geometry-msgs diagnostic-msgs ackermann-msgs std-msgs std-srvs tf roscpp message-runtime nav-msgs diagnostic-updater ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The agvs_robot_control package. Robot controller that interacts with Gazebo motor controllers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
