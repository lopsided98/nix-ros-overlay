
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, cv-bridge, pkg-config, tf2, rclcpp, eigen, geos }:
buildRosPackage {
  pname = "ros-dashing-swri-geometry-util";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/dashing/swri_geometry_util/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "0e008664d25ad8accb990b47e636e58e36685ea4dec18baa615b1f40223949c2";
  };

  buildType = "ament_cmake";
  buildInputs = [ cv-bridge tf2 rclcpp eigen geos ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ cv-bridge tf2 rclcpp eigen geos ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = ''swri_geometry_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
