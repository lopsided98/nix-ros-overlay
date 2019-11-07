
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-cmake, ament-lint-common }:
buildRosPackage {
  pname = "ros-dashing-cyclonedds-cmake-module";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_cyclonedds-release/archive/release/dashing/cyclonedds_cmake_module/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "a81d791e39459b58625d3bb4a4c4dfbb8ab3d64b0756ae94157fd836de1fda9e";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provide CMake module to find Eclipse CycloneDDS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
