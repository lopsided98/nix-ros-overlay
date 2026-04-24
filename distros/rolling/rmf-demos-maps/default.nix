
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rmf-building-map-tools, ros2run }:
buildRosPackage {
  pname = "ros-rolling-rmf-demos-maps";
  version = "2.8.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/rolling/rmf_demos_maps/2.8.2-2.tar.gz";
    name = "2.8.2-2.tar.gz";
    sha256 = "d365372030e7ee5951b27cafd5987d644c70e23cb282f4a6f4ad09d0ab6a1ed8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rmf-building-map-tools ros2run ];
  nativeBuildInputs = [ ament-cmake rmf-building-map-tools ros2run ];

  meta = {
    description = "A package containing demo maps for rmf";
    license = with lib.licenses; [ asl20 ];
  };
}
