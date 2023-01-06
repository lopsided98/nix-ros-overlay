
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-libraries }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-export-targets";
  version = "1.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_export_targets/1.5.2-1.tar.gz";
    name = "1.5.2-1.tar.gz";
    sha256 = "dc9a6b387fb07bcce4041f07c8534574356d3d7bc32bb4f621f283514ca6beb8";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-export-libraries ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-export-libraries ];

  meta = {
    description = ''The ability to export targets to downstream packages in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
