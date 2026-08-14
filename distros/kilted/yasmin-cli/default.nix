
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, rclpy, ros2cli, yasmin, yasmin-editor, yasmin-factory, yasmin-plugins-manager, yasmin-viewer }:
buildRosPackage {
  pname = "ros-kilted-yasmin-cli";
  version = "6.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/kilted/yasmin_cli/6.1.1-1.tar.gz";
    name = "6.1.1-1.tar.gz";
    sha256 = "b8788989a8ad9a00ec08775adff2333b2395e307fc73d3d20f22a49d7c838eba";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-index-python rclpy ros2cli yasmin yasmin-editor yasmin-factory yasmin-plugins-manager yasmin-viewer ];

  meta = {
    description = "CLI tools for inspecting YASMIN states and metadata.";
    license = with lib.licenses; [ asl20 ];
  };
}
