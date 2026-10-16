
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-constants, tobas-gamepad-core, tobas-msgs-adapter, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gamepad-ros";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gamepad_ros/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "296ac7d826b9eedc49a0c5ee96586c8b6095691e63dfc8b53de50c9279d08776";
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
