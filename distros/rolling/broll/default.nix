
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, ffmpeg, pkg-config, rclcpp, rclcpp-components, rcutils, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-broll";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2_broll-release/archive/release/rolling/broll/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "92d8325d673a9c76b286fe0e4961af74dfc5d0598cb3328d02992e8dbc9e4961";
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
