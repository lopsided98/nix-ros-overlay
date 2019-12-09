
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-ros, orocos-kdl, geometry-msgs, ament-cmake-auto, tf2, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-crystal-tf2-geometry-msgs";
  version = "0.10.1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/crystal/tf2_geometry_msgs/0.10.1-0.tar.gz";
    name = "0.10.1-0.tar.gz";
    sha256 = "7aafc1e2f356900c3a04bafeebdbacb50778dc3ac072aded38af027e0bb031b0";
  };

  buildType = "ament_cmake";
  buildInputs = [ orocos-kdl geometry-msgs tf2-ros tf2 ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ orocos-kdl geometry-msgs tf2-ros tf2 ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''tf2_geometry_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
