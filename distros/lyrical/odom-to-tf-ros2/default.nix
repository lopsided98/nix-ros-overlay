
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, nav-msgs, rclcpp, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-odom-to-tf-ros2";
  version = "1.0.8-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/odom_to_tf_ros2-release/archive/release/lyrical/odom_to_tf_ros2/1.0.8-3.tar.gz";
    name = "1.0.8-3.tar.gz";
    sha256 = "5ba07b4c3be590c7d2258382a96cd597fd9e8f0597de3f696d011f50270fb4da";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs rclcpp tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A simple ros2 package (node) that reads an odom topic and generates the equivalent tf connection (transformation). It also provides options to override frame names, or just use the ones in the original odom topic.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
