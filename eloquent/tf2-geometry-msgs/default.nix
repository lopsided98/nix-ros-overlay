
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, geometry-msgs, orocos-kdl, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-eloquent-tf2-geometry-msgs";
  version = "0.12.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/eloquent/tf2_geometry_msgs/0.12.4-1.tar.gz";
    name = "0.12.4-1.tar.gz";
    sha256 = "1ff60e34768d56630a407275e45fee398718208c6b7e98aa42977819c89fd466";
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
