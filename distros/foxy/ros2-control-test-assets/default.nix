
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-foxy-ros2-control-test-assets";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/foxy/ros2_control_test_assets/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "6941f7128b9564cbe333a9e1995c6ca0d06c7b0b0e97d165328aad1d21459b8a";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The package provides shared test resources for ros2_control stack'';
    license = with lib.licenses; [ asl20 ];
  };
}
