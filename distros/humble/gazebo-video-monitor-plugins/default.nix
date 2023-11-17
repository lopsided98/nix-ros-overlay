
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-dev, gazebo-ros, gazebo-video-monitor-interfaces, opencv, rclcpp, std-srvs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-humble-gazebo-video-monitor-plugins";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_video_monitors-release/archive/release/humble/gazebo_video_monitor_plugins/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "34d9a3447cd3f325bc80f777a8490b1ef9014481e56291b62592abdc20db670c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake yaml-cpp-vendor ];
  propagatedBuildInputs = [ gazebo-dev gazebo-ros gazebo-video-monitor-interfaces opencv rclcpp std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''gazebo_video_monitor_plugins is a package that lets the user record videos of a <a href="http://gazebosim.org/">Gazebo</a> simulation. It provides a multicamera sensor that can be used for creating different types of videos with multiple views from inside the gazebo world. There is a number of plugins already available in the package, but more can be developed by the user, with minimal effort, to fit arbitrary use cases.'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
