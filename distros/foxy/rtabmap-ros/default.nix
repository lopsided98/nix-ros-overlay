
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, class-loader, compressed-depth-image-transport, compressed-image-transport, cv-bridge, geometry-msgs, image-geometry, image-transport, laser-geometry, message-filters, nav-msgs, nav2-common, octomap, octomap-msgs, pcl, pcl-conversions, pluginlib, rclcpp, rclcpp-components, rclpy, rosgraph-msgs, rosidl-default-generators, rosidl-default-runtime, rtabmap, rviz-common, rviz-default-plugins, rviz-rendering, sensor-msgs, std-msgs, std-srvs, stereo-msgs, tf2, tf2-eigen, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-foxy-rtabmap-ros";
  version = "0.20.15-r2";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/foxy/rtabmap_ros/0.20.15-2.tar.gz";
    name = "0.20.15-2.tar.gz";
    sha256 = "deaff598cd3af8a157d2cbbc79673de4f03d5bc2aa53a7013b7f83b2928f2098";
  };

  buildType = "ament_cmake";
  buildInputs = [ pcl rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces class-loader compressed-depth-image-transport compressed-image-transport cv-bridge geometry-msgs image-geometry image-transport laser-geometry message-filters nav-msgs nav2-common octomap octomap-msgs pcl-conversions pluginlib rclcpp rclcpp-components rclpy rosgraph-msgs rosidl-default-runtime rtabmap rviz-common rviz-default-plugins rviz-rendering sensor-msgs std-msgs std-srvs stereo-msgs tf2 tf2-eigen tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RTAB-Map's ros-pkg. RTAB-Map is a RGB-D SLAM approach with real-time constraints.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
