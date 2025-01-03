
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-index-python, python3Packages, rclpy, xacro }:
buildRosPackage {
  pname = "ros-rolling-launch-param-builder";
  version = "0.1.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_param_builder-release/archive/release/rolling/launch_param_builder/0.1.1-3.tar.gz";
    name = "0.1.1-3.tar.gz";
    sha256 = "399e0c8b2cf4104cb87c5406a499f11e555e5b5d6163f0c2700f84de1b5ad25e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python python3Packages.pyyaml rclpy xacro ];

  meta = {
    description = "Python library for loading parameters in launch files";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
