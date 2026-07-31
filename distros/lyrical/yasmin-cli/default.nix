
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, rclpy, ros2cli, yasmin, yasmin-editor, yasmin-factory, yasmin-plugins-manager, yasmin-viewer }:
buildRosPackage {
  pname = "ros-lyrical-yasmin-cli";
  version = "6.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/lyrical/yasmin_cli/6.1.0-3.tar.gz";
    name = "6.1.0-3.tar.gz";
    sha256 = "0d49f74c956b17ab1606290e56627cf9ac265e9d33726fb890f2bb8ae3aa21a6";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-index-python rclpy ros2cli yasmin yasmin-editor yasmin-factory yasmin-plugins-manager yasmin-viewer ];

  meta = {
    description = "CLI tools for inspecting YASMIN states and metadata.";
    license = with lib.licenses; [ asl20 ];
  };
}
