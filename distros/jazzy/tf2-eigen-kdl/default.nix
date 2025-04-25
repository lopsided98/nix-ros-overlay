
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, orocos-kdl-vendor, tf2 }:
buildRosPackage {
  pname = "ros-jazzy-tf2-eigen-kdl";
  version = "0.36.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/jazzy/tf2_eigen_kdl/0.36.10-1.tar.gz";
    name = "0.36.10-1.tar.gz";
    sha256 = "e18bcc3333a4ee70722276dd4b41f1e0809423b546246e45d5742932364b61ab";
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
