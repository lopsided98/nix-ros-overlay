
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, geometry-msgs, pluginlib, rclcpp, std-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-warehouse-ros";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/moveit/warehouse_ros-release/archive/release/foxy/warehouse_ros/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "9296addfe4bf5576c2dc5b95a8b2b24b384e2b58425d360be9efc3bcdf817710";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ boost geometry-msgs pluginlib rclcpp std-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Persistent storage of ROS messages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
