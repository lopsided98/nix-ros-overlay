
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, class-loader, compressed-depth-image-transport, compressed-image-transport, cv-bridge, geometry-msgs, image-geometry, image-transport, laser-geometry, message-filters, nav-msgs, nav2-common, nav2-msgs, octomap, octomap-msgs, pcl, pcl-conversions, pluginlib, rclcpp, rclcpp-components, rclpy, rosgraph-msgs, rosidl-default-generators, rosidl-default-runtime, rtabmap, rviz-common, rviz-default-plugins, rviz-rendering, sensor-msgs, std-msgs, std-srvs, stereo-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-galactic-rtabmap-ros";
  version = "0.20.20-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/galactic/rtabmap_ros/0.20.20-1.tar.gz";
    name = "0.20.20-1.tar.gz";
    sha256 = "4ae9d2cdad6f365ebbd3b48ce59511c28230e0449b9bc9feb542718e5c81e66d";
  };

  buildType = "ament_cmake";
  buildInputs = [ pcl rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces class-loader compressed-depth-image-transport compressed-image-transport cv-bridge geometry-msgs image-geometry image-transport laser-geometry message-filters nav-msgs nav2-common nav2-msgs octomap octomap-msgs pcl-conversions pluginlib rclcpp rclcpp-components rclpy rosgraph-msgs rosidl-default-runtime rtabmap rviz-common rviz-default-plugins rviz-rendering sensor-msgs std-msgs std-srvs stereo-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RTAB-Map's ros-pkg. RTAB-Map is a RGB-D SLAM approach with real-time constraints.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
