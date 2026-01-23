
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-libraries }:
buildRosPackage {
  pname = "ros-kilted-ament-cmake-export-interfaces";
  version = "2.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/kilted/ament_cmake_export_interfaces/2.7.4-1.tar.gz";
    name = "2.7.4-1.tar.gz";
    sha256 = "bec869a9bea7617a4f1b721abc2320e9692d298a1391975fbc4e1865ee614954";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-export-libraries ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-export-libraries ];

  meta = {
    description = "The ability to export interfaces to downstream packages in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
