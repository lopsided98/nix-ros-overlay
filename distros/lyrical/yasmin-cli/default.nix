
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, rclpy, ros2cli, yasmin, yasmin-factory, yasmin-plugins-manager }:
buildRosPackage {
  pname = "ros-lyrical-yasmin-cli";
  version = "5.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/lyrical/yasmin_cli/5.0.0-3.tar.gz";
    name = "5.0.0-3.tar.gz";
    sha256 = "b649a044ad171220a5100b24c7d3379f8e0c17765c7ab03c3cb5025fe928067a";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-index-python rclpy ros2cli yasmin yasmin-factory yasmin-plugins-manager ];

  meta = {
    description = "CLI tools for inspecting YASMIN states and metadata.";
    license = with lib.licenses; [ "GPL-3.0" ];
  };
}
