
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-ros2-control-test-assets";
  version = "2.52.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/humble/ros2_control_test_assets/2.52.1-1.tar.gz";
    name = "2.52.1-1.tar.gz";
    sha256 = "1712026487862ea2eb8ccaa62832485c6cd8cbcb289d338cd39c8a5f21354437";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The package provides shared test resources for ros2_control stack";
    license = with lib.licenses; [ asl20 ];
  };
}
