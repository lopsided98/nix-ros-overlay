
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, diagnostic-updater, geometry-msgs, nav-msgs, robotnik-msgs, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-summit-x-robot-control";
  version = "1.1.1";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/summit_x_sim-release/archive/release/kinetic/summit_x_robot_control/1.1.1-0.tar.gz";
    name = "1.1.1-0.tar.gz";
    sha256 = "956ff4fcb79a48c86900de082ebaffad54e7ebf32d41cb4503ebca8f2d0ec426";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater geometry-msgs nav-msgs robotnik-msgs roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Control the robot joints in all kinematic configurations, publishes odom topic and, 
	  if configured, also tf odom to base_link. Usually takes as input joystick commands 
	  and generates as outputs references for the gazebo controllers defined in summit_xl_control.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
