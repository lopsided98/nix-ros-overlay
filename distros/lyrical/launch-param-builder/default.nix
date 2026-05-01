
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-index-python, python3Packages, rclpy, xacro }:
buildRosPackage {
  pname = "ros-lyrical-launch-param-builder";
  version = "0.1.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_param_builder-release/archive/release/lyrical/launch_param_builder/0.1.1-5.tar.gz";
    name = "0.1.1-5.tar.gz";
    sha256 = "1fcb7f6085ad6dd52c595af8a88b8fc03221216453f3afebb20a071f1ee2ca30";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python python3Packages.pyyaml rclpy xacro ];

  meta = {
    description = "Python library for loading parameters in launch files";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
