
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros2-control-cmake }:
buildRosPackage {
  pname = "ros-rolling-ros2-control-test-assets";
  version = "6.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/rolling/ros2_control_test_assets/6.9.0-1.tar.gz";
    name = "6.9.0-1.tar.gz";
    sha256 = "8e0974c51c97fe31c86c6e2226e37b5f6d49baa440dbfc13890e377cc3c9ba59";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-control-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shared test resources for ros2_control stack";
    license = with lib.licenses; [ asl20 ];
  };
}
