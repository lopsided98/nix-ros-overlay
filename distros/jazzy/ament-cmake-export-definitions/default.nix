
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-jazzy-ament-cmake-export-definitions";
  version = "2.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/jazzy/ament_cmake_export_definitions/2.5.3-1.tar.gz";
    name = "2.5.3-1.tar.gz";
    sha256 = "c764e0087d54a7ff815e85000a08fd9edd544046bf8a577556f3188cdd955342";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "The ability to export definitions to downstream packages in the ament buildsystem.";
    license = with lib.licenses; [ asl20 ];
  };
}
