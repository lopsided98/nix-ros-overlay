
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, geometry-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-tf2-eigen";
  version = "0.41.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/kilted/tf2_eigen/0.41.0-1.tar.gz";
    name = "0.41.0-1.tar.gz";
    sha256 = "c8abba8298226662fe83191f4372e6b815f7563c1bf98229e02cdc8b448206a7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen geometry-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "tf2_eigen";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
