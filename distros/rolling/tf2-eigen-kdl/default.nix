
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, orocos-kdl-vendor, tf2 }:
buildRosPackage {
  pname = "ros-rolling-tf2-eigen-kdl";
  version = "0.37.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/rolling/tf2_eigen_kdl/0.37.1-1.tar.gz";
    name = "0.37.1-1.tar.gz";
    sha256 = "2c8f048ed7423d2efe1552168d65f9ce5a45efa7a2668e03ea5c50f76c7c3b42";
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
