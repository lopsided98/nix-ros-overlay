
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-index-python, python3Packages, pythonPackages, rclpy, xacro }:
buildRosPackage {
  pname = "ros-rolling-launch-param-builder";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_param_builder-release/archive/release/rolling/launch_param_builder/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "3054b584def08d6227e665a6c5a2803237e707abed385e442a07b253a1f78394";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python python3Packages.pyyaml rclpy xacro ];

  meta = {
    description = ''Python library for loading parameters in launch files'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
