
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-libraries }:
buildRosPackage {
  pname = "ros-galactic-ament-cmake-export-dependencies";
  version = "1.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/galactic/ament_cmake_export_dependencies/1.1.6-1.tar.gz";
    name = "1.1.6-1.tar.gz";
    sha256 = "73247294ce82c3786c694ee4a2e04b9eab77751c8dcf7ac6d7e5133419ee30f4";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-libraries ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-libraries ];

  meta = {
    description = ''The ability to export dependencies to downstream packages in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
