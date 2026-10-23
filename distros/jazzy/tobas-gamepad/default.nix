
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-gamepad-core, tobas-gamepad-ros }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gamepad";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gamepad/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "c3852389fe168aa3deccdc6b47aeeb209fde6b8abe8e203f50f5a2253a5583a4";
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
