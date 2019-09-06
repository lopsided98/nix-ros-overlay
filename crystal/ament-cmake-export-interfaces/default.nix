
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-export-libraries, ament-cmake-core }:
buildRosPackage {
  pname = "ros-crystal-ament-cmake-export-interfaces";
  version = "0.6.1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ament_cmake-release/archive/release/crystal/ament_cmake_export_interfaces/0.6.1-0.tar.gz;
    sha256 = "239e260cd706e537974809c2310e4f8368ff3e714dc9c31aae64d82f830bfd9d";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-export-libraries ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to export interfaces to downstream packages in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
