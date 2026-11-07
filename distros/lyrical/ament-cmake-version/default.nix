
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-lyrical-ament-cmake-version";
  version = "2.8.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/lyrical/ament_cmake_version/2.8.9-1.tar.gz";
    name = "2.8.9-1.tar.gz";
    sha256 = "d93d3846c942a626b169399402c9b2ed6b237c3bd5f31205263ae519be32dab7";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "The ability to override the exported package version in the ament buildsystem.";
    license = with lib.licenses; [ asl20 ];
  };
}
