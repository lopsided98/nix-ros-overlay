
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, composition-interfaces, launch, lifecycle-msgs, osrf-pycommon, python3Packages, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-launch-ros";
  version = "0.26.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_ros-release/archive/release/jazzy/launch_ros/0.26.5-2.tar.gz";
    name = "0.26.5-2.tar.gz";
    sha256 = "817b666ed1964e047c415e7b9fbaafad1843b087cbefccf8a8ba4a2ad56e3099";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python composition-interfaces launch lifecycle-msgs osrf-pycommon python3Packages.importlib-metadata python3Packages.pyyaml rclpy ];

  meta = {
    description = "ROS specific extensions to the launch tool.";
    license = with lib.licenses; [ asl20 ];
  };
}
