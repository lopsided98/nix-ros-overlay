
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, image-common, image-pipeline, image-transport-plugins, laser-filters, laser-geometry, perception-pcl, ros-base, vision-opencv }:
buildRosPackage {
  pname = "ros-rolling-perception";
  version = "0.13.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/rolling/perception/0.13.0-2.tar.gz";
    name = "0.13.0-2.tar.gz";
    sha256 = "0ec50b1fa053dcb4180673b0bf5c19a6058f696d2f15701932c2977422b184af";
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
