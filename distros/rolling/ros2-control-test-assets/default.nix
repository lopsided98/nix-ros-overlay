
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-ros2-control-test-assets";
  version = "4.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/rolling/ros2_control_test_assets/4.5.0-2.tar.gz";
    name = "4.5.0-2.tar.gz";
    sha256 = "8d701f44c8ebb92099f7f48a012347f92e9fa5ada72d46386bd7e0382312c9c2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The package provides shared test resources for ros2_control stack'';
    license = with lib.licenses; [ asl20 ];
  };
}
