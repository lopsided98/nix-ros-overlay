
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, launch-ros, librealsense2, nav-msgs, rclcpp, rclcpp-components, realsense-msgs, sensor-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-realsense-ros";
  version = "2.0.8-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_intel_realsense-release/archive/release/foxy/realsense_ros/2.0.8-2.tar.gz";
    name = "2.0.8-2.tar.gz";
    sha256 = "0f4d757d020f53183c5e5e5d2a17519b5b548967073e94cec21ad21a1b5bbba8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ launch-ros librealsense2 nav-msgs rclcpp rclcpp-components realsense-msgs sensor-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 RealSense Package'';
    license = with lib.licenses; [ asl20 ];
  };
}
