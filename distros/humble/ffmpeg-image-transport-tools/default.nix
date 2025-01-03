
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-ros, ament-lint-auto, ament-lint-common, cv-bridge, ffmpeg-image-transport, ffmpeg-image-transport-msgs, rclcpp, ros-environment, rosbag2-cpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-ffmpeg-image-transport-tools";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ffmpeg_image_transport_tools-release/archive/release/humble/ffmpeg_image_transport_tools/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "1a30bb6dd6ea0c994367ca4856dadca8abf3d44682fdf0a6bb7b59d9f511effa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros ros-environment ];
  checkInputs = [ ament-cmake-clang-format ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge ffmpeg-image-transport ffmpeg-image-transport-msgs rclcpp rosbag2-cpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ros-environment ];

  meta = {
    description = "tools for processing ffmpeg_image_transport_msgs";
    license = with lib.licenses; [ "Apache-2" ];
  };
}
