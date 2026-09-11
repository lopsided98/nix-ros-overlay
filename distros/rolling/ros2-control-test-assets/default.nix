
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros2-control-cmake }:
buildRosPackage {
  pname = "ros-rolling-ros2-control-test-assets";
  version = "6.10.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/rolling/ros2_control_test_assets/6.10.1-1.tar.gz";
    name = "6.10.1-1.tar.gz";
    sha256 = "196b25e50e60490390923c77a3bfe6580b5e6c0e339125a356b6ecc6469c2106";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-control-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shared test resources for ros2_control stack";
    license = with lib.licenses; [ asl20 ];
  };
}
