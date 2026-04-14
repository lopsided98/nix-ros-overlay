
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, python3Packages, rclpy, yasmin, yasmin-factory }:
buildRosPackage {
  pname = "ros-rolling-yasmin-plugins-manager";
  version = "5.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/rolling/yasmin_plugins_manager/5.0.0-1.tar.gz";
    name = "5.0.0-1.tar.gz";
    sha256 = "6e407af6486471b775ea0925933de0380c73b6f66267a6a2dbd7978e73a90978";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-index-python python3Packages.lxml python3Packages.pyyaml rclpy yasmin yasmin-factory ];

  meta = {
    description = "Plugin discovery and caching for YASMIN states.";
    license = with lib.licenses; [ "GPL-3.0" ];
  };
}
