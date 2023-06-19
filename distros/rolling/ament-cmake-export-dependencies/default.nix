
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-libraries }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-export-dependencies";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_export_dependencies/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "722ffe9f5156afa0c6749e17d7bb484416686a0b91c3fd089f914824f8593c5a";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-libraries ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-libraries ];

  meta = {
    description = ''The ability to export dependencies to downstream packages in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
