
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros2-control-cmake }:
buildRosPackage {
  pname = "ros-lyrical-ros2-control-test-assets";
  version = "6.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/lyrical/ros2_control_test_assets/6.9.0-1.tar.gz";
    name = "6.9.0-1.tar.gz";
    sha256 = "40ff874ecdc07b5e80d0f2ac325a29ac66bef69535a6b7a449b69a40e025bf58";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-control-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shared test resources for ros2_control stack";
    license = with lib.licenses; [ asl20 ];
  };
}
