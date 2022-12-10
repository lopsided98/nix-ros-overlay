
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, image-common, image-pipeline, image-transport-plugins, laser-filters, laser-geometry, perception-pcl, ros-base, vision-opencv }:
buildRosPackage {
  pname = "ros-rolling-perception";
  version = "0.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/rolling/perception/0.10.0-1.tar.gz";
    name = "0.10.0-1.tar.gz";
    sha256 = "2b24e8b105b0a395b82b519fce587f7be6707b134728b217cb1f4331fc9ad2ae";
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
