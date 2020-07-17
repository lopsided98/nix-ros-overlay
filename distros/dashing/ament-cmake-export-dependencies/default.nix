
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-libraries }:
buildRosPackage {
  pname = "ros-dashing-ament-cmake-export-dependencies";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/dashing/ament_cmake_export_dependencies/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "13bb21280d51700def5b8fcd700da8d0a722f716db41ba471cb3ed571c160670";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-libraries ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to export dependencies to downstream packages in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
