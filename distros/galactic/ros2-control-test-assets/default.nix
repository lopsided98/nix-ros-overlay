
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto }:
buildRosPackage {
  pname = "ros-galactic-ros2-control-test-assets";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/galactic/ros2_control_test_assets/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "d30480a4007072f5cfb4ff4c79be194b08baee06f50ccf85e122b6f6b73752fb";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The package provides shared test resources for ros2_control stack'';
    license = with lib.licenses; [ asl20 ];
  };
}
