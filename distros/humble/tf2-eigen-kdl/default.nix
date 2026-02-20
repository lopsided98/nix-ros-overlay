
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, orocos-kdl-vendor, tf2 }:
buildRosPackage {
  pname = "ros-humble-tf2-eigen-kdl";
  version = "0.25.19-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/humble/tf2_eigen_kdl/0.25.19-1.tar.gz";
    name = "0.25.19-1.tar.gz";
    sha256 = "5bad7173cb380b394add6ef64c96289d9b06ab98d539fa1da1190945b4223602";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen orocos-kdl-vendor tf2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Conversion functions between:
      - Eigen and KDL";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
