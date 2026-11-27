
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-black, ament-cmake-clang-format, ament-cmake-ros, ament-cmake-test, ament-lint-auto, ament-lint-common, event-camera-codecs, event-camera-msgs, opencv, rclcpp, rclcpp-components, ros-environment, rosbag2-cpp, rosbag2-storage, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-event-camera-tools";
  version = "3.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/event_camera_tools-release/archive/release/jazzy/event_camera_tools/3.1.6-1.tar.gz";
    name = "3.1.6-1.tar.gz";
    sha256 = "ee1c45db4703db4bd72bf051618d086c697ac3c57874d07f6dbeef33fd1ece70";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ament-cmake-ros ros-environment ];
  checkInputs = [ ament-cmake-black ament-cmake-clang-format ament-cmake-test ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ event-camera-codecs event-camera-msgs opencv opencv.cxxdev rclcpp rclcpp-components rosbag2-cpp rosbag2-storage sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ament-cmake-ros ros-environment ];

  meta = {
    description = "package with ROS1 and ROS2 tools related to event_camera_msgs";
    license = with lib.licenses; [ asl20 ];
  };
}
