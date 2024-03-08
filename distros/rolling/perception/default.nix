
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, image-common, image-pipeline, image-transport-plugins, laser-filters, laser-geometry, perception-pcl, ros-base, vision-opencv }:
buildRosPackage {
  pname = "ros-rolling-perception";
  version = "0.10.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/rolling/perception/0.10.0-3.tar.gz";
    name = "0.10.0-3.tar.gz";
    sha256 = "aaf58213505e57c6bc48490116610fd8f16f766009f7472c84a829201263b431";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ image-common image-pipeline image-transport-plugins laser-filters laser-geometry perception-pcl ros-base vision-opencv ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package which aggregates common perception packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
