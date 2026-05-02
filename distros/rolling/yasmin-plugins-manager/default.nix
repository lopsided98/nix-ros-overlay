
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, python3Packages, rclpy, yasmin, yasmin-factory }:
buildRosPackage {
  pname = "ros-rolling-yasmin-plugins-manager";
  version = "5.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/rolling/yasmin_plugins_manager/5.0.0-2.tar.gz";
    name = "5.0.0-2.tar.gz";
    sha256 = "88261626e2d553198588919e4f1772caf95b61458aabc46fbedeae506c16dc3d";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-index-python python3Packages.lxml python3Packages.pyyaml rclpy yasmin yasmin-factory ];

  meta = {
    description = "Plugin discovery and caching for YASMIN states.";
    license = with lib.licenses; [ "GPL-3.0" ];
  };
}
