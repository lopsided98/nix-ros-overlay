
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-libraries }:
buildRosPackage {
  pname = "ros-galactic-ament-cmake-export-targets";
  version = "1.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/galactic/ament_cmake_export_targets/1.1.4-1.tar.gz";
    name = "1.1.4-1.tar.gz";
    sha256 = "73b6f256322e7f768293a204f59ba7a1a2ee21b9b4b4785a76aa07fc25b2b360";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-export-libraries ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to export targets to downstream packages in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
