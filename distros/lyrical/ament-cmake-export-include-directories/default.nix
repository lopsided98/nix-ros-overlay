
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-lyrical-ament-cmake-export-include-directories";
  version = "2.8.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/lyrical/ament_cmake_export_include_directories/2.8.9-1.tar.gz";
    name = "2.8.9-1.tar.gz";
    sha256 = "814e256de29342d921c54ab20f09c181e2f7d0c00fb5c27d690ce3da67b5c0f3";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "The ability to export include directories to downstream packages in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
