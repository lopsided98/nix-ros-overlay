
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-index-python, python3Packages, rclpy, xacro }:
buildRosPackage {
  pname = "ros-kilted-launch-param-builder";
  version = "0.1.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_param_builder-release/archive/release/kilted/launch_param_builder/0.1.1-4.tar.gz";
    name = "0.1.1-4.tar.gz";
    sha256 = "0d4f01457fecf6630cb1a5a82fdd6384a68a3f86d1f11641bfb196de92e6d3fd";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python python3Packages.pyyaml rclpy xacro ];

  meta = {
    description = "Python library for loading parameters in launch files";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
