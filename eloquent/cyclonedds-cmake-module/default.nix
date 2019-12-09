
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-common, ament-cmake, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-cyclonedds-cmake-module";
  version = "0.4.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_cyclonedds-release/archive/release/eloquent/cyclonedds_cmake_module/0.4.4-1.tar.gz";
    name = "0.4.4-1.tar.gz";
    sha256 = "bbd79033400e4c27ca787f905eca01c0c0b45ab01cecb2167f184119a01875f0";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ament-lint-auto ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provide CMake module to find Eclipse CycloneDDS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
