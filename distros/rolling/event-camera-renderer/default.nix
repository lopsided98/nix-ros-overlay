
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-clang-format, ament-cmake-ros, ament-lint-auto, ament-lint-common, event-camera-codecs, event-camera-msgs, image-transport, rclcpp, rclcpp-components, ros-environment, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-event-camera-renderer";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/event_camera_renderer-release/archive/release/rolling/event_camera_renderer/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "b51fd2692d1268ac890ceac088c31918c698459a13a38477c57b3aa0c57ea1ba";
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
