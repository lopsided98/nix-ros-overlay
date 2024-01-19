
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, orocos-kdl-vendor, tf2 }:
buildRosPackage {
  pname = "ros-rolling-tf2-eigen-kdl";
  version = "0.35.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/rolling/tf2_eigen_kdl/0.35.0-1.tar.gz";
    name = "0.35.0-1.tar.gz";
    sha256 = "d57557c2ee9681864e8c4ac1e211359610792b0620e6e457b5642ed8a4c6a9f6";
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
