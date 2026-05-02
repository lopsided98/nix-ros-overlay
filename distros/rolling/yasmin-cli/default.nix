
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, rclpy, ros2cli, yasmin, yasmin-factory, yasmin-plugins-manager }:
buildRosPackage {
  pname = "ros-rolling-yasmin-cli";
  version = "5.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/rolling/yasmin_cli/5.0.0-2.tar.gz";
    name = "5.0.0-2.tar.gz";
    sha256 = "8f9fe19adcc3260c8bdd40728081440b721f3c9c262b8e8bf04458d6e88cedf2";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-index-python rclpy ros2cli yasmin yasmin-factory yasmin-plugins-manager ];

  meta = {
    description = "CLI tools for inspecting YASMIN states and metadata.";
    license = with lib.licenses; [ "GPL-3.0" ];
  };
}
