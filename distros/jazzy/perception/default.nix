
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, image-common, image-pipeline, image-transport-plugins, laser-filters, laser-geometry, perception-pcl, ros-base, vision-opencv }:
buildRosPackage {
  pname = "ros-jazzy-perception";
  version = "0.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/jazzy/perception/0.11.0-1.tar.gz";
    name = "0.11.0-1.tar.gz";
    sha256 = "16e22192cf546c703157fe2ba1dbd837edc37939518430bdf956f2aa93ab30c2";
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
