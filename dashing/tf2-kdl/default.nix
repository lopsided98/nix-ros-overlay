
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, tf2-msgs, ament-cmake, orocos-kdl, ament-cmake-gtest, tf2-ros, tf2, rclcpp, eigen, geometry-msgs }:
buildRosPackage {
  pname = "ros-dashing-tf2-kdl";
  version = "0.11.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/dashing/tf2_kdl/0.11.4-1.tar.gz";
    name = "0.11.4-1.tar.gz";
    sha256 = "54a847e77e5f708fe5a7a5cc4d597165e018f93faa5c4193b73a2ea4b7308c37";
  };

  buildType = "ament_cmake";
  buildInputs = [ builtin-interfaces orocos-kdl tf2-ros tf2 eigen geometry-msgs ];
  checkInputs = [ ament-cmake-gtest tf2-msgs rclcpp ];
  propagatedBuildInputs = [ builtin-interfaces orocos-kdl tf2-ros tf2 eigen geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''KDL binding for tf2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
