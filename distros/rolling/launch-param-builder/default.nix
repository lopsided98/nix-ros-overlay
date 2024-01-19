
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-index-python, python3Packages, pythonPackages, rclpy, xacro }:
buildRosPackage {
  pname = "ros-rolling-launch-param-builder";
  version = "0.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_param_builder-release/archive/release/rolling/launch_param_builder/0.1.1-2.tar.gz";
    name = "0.1.1-2.tar.gz";
    sha256 = "1d5892fd11f1dee62da2f9d5663b0947165600453e45e3233f5321774db1fb81";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python python3Packages.pyyaml rclpy xacro ];

  meta = {
    description = ''Python library for loading parameters in launch files'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
