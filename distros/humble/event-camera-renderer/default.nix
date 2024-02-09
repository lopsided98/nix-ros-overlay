
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-clang-format, ament-cmake-ros, ament-lint-auto, ament-lint-common, event-camera-codecs, event-camera-msgs, image-transport, rclcpp, rclcpp-components, ros-environment, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-event-camera-renderer";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/event_camera_renderer-release/archive/release/humble/event_camera_renderer/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "1334ab2b8f062b0a2bf5c6ccf2e3431dc9b392ea9a47e98bb41ce6b9ac97f9e3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ament-cmake-ros ];
  checkInputs = [ ament-cmake-clang-format ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ event-camera-codecs event-camera-msgs image-transport rclcpp rclcpp-components ros-environment sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ament-cmake-ros ];

  meta = {
    description = ''package for rendering event_camera_msgs'';
    license = with lib.licenses; [ asl20 ];
  };
}
