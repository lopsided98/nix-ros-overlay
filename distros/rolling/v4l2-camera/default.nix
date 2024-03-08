
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, camera-info-manager, cv-bridge, image-transport, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-v4l2-camera";
  version = "0.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_v4l2_camera-release/archive/release/rolling/v4l2_camera/0.7.0-2.tar.gz";
    name = "0.7.0-2.tar.gz";
    sha256 = "8224dd11bb94a9f0b5d59e7fa5f57cfe96ca7160c8e94a9e383762477507e080";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ camera-info-manager cv-bridge image-transport rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''A ROS 2 camera driver using Video4Linux2'';
    license = with lib.licenses; [ asl20 ];
  };
}
