
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto }:
buildRosPackage {
  pname = "ros-galactic-ros2-control-test-assets";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/galactic/ros2_control_test_assets/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "67ba677e3968233f97eb5052343ab1be1cbeed746e8f84e853193458e63b6ac0";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The package provides shared test resources for ros2_control stack'';
    license = with lib.licenses; [ asl20 ];
  };
}
