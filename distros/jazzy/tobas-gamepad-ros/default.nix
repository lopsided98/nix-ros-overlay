
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-constants, tobas-gamepad-core, tobas-msgs-adapter, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gamepad-ros";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gamepad_ros/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "18a11e4b1a80ec21de7174164347d0667ccf367a718a3edd534af58ae2be2609";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-constants tobas-gamepad-core tobas-msgs-adapter tobas-node ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS nodes for tobas_gamepad_core";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
