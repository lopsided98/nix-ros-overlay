
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, geometry-msgs, orocos-kdl, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-dashing-tf2-geometry-msgs";
  version = "0.11.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/dashing/tf2_geometry_msgs/0.11.6-1.tar.gz";
    name = "0.11.6-1.tar.gz";
    sha256 = "022b8967b23da0177803c1a94bb0aa5c1c67343e8facb41e3e48380c918a38e2";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ geometry-msgs orocos-kdl tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''tf2_geometry_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
