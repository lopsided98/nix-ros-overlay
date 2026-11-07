
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros2-control-cmake }:
buildRosPackage {
  pname = "ros-lyrical-ros2-control-test-assets";
  version = "6.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/lyrical/ros2_control_test_assets/6.13.0-1.tar.gz";
    name = "6.13.0-1.tar.gz";
    sha256 = "677922891a92ecf91a28cc892f3904aa7aae77725782bbb633acf77a6d78c109";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-control-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shared test resources for ros2_control stack";
    license = with lib.licenses; [ asl20 ];
  };
}
