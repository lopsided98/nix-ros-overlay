
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-iron-ros2-control-test-assets";
  version = "3.24.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/iron/ros2_control_test_assets/3.24.0-1.tar.gz";
    name = "3.24.0-1.tar.gz";
    sha256 = "49ce65ae403a6df7db78fbc6b646d0a81ee7e37c756370e201104591a0ba83a5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The package provides shared test resources for ros2_control stack'';
    license = with lib.licenses; [ asl20 ];
  };
}
