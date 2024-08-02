
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cartesian-interface, catkin, controller-interface, dynamic-reconfigure, geometry-msgs, hardware-interface, pluginlib, realtime-tools, roscpp }:
buildRosPackage {
  pname = "ros-noetic-twist-controller";
  version = "0.1.7-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_controllers_cartesian-release/archive/release/noetic/twist_controller/0.1.7-1.tar.gz";
    name = "0.1.7-1.tar.gz";
    sha256 = "894fd079d790bdc7eec7024edda899a93e20e3842735c2de3a388bae4fdabfb0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cartesian-interface controller-interface dynamic-reconfigure geometry-msgs hardware-interface pluginlib realtime-tools roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "A ros_control controller accepting Cartesian twist messages in order to move a robot manipulator.
    It uses a Cartesian interface to the robot, so that the robot hardware takes care about
    doing the inverse kinematics. This could be used e.g. for visual servoing applications.";
    license = with lib.licenses; [ asl20 ];
  };
}
