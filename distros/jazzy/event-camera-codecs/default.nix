
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-clang-format, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, class-loader, event-camera-msgs, rclcpp, ros-environment, rosbag2-cpp }:
buildRosPackage {
  pname = "ros-jazzy-event-camera-codecs";
  version = "1.3.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/event_camera_codecs-release/archive/release/jazzy/event_camera_codecs/1.3.5-1.tar.gz";
    name = "1.3.5-1.tar.gz";
    sha256 = "a7d2d11eb4ff598e6e026f93e149e32d95f0c205f132380ec99af5b6b1cf0245";
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
