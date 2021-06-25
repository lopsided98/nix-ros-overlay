
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cartesian-interface, catkin, controller-interface, dynamic-reconfigure, geometry-msgs, hardware-interface, realtime-tools, roscpp }:
buildRosPackage {
  pname = "ros-noetic-twist-controller";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_controllers_cartesian-release/archive/release/noetic/twist_controller/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "253ef7df1ede94caf0c028ca4ab17196216aceb3bea364285a6ea837424c95d4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cartesian-interface controller-interface dynamic-reconfigure geometry-msgs hardware-interface realtime-tools roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ros_control controller accepting Cartesian twist messages in order to move a robot manipulator.
    It uses a Cartesian interface to the robot, so that the robot hardware takes care about
    doing the inverse kinematics. This could be used e.g. for visual servoing applications.'';
    license = with lib.licenses; [ asl20 ];
  };
}
