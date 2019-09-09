
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, tf2-msgs, ament-cmake, orocos-kdl, ament-cmake-gtest, tf2-ros, tf2, rclcpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-dashing-tf2-kdl";
  version = "0.11.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/dashing/tf2_kdl/0.11.5-1.tar.gz";
    name = "0.11.5-1.tar.gz";
    sha256 = "ceed23b5a676c34754796015e56f46948d75b0424c2fe574c0db34fb70c5c141";
  };

  buildType = "ament_cmake";
  buildInputs = [ builtin-interfaces orocos-kdl tf2-ros tf2 geometry-msgs ];
  checkInputs = [ ament-cmake-gtest tf2-msgs rclcpp ];
  propagatedBuildInputs = [ builtin-interfaces orocos-kdl tf2-ros tf2 geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''KDL binding for tf2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
