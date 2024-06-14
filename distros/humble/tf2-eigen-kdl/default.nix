
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, orocos-kdl-vendor, tf2 }:
buildRosPackage {
  pname = "ros-humble-tf2-eigen-kdl";
  version = "0.25.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/humble/tf2_eigen_kdl/0.25.7-1.tar.gz";
    name = "0.25.7-1.tar.gz";
    sha256 = "9bfab92237a38ab18fbaeb6dbfd60dad883ba62b8c816a5351ad409f75c69498";
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
