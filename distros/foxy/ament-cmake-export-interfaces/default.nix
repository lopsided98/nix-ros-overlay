
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-libraries }:
buildRosPackage {
  pname = "ros-foxy-ament-cmake-export-interfaces";
  version = "0.9.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/foxy/ament_cmake_export_interfaces/0.9.8-1.tar.gz";
    name = "0.9.8-1.tar.gz";
    sha256 = "360eb3289f82510fd285187967c9d68583a7e16ba6ece114dd4b8bc81fd0a04f";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-export-libraries ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to export interfaces to downstream packages in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
