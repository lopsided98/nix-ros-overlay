
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, rclpy, smach, smach-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-rolling-smach-ros";
  version = "3.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/executive_smach-release/archive/release/rolling/smach_ros/3.0.3-2.tar.gz";
    name = "3.0.3-2.tar.gz";
    sha256 = "f8601c9bfb1491289c168319d11cf05050f51831fc088184d4f6b3df281f0862";
  };

  buildType = "ament_python";
  buildInputs = [ ament-cmake ament-cmake-python ];
  propagatedBuildInputs = [ rclpy smach smach-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "The smach_ros package contains extensions for the SMACH library to
    integrate it tightly with ROS.  For example, SMACH-ROS can call
    ROS services, listen to ROS topics, and integrate
    with <a href=\"http://www.ros.org/wiki/actionlib\">actionlib</a>
    both as a client, and a provider of action servers.  SMACH is a
    new library that takes advantage of very old concepts in order to
    quickly create robust robot behavior with maintainable and modular
    code.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
