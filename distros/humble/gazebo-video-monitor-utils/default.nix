
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-msgs, rclpy, std-srvs }:
buildRosPackage {
  pname = "ros-humble-gazebo-video-monitor-utils";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_video_monitors-release/archive/release/humble/gazebo_video_monitor_utils/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "8fc64f979a1f5e0260a1679fa5c1bae80ce9ec1e9090c3ddaaeb7bc8da1fea7e";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ gazebo-msgs rclpy std-srvs ];

  meta = {
    description = ''Contains utility scripts that are meant to interact with the gazebo video monitor plugins.'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
