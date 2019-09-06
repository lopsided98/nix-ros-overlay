
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, orocos-kdl, ament-cmake-gtest, tf2-ros, ament-cmake-auto, tf2, geometry-msgs }:
buildRosPackage {
  pname = "ros-crystal-tf2-geometry-msgs";
  version = "0.10.1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/crystal/tf2_geometry_msgs/0.10.1-0.tar.gz";
    name = "0.10.1-0.tar.gz";
    sha256 = "7aafc1e2f356900c3a04bafeebdbacb50778dc3ac072aded38af027e0bb031b0";
  };

  buildType = "ament_cmake";
  buildInputs = [ tf2-ros tf2 orocos-kdl geometry-msgs ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ tf2-ros tf2 orocos-kdl geometry-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''tf2_geometry_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
