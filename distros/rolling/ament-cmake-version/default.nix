
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-version";
  version = "2.9.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_version/2.9.3-1.tar.gz";
    name = "2.9.3-1.tar.gz";
    sha256 = "a16f34542918aa1a0675d12d0067b9eb51af8fc130f455e4a848bef9d6c7e4c4";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "The ability to override the exported package version in the ament buildsystem.";
    license = with lib.licenses; [ asl20 ];
  };
}
