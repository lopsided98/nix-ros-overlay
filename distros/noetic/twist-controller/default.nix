
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cartesian-interface, catkin, controller-interface, dynamic-reconfigure, geometry-msgs, hardware-interface, realtime-tools, roscpp }:
buildRosPackage {
  pname = "ros-noetic-twist-controller";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_controllers_cartesian-release/archive/release/noetic/twist_controller/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "1ce2d703821975d1535d64e9e5c182991f4e004fa5ebca3613468eb1521c3494";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cartesian-interface controller-interface dynamic-reconfigure geometry-msgs hardware-interface realtime-tools roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ros_control controller accepting Cartesian twist messages in order to move a robot manipulator.
    It uses a Cartesian interface to the robot, so that the robot hardware takes care about
    doing the inverse kinematics. This could be used e.g. for visual servoing applications.'';
    license = with lib.licenses; [ asl20 ];
  };
}
