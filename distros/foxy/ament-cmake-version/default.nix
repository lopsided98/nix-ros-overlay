
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-foxy-ament-cmake-version";
  version = "0.9.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/foxy/ament_cmake_version/0.9.10-1.tar.gz";
    name = "0.9.10-1.tar.gz";
    sha256 = "edbb6a5a0593612dd5df59e8bec07017351b592dd4477ea88a68fa74b7a33ea0";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to override the exported package version in the ament buildsystem.'';
    license = with lib.licenses; [ asl20 ];
  };
}
