
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, orocos-kdl, geometry-msgs, rclcpp, tf2, ament-cmake, ament-cmake-gtest, tf2-msgs, builtin-interfaces, tf2-ros }:
buildRosPackage {
  pname = "ros-eloquent-tf2-kdl";
  version = "0.12.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/eloquent/tf2_kdl/0.12.4-1.tar.gz";
    name = "0.12.4-1.tar.gz";
    sha256 = "f78df24cb16a242bfe42106a1e4199862aa3b8fdce9ef0806827267f98b77b43";
  };

  buildType = "ament_cmake";
  buildInputs = [ orocos-kdl geometry-msgs tf2 builtin-interfaces tf2-ros ];
  checkInputs = [ rclcpp ament-cmake-gtest tf2-msgs ];
  propagatedBuildInputs = [ orocos-kdl geometry-msgs tf2 builtin-interfaces tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''KDL binding for tf2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
