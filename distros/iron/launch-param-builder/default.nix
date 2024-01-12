
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-index-python, python3Packages, pythonPackages, rclpy, xacro }:
buildRosPackage {
  pname = "ros-iron-launch-param-builder";
  version = "0.1.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_param_builder-release/archive/release/iron/launch_param_builder/0.1.1-3.tar.gz";
    name = "0.1.1-3.tar.gz";
    sha256 = "cd61c49024a1dfbe5c6393dd7237feb1f2e8336b5ead2af69fd7b2fcceb79d3b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python python3Packages.pyyaml rclpy xacro ];

  meta = {
    description = ''Python library for loading parameters in launch files'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
