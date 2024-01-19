
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, image-common, image-pipeline, image-transport-plugins, laser-filters, laser-geometry, perception-pcl, ros-base, vision-opencv }:
buildRosPackage {
  pname = "ros-iron-perception";
  version = "0.10.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/iron/perception/0.10.0-3.tar.gz";
    name = "0.10.0-3.tar.gz";
    sha256 = "9acd7e160e8c2f155324d55f6b77c2f59b2f5e92d703a5b851f3738a0324dda4";
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
