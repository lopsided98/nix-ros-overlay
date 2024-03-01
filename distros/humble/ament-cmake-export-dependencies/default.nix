
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-libraries }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-export-dependencies";
  version = "1.3.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/humble/ament_cmake_export_dependencies/1.3.8-1.tar.gz";
    name = "1.3.8-1.tar.gz";
    sha256 = "e79e2d0d1fefcf7dd7156ec51425e7b752ab7c06912819c44466b8c78e32f8b2";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-libraries ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-libraries ];

  meta = {
    description = ''The ability to export dependencies to downstream packages in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
