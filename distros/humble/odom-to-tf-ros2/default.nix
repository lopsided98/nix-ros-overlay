
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, nav-msgs, rclcpp, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-odom-to-tf-ros2";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/odom_to_tf_ros2-release/archive/release/humble/odom_to_tf_ros2/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "742c27c41386ed511c2cd82b90810ccc83287f13a11bccb5140a3e4a1aec9393";
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
