
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-dashing-ament-cmake-export-link-flags";
  version = "0.7.3-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ament_cmake-release/archive/release/dashing/ament_cmake_export_link_flags/0.7.3-1.tar.gz;
    sha256 = "0fcfacd5f9c78b551cbd54e7524198acbc413979b2873b2d9ab2e9fb0c4afc1c";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to export link flags to downstream packages in the ament buildsystem.'';
    license = with lib.licenses; [ asl20 ];
  };
}
