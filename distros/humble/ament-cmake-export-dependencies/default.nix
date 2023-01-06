
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-libraries }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-export-dependencies";
  version = "1.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/humble/ament_cmake_export_dependencies/1.3.3-1.tar.gz";
    name = "1.3.3-1.tar.gz";
    sha256 = "1f26324067688fb38c2f6204c7cb827beb273b54c6680fe52ed31d772fc147a3";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-libraries ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-libraries ];

  meta = {
    description = ''The ability to export dependencies to downstream packages in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
