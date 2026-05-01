
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, orocos-kdl, tf2 }:
buildRosPackage {
  pname = "ros-lyrical-tf2-eigen-kdl";
  version = "0.45.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/lyrical/tf2_eigen_kdl/0.45.7-3.tar.gz";
    name = "0.45.7-3.tar.gz";
    sha256 = "ac6ea9c541fbd19caf38a6ccd7de2dc15eb58f006d3024f5caafb3bc46ff169f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen orocos-kdl tf2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Conversion functions between:
      - Eigen and KDL";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
