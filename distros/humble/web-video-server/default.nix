
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-cpplint, ament-cmake-lint-cmake, ament-cmake-ros, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, async-web-server-cpp, cv-bridge, ffmpeg, image-transport, pkg-config, rclcpp, rclcpp-components, ros-environment, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-web-video-server";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/web_video_server-release/archive/release/humble/web_video_server/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "54796b78380f80dd7e46e18915f051f26093517f318c6969c6f0da86f176d566";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros pkg-config ];
  checkInputs = [ ament-cmake-copyright ament-cmake-cpplint ament-cmake-lint-cmake ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ros-environment ];
  propagatedBuildInputs = [ async-web-server-cpp cv-bridge ffmpeg image-transport rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros pkg-config ];

  meta = {
    description = "HTTP Streaming of ROS Image Topics in Multiple Formats";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
