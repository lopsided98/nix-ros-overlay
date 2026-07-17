
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-export-link-flags";
  version = "2.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_export_link_flags/2.9.1-1.tar.gz";
    name = "2.9.1-1.tar.gz";
    sha256 = "dcbb017a5224ee4a27c1ce324cf90e28322d1975264ca746a81c8a6fe558384c";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "The ability to export link flags to downstream packages in the ament buildsystem.";
    license = with lib.licenses; [ asl20 ];
  };
}
