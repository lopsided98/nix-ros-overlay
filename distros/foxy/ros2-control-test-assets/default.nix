
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto }:
buildRosPackage {
  pname = "ros-foxy-ros2-control-test-assets";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/foxy/ros2_control_test_assets/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "b1b96e096dc5c62440c7aa6295374c76c8d6a13814a244b0609b55979222c95a";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The package provides shared test resources for ros2_control stack'';
    license = with lib.licenses; [ asl20 ];
  };
}
