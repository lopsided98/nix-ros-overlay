
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-cpplint, ament-cmake-lint-cmake, ament-cmake-ros, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, async-web-server-cpp, cv-bridge, ffmpeg, image-transport, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-web-video-server";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/web_video_server-release/archive/release/rolling/web_video_server/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "d7ba46436aa633e3331666bbb7c9f1d34b58375b88c6e22e48224ab6c306cba3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-copyright ament-cmake-cpplint ament-cmake-lint-cmake ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ async-web-server-cpp cv-bridge ffmpeg image-transport rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "HTTP Streaming of ROS Image Topics in Multiple Formats";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
