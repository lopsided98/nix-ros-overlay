
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-clang-tidy, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-ros, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, async-web-server-cpp, boost, cv-bridge, ffmpeg, image-transport, opencv, pkg-config, pluginlib, rclcpp, rclcpp-components, rmw, ros-environment, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-web-video-server";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/web_video_server-release/archive/release/humble/web_video_server/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "673af3acbbe60efa149152ac2b02095d9c8ea7de1850d84d3232a59625a37acb";
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
