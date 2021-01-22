
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-libraries }:
buildRosPackage {
  pname = "ros-foxy-ament-cmake-export-targets";
  version = "0.9.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/foxy/ament_cmake_export_targets/0.9.8-1.tar.gz";
    name = "0.9.8-1.tar.gz";
    sha256 = "6773550aea6dd88a0d2bdae42d74a7e6408b643a243fe387a020af312e0bed22";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-export-libraries ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to export targets to downstream packages in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
