
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-export-definitions";
  version = "1.3.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/humble/ament_cmake_export_definitions/1.3.4-2.tar.gz";
    name = "1.3.4-2.tar.gz";
    sha256 = "41068c0a96bd1267d0568209ff70a7527fb5ecd72ac2eac700fd80c3fdf15934";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to export definitions to downstream packages in the ament buildsystem.'';
    license = with lib.licenses; [ asl20 ];
  };
}
