
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rmf-building-map-tools, ros2run }:
buildRosPackage {
  pname = "ros-rolling-rmf-demos-maps";
  version = "2.8.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/rolling/rmf_demos_maps/2.8.1-2.tar.gz";
    name = "2.8.1-2.tar.gz";
    sha256 = "cba7e78866156e6bdc1ecee3799a5ab472c3b3f5d5fe9c406ad586d3b5d307c0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rmf-building-map-tools ros2run ];
  nativeBuildInputs = [ ament-cmake rmf-building-map-tools ros2run ];

  meta = {
    description = "A package containing demo maps for rmf";
    license = with lib.licenses; [ asl20 ];
  };
}
