
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, builtin-interfaces, cv-bridge, diagnostic-updater, eigen, geometry-msgs, image-transport, launch-pytest, launch-ros, launch-testing, librealsense2, lifecycle-msgs, nav-msgs, python3Packages, rclcpp, rclcpp-action, rclcpp-components, rclcpp-lifecycle, realsense2-camera-msgs, ros-environment, ros2bag, ros2topic, rosbag2-storage-default-plugins, sensor-msgs, sensor-msgs-py, std-msgs, std-srvs, tf2, tf2-ros, tf2-ros-py }:
buildRosPackage {
  pname = "ros-kilted-realsense2-camera";
  version = "4.58.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realsense-ros-release/archive/release/kilted/realsense2_camera/4.58.2-1.tar.gz";
    name = "4.58.2-1.tar.gz";
    sha256 = "0c1b91705afaaca051c445f409b0eb7dcb3bcbe5f6680561e7dcf177fc50a5fa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest launch-pytest launch-testing python3Packages.numpy python3Packages.requests python3Packages.tqdm ros2bag ros2topic rosbag2-storage-default-plugins sensor-msgs-py tf2-ros-py ];
  propagatedBuildInputs = [ builtin-interfaces cv-bridge diagnostic-updater eigen geometry-msgs image-transport launch-ros librealsense2 lifecycle-msgs nav-msgs rclcpp rclcpp-action rclcpp-components rclcpp-lifecycle realsense2-camera-msgs sensor-msgs std-msgs std-srvs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RealSense camera package allowing access to RealSense D400 3D cameras";
    license = with lib.licenses; [ asl20 ];
  };
}
