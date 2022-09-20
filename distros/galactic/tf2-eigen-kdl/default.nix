
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, orocos-kdl, tf2 }:
buildRosPackage {
  pname = "ros-galactic-tf2-eigen-kdl";
  version = "0.17.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/galactic/tf2_eigen_kdl/0.17.4-1.tar.gz";
    name = "0.17.4-1.tar.gz";
    sha256 = "77a566a7a4d8f879309cfcf4f28dceb18af70168d4bc863a4063db0fa6d18e83";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module orocos-kdl tf2 ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = ''Conversion functions between:
      - Eigen and KDL'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
