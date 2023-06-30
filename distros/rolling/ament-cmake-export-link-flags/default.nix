
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-export-link-flags";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_export_link_flags/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "ad34e257c6d46d70b1e2e086fb40b63154b5c1a1747003bae2c59107475e1510";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to export link flags to downstream packages in the ament buildsystem.'';
    license = with lib.licenses; [ asl20 ];
  };
}
