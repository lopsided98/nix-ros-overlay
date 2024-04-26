
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-libraries }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-export-dependencies";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_export_dependencies/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "3778456c39b3fdecd06f75057353a523eb6bf14048b985268d456a42e71e1f2e";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-libraries ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-libraries ];

  meta = {
    description = "The ability to export dependencies to downstream packages in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
