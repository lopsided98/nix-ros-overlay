
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-lint-auto, boost, geometry-msgs, openssl, pluginlib, rclcpp, std-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-iron-warehouse-ros";
  version = "2.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/warehouse_ros-release/archive/release/iron/warehouse_ros/2.0.5-1.tar.gz";
    name = "2.0.5-1.tar.gz";
    sha256 = "623f0a3057f20f9901b7a8f19945836e2f7f19fb1e5a212985e2c6ea5c4e1f3c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright ament-lint-auto ];
  propagatedBuildInputs = [ boost geometry-msgs openssl pluginlib rclcpp std-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Persistent storage of ROS messages";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
