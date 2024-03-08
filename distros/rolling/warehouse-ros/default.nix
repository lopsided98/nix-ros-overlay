
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-lint-auto, boost, geometry-msgs, openssl, pluginlib, rclcpp, std-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-warehouse-ros";
  version = "2.0.4-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/warehouse_ros-release/archive/release/rolling/warehouse_ros/2.0.4-4.tar.gz";
    name = "2.0.4-4.tar.gz";
    sha256 = "9f492d39b42b9d937823534404249f33c932b799afba725bbd1e388a292bcdcb";
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
