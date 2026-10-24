
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-constants, tobas-gamepad-core, tobas-msgs-adapter, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gamepad-ros";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gamepad_ros/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "df33bd7e82a7920a2b9daf00e6dab0312d5d4533be14c1007f0a8b25b4c27aa9";
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
