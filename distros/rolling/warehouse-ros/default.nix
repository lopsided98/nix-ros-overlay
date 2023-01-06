
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-lint-auto, boost, geometry-msgs, openssl, pluginlib, rclcpp, std-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-warehouse-ros";
  version = "2.0.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/warehouse_ros-release/archive/release/rolling/warehouse_ros/2.0.4-2.tar.gz";
    name = "2.0.4-2.tar.gz";
    sha256 = "6ae86a7e2b555e0834061b9613f22c6bc90d5c45940f46ddefa0dded49c6d9e7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright ament-lint-auto ];
  propagatedBuildInputs = [ boost geometry-msgs openssl pluginlib rclcpp std-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Persistent storage of ROS messages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
