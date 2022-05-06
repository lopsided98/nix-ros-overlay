
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, geometry-msgs, orocos-kdl, rclcpp, tf2, tf2-ros, tf2-ros-py }:
buildRosPackage {
  pname = "ros-galactic-tf2-geometry-msgs";
  version = "0.17.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/galactic/tf2_geometry_msgs/0.17.3-1.tar.gz";
    name = "0.17.3-1.tar.gz";
    sha256 = "b4560d72ea88f1c87aadb879162a76faedda7333a975c0cc41e904adc34062d4";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest rclcpp ];
  propagatedBuildInputs = [ geometry-msgs orocos-kdl tf2 tf2-ros tf2-ros-py ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''tf2_geometry_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
