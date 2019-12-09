
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-ros, geometry-msgs, ament-cmake, eigen3-cmake-module, eigen, tf2, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-eloquent-tf2-eigen";
  version = "0.12.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/eloquent/tf2_eigen/0.12.4-1.tar.gz";
    name = "0.12.4-1.tar.gz";
    sha256 = "c0e7782becc5f1d4e00c4931ad9b86bac7016ae4c51e9132ab81e691d77c27ff";
  };

  buildType = "ament_cmake";
  buildInputs = [ eigen geometry-msgs tf2-ros tf2 ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ geometry-msgs eigen3-cmake-module eigen tf2 tf2-ros ];
  nativeBuildInputs = [ eigen3-cmake-module ament-cmake ];

  meta = {
    description = ''tf2_eigen'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
