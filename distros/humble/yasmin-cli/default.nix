
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, rclpy, ros2cli, yasmin, yasmin-factory, yasmin-plugins-manager }:
buildRosPackage {
  pname = "ros-humble-yasmin-cli";
  version = "6.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/humble/yasmin_cli/6.0.0-1.tar.gz";
    name = "6.0.0-1.tar.gz";
    sha256 = "c0f32768bbd64a55fd66d72e1fbdc2d1441720c497c6479db02a03d35ccc3991";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-index-python rclpy ros2cli yasmin yasmin-factory yasmin-plugins-manager ];

  meta = {
    description = "CLI tools for inspecting YASMIN states and metadata.";
    license = with lib.licenses; [ asl20 ];
  };
}
