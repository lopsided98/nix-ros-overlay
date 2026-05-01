
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, ffmpeg, pkg-config, rclcpp, rclcpp-components, rcutils, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-broll";
  version = "0.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2_broll-release/archive/release/lyrical/broll/0.1.0-3.tar.gz";
    name = "0.1.0-3.tar.gz";
    sha256 = "2ae1cca2bcc2016f1194880bd8467734bc0c53c953095e38cb30dd74e8116ae9";
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
