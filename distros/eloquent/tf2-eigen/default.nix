
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, eigen, eigen3-cmake-module, geometry-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-eloquent-tf2-eigen";
  version = "0.12.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/eloquent/tf2_eigen/0.12.6-1.tar.gz";
    name = "0.12.6-1.tar.gz";
    sha256 = "3108c937afb2f095aeaab716fb1cfff0af6060e3ac8f2e32b281f48a544012f6";
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
