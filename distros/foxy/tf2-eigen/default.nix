
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, eigen, eigen3-cmake-module, geometry-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-tf2-eigen";
  version = "0.13.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/foxy/tf2_eigen/0.13.9-1.tar.gz";
    name = "0.13.9-1.tar.gz";
    sha256 = "18a947c0894fb4bd0f0d8d3af6c258da155dba0dbfd8880bd8e518038297cf30";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module geometry-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = ''tf2_eigen'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
