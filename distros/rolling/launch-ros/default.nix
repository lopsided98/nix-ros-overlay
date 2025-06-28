
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, composition-interfaces, launch, lifecycle-msgs, osrf-pycommon, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-rolling-launch-ros";
  version = "0.29.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_ros-release/archive/release/rolling/launch_ros/0.29.1-1.tar.gz";
    name = "0.29.1-1.tar.gz";
    sha256 = "eb5ae9ddea550d9250e31cfab6d1a666ddd6c0c3692f00514cc3c1ad3b7b18f6";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python composition-interfaces launch lifecycle-msgs osrf-pycommon python3Packages.importlib-metadata python3Packages.pyyaml rclpy ];

  meta = {
    description = "ROS specific extensions to the launch tool.";
    license = with lib.licenses; [ asl20 ];
  };
}
