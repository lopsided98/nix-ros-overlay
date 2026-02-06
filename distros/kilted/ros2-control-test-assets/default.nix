
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-kilted-ros2-control-test-assets";
  version = "5.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/kilted/ros2_control_test_assets/5.12.0-1.tar.gz";
    name = "5.12.0-1.tar.gz";
    sha256 = "06abacb9eea27ac6dbcaefc081b865599495601d5715c872256c480cb49a76cc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shared test resources for ros2_control stack";
    license = with lib.licenses; [ asl20 ];
  };
}
