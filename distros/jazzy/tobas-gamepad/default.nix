
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-gamepad-core, tobas-gamepad-ros }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gamepad";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gamepad/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "231466c3ed5fde8d8574bff2a0f5e5cb28bcd664b70c1782d46d2402f96caee7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-gamepad-core tobas-gamepad-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Aggregation package for gamepad input and ROS 2 integration.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
