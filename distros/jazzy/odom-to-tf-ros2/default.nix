
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, nav-msgs, rclcpp, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-odom-to-tf-ros2";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/odom_to_tf_ros2-release/archive/release/jazzy/odom_to_tf_ros2/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "fd5715f6a2cd744133dd3d47eff5508b91966cbe7acab3d2f662854c207c2119";
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
