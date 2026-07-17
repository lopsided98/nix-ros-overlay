
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, rclpy, ros2cli, yasmin, yasmin-factory, yasmin-plugins-manager }:
buildRosPackage {
  pname = "ros-kilted-yasmin-cli";
  version = "6.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/kilted/yasmin_cli/6.0.0-1.tar.gz";
    name = "6.0.0-1.tar.gz";
    sha256 = "c7fe104f5dde09631b294bc60f6539de4b1db92ae8c0a97693a84bc540d630d1";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-index-python rclpy ros2cli yasmin yasmin-factory yasmin-plugins-manager ];

  meta = {
    description = "CLI tools for inspecting YASMIN states and metadata.";
    license = with lib.licenses; [ asl20 ];
  };
}
