
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-clang-format, ament-cmake-ros, ament-lint-auto, ament-lint-common, event-camera-codecs, event-camera-msgs, image-transport, rclcpp, rclcpp-components, ros-environment, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-event-camera-renderer";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/event_camera_renderer-release/archive/release/jazzy/event_camera_renderer/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "2e44f7bf2f2027a8bcc93f7a239c6d73305b1090778cc7be81ebfa5cdc7ebc2b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ament-cmake-ros ];
  checkInputs = [ ament-cmake-clang-format ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ event-camera-codecs event-camera-msgs image-transport rclcpp rclcpp-components ros-environment sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ament-cmake-ros ];

  meta = {
    description = "package for rendering event_camera_msgs";
    license = with lib.licenses; [ asl20 ];
  };
}
