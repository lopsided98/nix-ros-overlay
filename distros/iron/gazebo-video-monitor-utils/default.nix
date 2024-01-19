
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-msgs, rclpy, std-srvs }:
buildRosPackage {
  pname = "ros-iron-gazebo-video-monitor-utils";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_video_monitors-release/archive/release/iron/gazebo_video_monitor_utils/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "64b9914ea04cb447ee7e6df9d54afb4dfcc515f1d31d0a140cece9b1ba923405";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ gazebo-msgs rclpy std-srvs ];

  meta = {
    description = ''Contains utility scripts that are meant to interact with the gazebo video monitor plugins.'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
