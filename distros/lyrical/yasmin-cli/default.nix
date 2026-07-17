
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, rclpy, ros2cli, yasmin, yasmin-factory, yasmin-plugins-manager }:
buildRosPackage {
  pname = "ros-lyrical-yasmin-cli";
  version = "6.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/lyrical/yasmin_cli/6.0.0-1.tar.gz";
    name = "6.0.0-1.tar.gz";
    sha256 = "c1a048e4146a886c4fe6e4846878e363c2fbd0e3069ad7a37baf192a9e6886e0";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-index-python rclpy ros2cli yasmin yasmin-factory yasmin-plugins-manager ];

  meta = {
    description = "CLI tools for inspecting YASMIN states and metadata.";
    license = with lib.licenses; [ asl20 ];
  };
}
