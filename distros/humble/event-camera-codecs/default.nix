
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-clang-format, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, class-loader, event-camera-msgs, rclcpp, ros-environment, rosbag2-cpp }:
buildRosPackage {
  pname = "ros-humble-event-camera-codecs";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/event_camera_codecs-release/archive/release/humble/event_camera_codecs/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "a51029a431c5752775ca421c0f703d7d796df3d5414871774bc964297ee81c34";
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
