
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, cv-bridge, eigen, geos, pkg-config, rclcpp, tf2 }:
buildRosPackage {
  pname = "ros-galactic-swri-geometry-util";
  version = "3.4.1-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/galactic/swri_geometry_util/3.4.1-1.tar.gz";
    name = "3.4.1-1.tar.gz";
    sha256 = "c57914b8333ee11726c1e52938e4c394830aed2f635a4d74077ca81912041ac3";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ cv-bridge eigen geos rclcpp tf2 ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = ''swri_geometry_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
