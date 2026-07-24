
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, ament-lint-auto, ament-lint-common, ros2cli }:
buildRosPackage {
  pname = "ros-jazzy-rclgd-cli";
  version = "2.1.0-r3";

  src = fetchurl {
    url = "https://github.com/Ozuba/rclgd-release/archive/release/jazzy/rclgd_cli/2.1.0-3.tar.gz";
    name = "2.1.0-3.tar.gz";
    sha256 = "5bf8eb9bbcb1f331da573ec4bb6bde70d95435879f9aa0a42d2fc8f8019903cf";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python ros2cli ];

  meta = {
    description = "ros2cli extension for rclgd: create/edit Godot packages and manage the Godot runtime";
    license = with lib.licenses; [ mit ];
  };
}
