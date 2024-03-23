
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-clang-format, ament-cmake-ros, ament-lint-auto, ament-lint-common, event-camera-codecs, event-camera-msgs, image-transport, rclcpp, rclcpp-components, ros-environment, sensor-msgs }:
buildRosPackage {
  pname = "ros-iron-event-camera-renderer";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/event_camera_renderer-release/archive/release/iron/event_camera_renderer/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "7695c124046c64e7a79ccb7f112f68ba6ac1bc9e36332283698547971cfa422c";
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
