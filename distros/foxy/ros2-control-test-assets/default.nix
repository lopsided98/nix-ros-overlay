
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto }:
buildRosPackage {
  pname = "ros-foxy-ros2-control-test-assets";
  version = "0.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/foxy/ros2_control_test_assets/0.1.6-1.tar.gz";
    name = "0.1.6-1.tar.gz";
    sha256 = "095e4b47a5e4964e6de046fac70e86b2ab2c0524fd270d6c679e1515c0dc30dd";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The package provides shared test resources for ros2_control stack'';
    license = with lib.licenses; [ asl20 ];
  };
}
