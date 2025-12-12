
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-clang-format, ament-cmake-ros, ament-lint-auto, ament-lint-common, cv-bridge, event-camera-codecs, event-camera-msgs, image-transport, rclcpp, rclcpp-components, rosbag2-cpp, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-frequency-cam";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/frequency_cam-release/archive/release/kilted/frequency_cam/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "ecdd5f057f9eadbf800f7c873a4ddab08b7761a1c712f084b849b6a17374572c";
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
