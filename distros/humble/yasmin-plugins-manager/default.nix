
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, python3Packages, rclpy, yasmin, yasmin-factory }:
buildRosPackage {
  pname = "ros-humble-yasmin-plugins-manager";
  version = "6.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/humble/yasmin_plugins_manager/6.0.0-1.tar.gz";
    name = "6.0.0-1.tar.gz";
    sha256 = "1a76f6cf8d52ca7ffccf20e8c8da4e338d0efe84be749ed947fa9fe38204f023";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-index-python python3Packages.lxml python3Packages.pyyaml rclpy yasmin yasmin-factory ];

  meta = {
    description = "Plugin discovery and caching for YASMIN states.";
    license = with lib.licenses; [ asl20 ];
  };
}
