
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, image-common, image-pipeline, image-transport-plugins, laser-filters, laser-geometry, perception-pcl, ros-base, vision-opencv }:
buildRosPackage {
  pname = "ros-lyrical-perception";
  version = "0.13.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/lyrical/perception/0.13.0-3.tar.gz";
    name = "0.13.0-3.tar.gz";
    sha256 = "e5ff92d59d89f8411303ef02295534906322eec771d6fc94775a2e6c1ce03061";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ image-common image-pipeline image-transport-plugins laser-filters laser-geometry perception-pcl ros-base vision-opencv ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A package which aggregates common perception packages.";
    license = with lib.licenses; [ asl20 ];
  };
}
