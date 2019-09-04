
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-cmake, ament-lint-common }:
buildRosPackage {
  pname = "ros-dashing-cyclonedds-cmake-module";
  version = "0.4.0-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rmw_cyclonedds-release/archive/release/dashing/cyclonedds_cmake_module/0.4.0-1.tar.gz;
    sha256 = "095a7a34615ea9157ff686ae9a7a429a6ff908d9fd3dcdeba83966fff1858c7f";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provide CMake module to find Eclipse CycloneDDS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
