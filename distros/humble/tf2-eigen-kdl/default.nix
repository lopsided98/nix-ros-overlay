
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, orocos-kdl-vendor, tf2 }:
buildRosPackage {
  pname = "ros-humble-tf2-eigen-kdl";
  version = "0.25.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/humble/tf2_eigen_kdl/0.25.4-1.tar.gz";
    name = "0.25.4-1.tar.gz";
    sha256 = "da6f9b4a12d0a77df8e336f778e8cdb8ab087a9684288795763d25811b410198";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen orocos-kdl-vendor tf2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Conversion functions between:
      - Eigen and KDL'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
