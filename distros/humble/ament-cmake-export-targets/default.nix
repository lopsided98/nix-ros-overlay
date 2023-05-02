
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-libraries }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-export-targets";
  version = "1.3.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/humble/ament_cmake_export_targets/1.3.4-2.tar.gz";
    name = "1.3.4-2.tar.gz";
    sha256 = "a0b015ffc727f3f40592652d4bdc8775c9307f384c8f67c4313c7166f0f7b848";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-export-libraries ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-export-libraries ];

  meta = {
    description = ''The ability to export targets to downstream packages in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
