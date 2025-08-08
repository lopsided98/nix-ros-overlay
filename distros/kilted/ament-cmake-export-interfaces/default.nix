
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-libraries }:
buildRosPackage {
  pname = "ros-kilted-ament-cmake-export-interfaces";
  version = "2.7.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/kilted/ament_cmake_export_interfaces/2.7.3-2.tar.gz";
    name = "2.7.3-2.tar.gz";
    sha256 = "cbf92aaef7f25683c698cf082cce77faa855189b2a52930859d74f92fec14302";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-export-libraries ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-export-libraries ];

  meta = {
    description = "The ability to export interfaces to downstream packages in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
