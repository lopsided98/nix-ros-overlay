
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, ffmpeg, pkg-config, rclcpp, rclcpp-components, rcutils, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-broll";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2_broll-release/archive/release/humble/broll/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "0f207a6b7964a1f00081bf050e083762ce3ca46ce0d2611133c4d26b5f70175a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros pkg-config ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ffmpeg rclcpp rclcpp-components rcutils sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ];

  meta = {
    description = "B-Roll utility library for interacting with video stream data in the context of rosbag2";
    license = with lib.licenses; [ asl20 ];
  };
}
