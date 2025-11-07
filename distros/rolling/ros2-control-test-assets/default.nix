
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-ros2-control-test-assets";
  version = "6.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/rolling/ros2_control_test_assets/6.0.1-1.tar.gz";
    name = "6.0.1-1.tar.gz";
    sha256 = "d6d946eb1dd7be29f4f8add1cac03f31fec7432531d431ec2fd25555ac7cc575";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shared test resources for ros2_control stack";
    license = with lib.licenses; [ asl20 ];
  };
}
