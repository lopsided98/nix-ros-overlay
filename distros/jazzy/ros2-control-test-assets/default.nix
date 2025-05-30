
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-ros2-control-test-assets";
  version = "4.31.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/jazzy/ros2_control_test_assets/4.31.0-1.tar.gz";
    name = "4.31.0-1.tar.gz";
    sha256 = "9f437d9ac279fdd51b8cd5262af6985eeb6f8541a991db9e496e8488bdede43d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shared test resources for ros2_control stack";
    license = with lib.licenses; [ asl20 ];
  };
}
