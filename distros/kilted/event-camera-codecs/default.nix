
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-clang-format, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, class-loader, event-camera-msgs, rclcpp, ros-environment, rosbag2-cpp }:
buildRosPackage {
  pname = "ros-kilted-event-camera-codecs";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/event_camera_codecs-release/archive/release/kilted/event_camera_codecs/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "b34a7e0643dc161cd74bd1e33f7af597a7f8fa2e5fad4cb36cb237492dec3eef";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ament-cmake-ros ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-gtest ament-lint-auto ament-lint-common rclcpp rosbag2-cpp ];
  propagatedBuildInputs = [ class-loader event-camera-msgs ros-environment ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ament-cmake-ros ];

  meta = {
    description = "package to encode and decode event_camera_msgs";
    license = with lib.licenses; [ asl20 ];
  };
}
