
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-black, ament-cmake-clang-format, ament-cmake-ros, ament-lint-auto, ament-lint-common, cv-bridge, event-camera-codecs, event-camera-msgs, fibar-lib, image-transport, opencv, rclcpp, rclcpp-components, rosbag2-cpp, rosbag2-transport, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-event-image-reconstruction-fibar";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/event_image_reconstruction_fibar-release/archive/release/humble/event_image_reconstruction_fibar/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "0b82b6f961bb8d3d4ba67b5018136e074b0e958be3a75b73ccb83c63363795ef";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ament-cmake-ros ];
  checkInputs = [ ament-cmake-black ament-cmake-clang-format ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge event-camera-codecs event-camera-msgs fibar-lib image-transport opencv opencv.cxxdev rclcpp rclcpp-components rosbag2-cpp rosbag2-transport sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ament-cmake-ros ];

  meta = {
    description = "ROS package for synchronized image reconstruction from event frames";
    license = with lib.licenses; [ asl20 ];
  };
}
