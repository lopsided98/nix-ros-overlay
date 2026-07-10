
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, python3Packages, rclpy, yasmin, yasmin-factory }:
buildRosPackage {
  pname = "ros-rolling-yasmin-plugins-manager";
  version = "6.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/rolling/yasmin_plugins_manager/6.0.0-1.tar.gz";
    name = "6.0.0-1.tar.gz";
    sha256 = "e8c83c8794162cfb80d6714f37e9344c2fd666f7f543d71ae2d7d12fcdff3dfe";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-index-python python3Packages.lxml python3Packages.pyyaml rclpy yasmin yasmin-factory ];

  meta = {
    description = "Plugin discovery and caching for YASMIN states.";
    license = with lib.licenses; [ asl20 ];
  };
}
