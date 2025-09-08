
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-lint-auto, boost, geometry-msgs, openssl, pluginlib, rclcpp, std-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-warehouse-ros";
  version = "2.0.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/warehouse_ros-release/archive/release/kilted/warehouse_ros/2.0.5-2.tar.gz";
    name = "2.0.5-2.tar.gz";
    sha256 = "646d75b9ef1b020f5efef925a3ba7f378701f9957807f4ace90a45c4b9cefe37";
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
