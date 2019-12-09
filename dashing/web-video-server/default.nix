
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, ament-cmake-ros, ffmpeg, async-web-server-cpp, image-transport, cv-bridge, rclcpp }:
buildRosPackage {
  pname = "ros-dashing-web-video-server";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/web_video_server-release/archive/release/dashing/web_video_server/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "53c7c64f7c6378a6ac7d82c0ab3645b4f063280319ae325d096d225dbf7cf826";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs ffmpeg async-web-server-cpp image-transport cv-bridge rclcpp ];
  propagatedBuildInputs = [ sensor-msgs ffmpeg async-web-server-cpp image-transport cv-bridge rclcpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''HTTP Streaming of ROS Image Topics in Multiple Formats'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
