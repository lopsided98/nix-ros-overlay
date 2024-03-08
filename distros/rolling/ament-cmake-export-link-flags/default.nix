
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-export-link-flags";
  version = "2.3.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_export_link_flags/2.3.2-3.tar.gz";
    name = "2.3.2-3.tar.gz";
    sha256 = "fbcd6148c3f344ca0745572e81cc5dca583e2ae98931fd4f8400f8641d1226b9";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to export link flags to downstream packages in the ament buildsystem.'';
    license = with lib.licenses; [ asl20 ];
  };
}
