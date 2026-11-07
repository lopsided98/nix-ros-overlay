
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, ament-lint-auto, ament-lint-common, ros2cli }:
buildRosPackage {
  pname = "ros-jazzy-rclgd-cli";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/Ozuba/rclgd-release/archive/release/jazzy/rclgd_cli/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "6056332fc04d189fc7d8a263660d73c7d1d08e6630f9e15124b791f8c0560301";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python ros2cli ];

  meta = {
    description = "ros2cli extension for rclgd: create/edit Godot packages and manage the Godot runtime";
    license = with lib.licenses; [ mit ];
  };
}
