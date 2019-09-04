
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-export-libraries, ament-cmake-core }:
buildRosPackage {
  pname = "ros-dashing-ament-cmake-export-interfaces";
  version = "0.7.3-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ament_cmake-release/archive/release/dashing/ament_cmake_export_interfaces/0.7.3-1.tar.gz;
    sha256 = "cc7265eeb9ebd79a8c7986c7895d989efe42c3b0da4d20aac43877c36eb053c9";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-export-libraries ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to export interfaces to downstream packages in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
