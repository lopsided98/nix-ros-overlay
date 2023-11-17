
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-msgs, rclpy, std-srvs }:
buildRosPackage {
  pname = "ros-humble-gazebo-video-monitor-utils";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_video_monitors-release/archive/release/humble/gazebo_video_monitor_utils/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "b21bf1b8e79a8c933369b3aba4dad47ac35c121952c499c52ccf2494ca0cbf6f";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ gazebo-msgs rclpy std-srvs ];

  meta = {
    description = ''Contains utility scripts that are meant to interact with the gazebo video monitor plugins.'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
