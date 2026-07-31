
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, rclpy, ros2cli, yasmin, yasmin-editor, yasmin-factory, yasmin-plugins-manager, yasmin-viewer }:
buildRosPackage {
  pname = "ros-rolling-yasmin-cli";
  version = "6.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/rolling/yasmin_cli/6.1.0-2.tar.gz";
    name = "6.1.0-2.tar.gz";
    sha256 = "d574729f3d27cda485763fc60e5e3a07afe749fad84c2606b3eea8f3d96e2d21";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-index-python rclpy ros2cli yasmin yasmin-editor yasmin-factory yasmin-plugins-manager yasmin-viewer ];

  meta = {
    description = "CLI tools for inspecting YASMIN states and metadata.";
    license = with lib.licenses; [ asl20 ];
  };
}
