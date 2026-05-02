
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-clang-format, ament-cmake-ros, ament-lint-auto, ament-lint-common, cv-bridge, event-camera-codecs, event-camera-msgs, image-transport, rclcpp, rclcpp-components, rosbag2-cpp, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-frequency-cam";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/frequency_cam-release/archive/release/rolling/frequency_cam/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "f8984240f9966bc83e0ffa7244502ccdebb8de315a1f05e3d8e91c497e781198";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ament-cmake-ros ];
  checkInputs = [ ament-cmake-clang-format ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge event-camera-codecs event-camera-msgs image-transport rclcpp rclcpp-components rosbag2-cpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ament-cmake-ros ];

  meta = {
    description = "frequency cam ROS/ROS2 package for event based cameras";
    license = with lib.licenses; [ asl20 ];
  };
}
