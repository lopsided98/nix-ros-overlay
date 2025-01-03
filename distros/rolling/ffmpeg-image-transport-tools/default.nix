
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-ros, ament-lint-auto, ament-lint-common, cv-bridge, ffmpeg-image-transport, ffmpeg-image-transport-msgs, rclcpp, ros-environment, rosbag2-cpp, rosbag2-storage, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-ffmpeg-image-transport-tools";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ffmpeg_image_transport_tools-release/archive/release/rolling/ffmpeg_image_transport_tools/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "42a523c3961aae31515cfa634944e55efa7289042cb7bf5b021b24d3e3f76d20";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros ros-environment ];
  checkInputs = [ ament-cmake-clang-format ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge ffmpeg-image-transport ffmpeg-image-transport-msgs rclcpp rosbag2-cpp rosbag2-storage sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ros-environment ];

  meta = {
    description = "tools for processing ffmpeg_image_transport_msgs";
    license = with lib.licenses; [ "Apache-2" ];
  };
}
