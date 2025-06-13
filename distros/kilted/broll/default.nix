
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, ffmpeg, pkg-config, rclcpp, rclcpp-components, rcutils, sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-broll";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2_broll-release/archive/release/kilted/broll/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "93fd9f981350f380800884f5be967972ebc683553887589a47952c591b373a7c";
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
