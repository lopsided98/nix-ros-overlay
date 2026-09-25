
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, python3Packages, rclpy, yasmin, yasmin-factory }:
buildRosPackage {
  pname = "ros-jazzy-yasmin-plugins-manager";
  version = "6.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/jazzy/yasmin_plugins_manager/6.1.2-1.tar.gz";
    name = "6.1.2-1.tar.gz";
    sha256 = "aa70a9e23229cad03c73204b5b9c74a7b05b6ec0ab3720a9f740a840de938b29";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-index-python python3Packages.lxml rclpy yasmin yasmin-factory ];

  meta = {
    description = "Plugin discovery and caching for YASMIN states.";
    license = with lib.licenses; [ asl20 ];
  };
}
