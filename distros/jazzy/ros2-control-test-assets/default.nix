
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-ros2-control-test-assets";
  version = "4.18.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/jazzy/ros2_control_test_assets/4.18.0-1.tar.gz";
    name = "4.18.0-1.tar.gz";
    sha256 = "558f81fb16e9cf2c00c787cb163c89c55930b89d4e585ea36a8490699ec566c5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The package provides shared test resources for ros2_control stack";
    license = with lib.licenses; [ asl20 ];
  };
}
