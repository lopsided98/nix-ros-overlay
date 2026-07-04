
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-version";
  version = "2.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_version/2.9.1-1.tar.gz";
    name = "2.9.1-1.tar.gz";
    sha256 = "df9756339d7d7d1d224703209c70e3858b2e0e03e9cc7f64b6721c2e9b704545";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "The ability to override the exported package version in the ament buildsystem.";
    license = with lib.licenses; [ asl20 ];
  };
}
