
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-ros2-control-test-assets";
  version = "4.27.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/rolling/ros2_control_test_assets/4.27.0-1.tar.gz";
    name = "4.27.0-1.tar.gz";
    sha256 = "0e315bf6296bbff895eb6af67386c2a7d30c85cd52d2a634ec1bad9ea7a35f0d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The package provides shared test resources for ros2_control stack";
    license = with lib.licenses; [ asl20 ];
  };
}
