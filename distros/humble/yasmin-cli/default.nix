
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, rclpy, ros2cli, yasmin, yasmin-editor, yasmin-factory, yasmin-plugins-manager, yasmin-viewer }:
buildRosPackage {
  pname = "ros-humble-yasmin-cli";
  version = "6.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/humble/yasmin_cli/6.1.2-1.tar.gz";
    name = "6.1.2-1.tar.gz";
    sha256 = "04c50f8e0028a45074dda5d5d51e31d7f7db8ab16894a49e4e55aa595de0b621";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-index-python rclpy ros2cli yasmin yasmin-editor yasmin-factory yasmin-plugins-manager yasmin-viewer ];

  meta = {
    description = "CLI tools for inspecting YASMIN states and metadata.";
    license = with lib.licenses; [ asl20 ];
  };
}
