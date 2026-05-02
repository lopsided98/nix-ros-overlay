
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-index-python, python3Packages, rclpy, xacro }:
buildRosPackage {
  pname = "ros-rolling-launch-param-builder";
  version = "0.1.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_param_builder-release/archive/release/rolling/launch_param_builder/0.1.1-4.tar.gz";
    name = "0.1.1-4.tar.gz";
    sha256 = "afc5da48f8d948552d3d3df6a597e44e7a1a2977abb53ecf2d95e65647eec55f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python python3Packages.pyyaml rclpy xacro ];

  meta = {
    description = "Python library for loading parameters in launch files";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
