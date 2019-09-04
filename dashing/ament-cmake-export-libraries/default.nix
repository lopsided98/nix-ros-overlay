
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-dashing-ament-cmake-export-libraries";
  version = "0.7.3-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ament_cmake-release/archive/release/dashing/ament_cmake_export_libraries/0.7.3-1.tar.gz;
    sha256 = "6e32f89db5364285db47a8ba1904e1c0fc1653155bcb8683526eeb7e15bb386d";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to export libraries to downstream packages in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
