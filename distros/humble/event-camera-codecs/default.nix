
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-clang-format, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, class-loader, event-camera-msgs, rclcpp, ros-environment, rosbag2-cpp }:
buildRosPackage {
  pname = "ros-humble-event-camera-codecs";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/event_camera_codecs-release/archive/release/humble/event_camera_codecs/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "3728597f320b26add4cd4704fdc358777a73f141790a824172dc15d4f6536581";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ament-cmake-ros ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-gtest ament-lint-auto ament-lint-common rclcpp rosbag2-cpp ];
  propagatedBuildInputs = [ class-loader event-camera-msgs ros-environment ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ament-cmake-ros ];

  meta = {
    description = ''package to encode and decode event_camera_msgs'';
    license = with lib.licenses; [ asl20 ];
  };
}
