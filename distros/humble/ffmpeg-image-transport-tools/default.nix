
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-ros, ament-lint-auto, ament-lint-common, cv-bridge, ffmpeg-encoder-decoder, ffmpeg-image-transport-msgs, rclcpp, ros-environment, rosbag2-cpp, rosbag2-storage, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-ffmpeg-image-transport-tools";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ffmpeg_image_transport_tools-release/archive/release/humble/ffmpeg_image_transport_tools/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "35adf6574a3c9abd8547ffe942776394a0a662c9506cacedfc223a9e08265d16";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros ros-environment ];
  checkInputs = [ ament-cmake-clang-format ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge ffmpeg-encoder-decoder ffmpeg-image-transport-msgs rclcpp rosbag2-cpp rosbag2-storage sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ros-environment ];

  meta = {
    description = "tools for processing ffmpeg_image_transport_msgs";
    license = with lib.licenses; [ "Apache-2" ];
  };
}
