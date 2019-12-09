
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, orocos-kdl, geometry-msgs, rclcpp, tf2, ament-cmake, ament-cmake-gtest, tf2-msgs, builtin-interfaces, tf2-ros }:
buildRosPackage {
  pname = "ros-dashing-tf2-kdl";
  version = "0.11.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/dashing/tf2_kdl/0.11.5-1.tar.gz";
    name = "0.11.5-1.tar.gz";
    sha256 = "ceed23b5a676c34754796015e56f46948d75b0424c2fe574c0db34fb70c5c141";
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
