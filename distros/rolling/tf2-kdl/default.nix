
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, builtin-interfaces, geometry-msgs, orocos-kdl-vendor, rclcpp, tf2, tf2-msgs, tf2-ros, tf2-ros-py }:
buildRosPackage {
  pname = "ros-rolling-tf2-kdl";
  version = "0.36.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/rolling/tf2_kdl/0.36.0-1.tar.gz";
    name = "0.36.0-1.tar.gz";
    sha256 = "c9f7a33b2e2241ef9f550b4f25d5584a6266404e90ac62ad645c7c34a6cbc823";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest rclcpp tf2-msgs ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs orocos-kdl-vendor tf2 tf2-ros tf2-ros-py ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''KDL binding for tf2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
