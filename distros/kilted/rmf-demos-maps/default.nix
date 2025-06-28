
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rmf-building-map-tools, ros2run }:
buildRosPackage {
  pname = "ros-kilted-rmf-demos-maps";
  version = "2.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/kilted/rmf_demos_maps/2.5.0-3.tar.gz";
    name = "2.5.0-3.tar.gz";
    sha256 = "bf29edd611d7e034374576c533813df416f087f23e1d1408867eeb832d4d3079";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rmf-building-map-tools ros2run ];
  nativeBuildInputs = [ ament-cmake rmf-building-map-tools ros2run ];

  meta = {
    description = "A package containing demo maps for rmf";
    license = with lib.licenses; [ asl20 ];
  };
}
