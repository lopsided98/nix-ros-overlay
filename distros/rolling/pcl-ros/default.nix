
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, eigen, geometry-msgs, launch, launch-ros, launch-testing, launch-testing-ros, pcl, pcl-conversions, rclcpp, rclcpp-components, rosbag2-transport, sensor-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-pcl-ros";
  version = "2.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/perception_pcl-release/archive/release/rolling/pcl_ros/2.7.4-1.tar.gz";
    name = "2.7.4-1.tar.gz";
    sha256 = "d28170c0f54fa3fa1d6b6387cdda1da15274313975e350c9ade0b00334f46be2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-ros launch-testing launch-testing-ros sensor-msgs ];
  propagatedBuildInputs = [ eigen geometry-msgs pcl pcl-conversions rclcpp rclcpp-components rosbag2-transport sensor-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "PCL (Point Cloud Library) ROS interface stack. PCL-ROS is the preferred
  bridge for 3D applications involving n-D Point Clouds and 3D geometry
  processing in ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
