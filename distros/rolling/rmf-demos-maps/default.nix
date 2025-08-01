
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rmf-building-map-tools, ros2run }:
buildRosPackage {
  pname = "ros-rolling-rmf-demos-maps";
  version = "2.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/rolling/rmf_demos_maps/2.8.0-1.tar.gz";
    name = "2.8.0-1.tar.gz";
    sha256 = "a1469787936c2a63ded9d2898e5394fe2a18e47570b020cad79aacca125d75f2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rmf-building-map-tools ros2run ];
  nativeBuildInputs = [ ament-cmake rmf-building-map-tools ros2run ];

  meta = {
    description = "A package containing demo maps for rmf";
    license = with lib.licenses; [ asl20 ];
  };
}
