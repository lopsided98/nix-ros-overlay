
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-clang-format, ament-cmake-ros, ament-lint-auto, ament-lint-common, cv-bridge, event-camera-codecs, event-camera-msgs, image-transport, rclcpp, rclcpp-components, rosbag2-cpp, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-frequency-cam";
  version = "3.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/frequency_cam-release/archive/release/lyrical/frequency_cam/3.1.2-2.tar.gz";
    name = "3.1.2-2.tar.gz";
    sha256 = "c89d3a589a17883e0d0d7a78dcbe7c3183daa1d66980914c26f6c68fcd0c6e58";
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
