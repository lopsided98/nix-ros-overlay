
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rmf-building-map-tools, ros2run }:
buildRosPackage {
  pname = "ros-rolling-rmf-demos-maps";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/rolling/rmf_demos_maps/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "590be9262e020a0947f2d08ed42d93ba25e3d919ad61708a520658fed931a663";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rmf-building-map-tools ros2run ];
  nativeBuildInputs = [ ament-cmake rmf-building-map-tools ros2run ];

  meta = {
    description = "A package containing demo maps for rmf";
    license = with lib.licenses; [ asl20 ];
  };
}
