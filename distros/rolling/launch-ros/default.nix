
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, composition-interfaces, launch, lifecycle-msgs, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-rolling-launch-ros";
  version = "0.29.3-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_ros-release/archive/release/rolling/launch_ros/0.29.3-4.tar.gz";
    name = "0.29.3-4.tar.gz";
    sha256 = "9e6ef8ffc3e1b5a4f70a76867bde3426ce427df914512a6550fd468bcfd240bb";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python composition-interfaces launch lifecycle-msgs python3Packages.importlib-metadata python3Packages.osrf-pycommon python3Packages.pyyaml rclpy ];

  meta = {
    description = "ROS specific extensions to the launch tool.";
    license = with lib.licenses; [ asl20 ];
  };
}
