
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-gamepad-core, tobas-gamepad-ros }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gamepad";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gamepad/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "ad3045eadc0fc54e8bfb96483b1aefa85cc3463a399bc613698b2be4c5277105";
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
