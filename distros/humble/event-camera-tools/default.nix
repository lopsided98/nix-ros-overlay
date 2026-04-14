
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-black, ament-cmake-clang-format, ament-cmake-ros, ament-lint-auto, ament-lint-common, event-camera-codecs, event-camera-msgs, opencv, rclcpp, rclcpp-components, ros-environment, rosbag2-cpp, rosbag2-storage, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-event-camera-tools";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/event_camera_tools-release/archive/release/humble/event_camera_tools/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "8d2caefe439b17aaf4e4a928ebdb87c592705a96331115d2da78210054ae82c2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ament-cmake-ros ros-environment ];
  checkInputs = [ ament-cmake-black ament-cmake-clang-format ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ event-camera-codecs event-camera-msgs opencv opencv.cxxdev rclcpp rclcpp-components rosbag2-cpp rosbag2-storage sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ament-cmake-ros ros-environment ];

  meta = {
    description = "package with ROS1 and ROS2 tools related to event_camera_msgs";
    license = with lib.licenses; [ asl20 ];
  };
}
