
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rmf-building-map-tools, ros2run }:
buildRosPackage {
  pname = "ros-foxy-rmf-demos-maps";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/foxy/rmf_demos_maps/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "8617ba05daa898c8a344473d470afc89b0573f29d6fff4b41910acd4f39e2ddb";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake rmf-building-map-tools ros2run ];

  meta = {
    description = ''A package containing demo maps for rmf'';
    license = with lib.licenses; [ asl20 ];
  };
}
