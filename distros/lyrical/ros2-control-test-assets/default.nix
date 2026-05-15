
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros2-control-cmake }:
buildRosPackage {
  pname = "ros-lyrical-ros2-control-test-assets";
  version = "6.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/lyrical/ros2_control_test_assets/6.7.1-1.tar.gz";
    name = "6.7.1-1.tar.gz";
    sha256 = "d2694500a986171e63a807296fca7c9b63e4efbd5d30a63c2f2648b9c377a1a1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-control-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shared test resources for ros2_control stack";
    license = with lib.licenses; [ asl20 ];
  };
}
