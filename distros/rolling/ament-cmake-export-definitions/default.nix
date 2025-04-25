
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-export-definitions";
  version = "2.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_export_definitions/2.7.3-1.tar.gz";
    name = "2.7.3-1.tar.gz";
    sha256 = "ba00c20fba7caeb2f54cb8b2e71e2d2336c2a029df10deb9130ff04539cf262c";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "The ability to export definitions to downstream packages in the ament buildsystem.";
    license = with lib.licenses; [ asl20 ];
  };
}
