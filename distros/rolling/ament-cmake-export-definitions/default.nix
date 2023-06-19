
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-export-definitions";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_export_definitions/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "dd0693fdab190b90172747107d44b6bd40de4a699dbd1510c8cbd42247cee93a";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to export definitions to downstream packages in the ament buildsystem.'';
    license = with lib.licenses; [ asl20 ];
  };
}
