
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-lyrical-ros2-control-test-assets";
  version = "6.7.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/lyrical/ros2_control_test_assets/6.7.0-3.tar.gz";
    name = "6.7.0-3.tar.gz";
    sha256 = "812a5dd83cd260cf4adce022e047385ed0b2ca54d22a8b23b18f9630e0a3d308";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shared test resources for ros2_control stack";
    license = with lib.licenses; [ asl20 ];
  };
}
