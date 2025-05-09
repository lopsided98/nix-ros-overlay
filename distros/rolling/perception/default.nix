
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, image-common, image-pipeline, image-transport-plugins, laser-filters, laser-geometry, perception-pcl, ros-base, vision-opencv }:
buildRosPackage {
  pname = "ros-rolling-perception";
  version = "0.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/rolling/perception/0.13.0-1.tar.gz";
    name = "0.13.0-1.tar.gz";
    sha256 = "e6d26bf161ba2cdd961acd3c8661ae153841d7c403bc379ddcceec448f33a61b";
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
