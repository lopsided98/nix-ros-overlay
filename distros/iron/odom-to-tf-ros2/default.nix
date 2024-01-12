
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, nav-msgs, rclcpp, tf2-ros }:
buildRosPackage {
  pname = "ros-iron-odom-to-tf-ros2";
  version = "1.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/odom_to_tf_ros2-release/archive/release/iron/odom_to_tf_ros2/1.0.2-3.tar.gz";
    name = "1.0.2-3.tar.gz";
    sha256 = "b1bd6ae37c092a86f379d7506eaca870781fd8a4bf2c1d1d18bd23362410244f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ nav-msgs rclcpp tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A simple ros2 package (node) that reads an odom topic and generates the equivalent tf connection (transformation). It also provides options to override frame names, or just use the ones in the original odom topic.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
