
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-dashing-cyclonedds-cmake-module";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_cyclonedds-release/archive/release/dashing/cyclonedds_cmake_module/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "c972ceab084dd87835ba3bcadb08ce4388530ca53bbad4a7d97737205c9b9912";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provide CMake module to find Eclipse CycloneDDS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
