
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, lanelet2-core, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-rolling-lanelet2-maps";
  version = "1.2.1-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/rolling/lanelet2_maps/1.2.1-7.tar.gz";
    name = "1.2.1-7.tar.gz";
    sha256 = "c75abf4295fc2f56862cfd919b23a27ae4e994a0d8cc39a85e1904b615eb3052";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  propagatedBuildInputs = [ lanelet2-core mrt-cmake-modules ];
  nativeBuildInputs = [ ament-cmake-core mrt-cmake-modules ];

  meta = {
    description = "Example maps in the lanelet2-format";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
