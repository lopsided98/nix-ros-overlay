
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-index-cpp, ament-lint-auto, ament-lint-common, cv-bridge, image-transport, message-filters, pcl-conversions, pcl-ros, rclcpp, rclpy, rosbag2-cpp, sensor-msgs, sensor-msgs-py, std-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-trackdlo-core";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/HayatoShimada/trackdlo_perception-release/archive/release/jazzy/trackdlo_core/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "7f31254304bf0bed1dd75351cc883846d9c8986304331359b52db61550c71cdf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp cv-bridge image-transport message-filters pcl-conversions pcl-ros rclcpp rclpy rosbag2-cpp sensor-msgs sensor-msgs-py std-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "TrackDLO2: Tracking Deformable Linear Objects - Core perception package (ROS2 Humble)";
    license = with lib.licenses; [ bsd3 ];
  };
}
