
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, rclpy, ros2cli, yasmin, yasmin-editor, yasmin-factory, yasmin-plugins-manager, yasmin-viewer }:
buildRosPackage {
  pname = "ros-jazzy-yasmin-cli";
  version = "6.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/jazzy/yasmin_cli/6.1.0-1.tar.gz";
    name = "6.1.0-1.tar.gz";
    sha256 = "147b37b0276cca035cef16f4703cb3c4096ea692ec3609f9255d92d04114be69";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-index-python rclpy ros2cli yasmin yasmin-editor yasmin-factory yasmin-plugins-manager yasmin-viewer ];

  meta = {
    description = "CLI tools for inspecting YASMIN states and metadata.";
    license = with lib.licenses; [ asl20 ];
  };
}
