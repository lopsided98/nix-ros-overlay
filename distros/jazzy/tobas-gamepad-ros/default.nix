
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-constants, tobas-gamepad-core, tobas-msgs-adapter, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gamepad-ros";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gamepad_ros/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "2a1e440e451119fa5f8c10f38968226621fbfde3e15b28a5a4e08dcec70f5a7c";
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
