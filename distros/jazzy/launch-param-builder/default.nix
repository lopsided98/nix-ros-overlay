
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-index-python, python3Packages, pythonPackages, rclpy, xacro }:
buildRosPackage {
  pname = "ros-jazzy-launch-param-builder";
  version = "0.1.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_param_builder-release/archive/release/jazzy/launch_param_builder/0.1.1-4.tar.gz";
    name = "0.1.1-4.tar.gz";
    sha256 = "e9071e4c7dff4ecf4379fd83a423575561125e2d00acb6ff627a57d252d1435c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python python3Packages.pyyaml rclpy xacro ];

  meta = {
    description = "Python library for loading parameters in launch files";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
