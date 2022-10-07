
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rmf-building-map-tools, ros2run }:
buildRosPackage {
  pname = "ros-humble-rmf-demos-maps";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/humble/rmf_demos_maps/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "8477fdb686792a1ff2971de6d619d332202650e2f801921bc30ee3859a1bb490";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake rmf-building-map-tools ros2run ];

  meta = {
    description = ''A package containing demo maps for rmf'';
    license = with lib.licenses; [ asl20 ];
  };
}
