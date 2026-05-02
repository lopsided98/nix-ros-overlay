
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-clang-tidy, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-ros, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, async-web-server-cpp, boost, cv-bridge, ffmpeg, image-transport, opencv, pkg-config, pluginlib, rclcpp, rclcpp-components, rmw, ros-environment, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-web-video-server";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/web_video_server-release/archive/release/rolling/web_video_server/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "8eafa118bacb24b2dd25fa04c427af263d9a9e17494a8679eaf7090b4b22d465";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros pkg-config ];
  checkInputs = [ ament-cmake-clang-tidy ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ros-environment ];
  propagatedBuildInputs = [ async-web-server-cpp boost cv-bridge ffmpeg image-transport opencv opencv.cxxdev pluginlib rclcpp rclcpp-components rmw sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros pkg-config ];

  meta = {
    description = "HTTP Streaming of ROS Image Topics in Multiple Formats";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
