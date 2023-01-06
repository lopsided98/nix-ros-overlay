
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, abseil-cpp, ament-cmake, builtin-interfaces, cartographer, cartographer-ros-msgs, eigen, geometry-msgs, gflags, glog, gtest, launch, nav-msgs, pcl, pcl-conversions, python3Packages, rclcpp, robot-state-publisher, rosbag2-cpp, rosbag2-storage, sensor-msgs, std-msgs, tf2, tf2-eigen, tf2-msgs, tf2-ros, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-cartographer-ros";
  version = "2.0.9000-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cartographer_ros-release/archive/release/rolling/cartographer_ros/2.0.9000-1.tar.gz";
    name = "2.0.9000-1.tar.gz";
    sha256 = "b28fbfb9a92caacf0f10fd0837807e16802625825a55fe8fa83f7c8c7c98f626";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake gtest python3Packages.sphinx ];
  propagatedBuildInputs = [ abseil-cpp builtin-interfaces cartographer cartographer-ros-msgs eigen geometry-msgs gflags glog launch nav-msgs pcl pcl-conversions rclcpp robot-state-publisher rosbag2-cpp rosbag2-storage sensor-msgs std-msgs tf2 tf2-eigen tf2-msgs tf2-ros urdf visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Cartographer is a system that provides real-time simultaneous localization
    and mapping (SLAM) in 2D and 3D across multiple platforms and sensor
    configurations. This package provides Cartographer's ROS integration.'';
    license = with lib.licenses; [ asl20 ];
  };
}
