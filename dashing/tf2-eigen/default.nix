
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, tf2-ros, tf2, eigen3-cmake-module, eigen, geometry-msgs }:
buildRosPackage {
  pname = "ros-dashing-tf2-eigen";
  version = "0.11.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/dashing/tf2_eigen/0.11.5-1.tar.gz";
    name = "0.11.5-1.tar.gz";
    sha256 = "1f41789b06f3d6b8f3bb5de295b8c4925ca247d58a4e2dfce1a7e45ef9041bab";
  };

  buildType = "ament_cmake";
  buildInputs = [ tf2 eigen tf2-ros geometry-msgs ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ tf2-ros tf2 eigen3-cmake-module eigen geometry-msgs ];
  nativeBuildInputs = [ eigen3-cmake-module ament-cmake ];

  meta = {
    description = ''tf2_eigen'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
