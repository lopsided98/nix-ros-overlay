
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-ros2-control-test-assets";
  version = "2.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/humble/ros2_control_test_assets/2.11.0-1.tar.gz";
    name = "2.11.0-1.tar.gz";
    sha256 = "4df04edfba5a96d2d4bca31c3d730d8490477fbad8c2e21950cd0d67f66c0223";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The package provides shared test resources for ros2_control stack'';
    license = with lib.licenses; [ asl20 ];
  };
}
