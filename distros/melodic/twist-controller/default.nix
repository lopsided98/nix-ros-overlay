
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cartesian-interface, catkin, controller-interface, dynamic-reconfigure, geometry-msgs, hardware-interface, realtime-tools, roscpp }:
buildRosPackage {
  pname = "ros-melodic-twist-controller";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_controllers_cartesian-release/archive/release/melodic/twist_controller/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "065830f775aa9cf86cf47c7a63714a31e3aa58688b0f1144c4c028f96d3eac2c";
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
