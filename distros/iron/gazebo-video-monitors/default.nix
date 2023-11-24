
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-video-monitor-interfaces, gazebo-video-monitor-plugins, gazebo-video-monitor-utils }:
buildRosPackage {
  pname = "ros-iron-gazebo-video-monitors";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_video_monitors-release/archive/release/iron/gazebo_video_monitors/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "1a36a452868c32e5623e249cbcaf89731a76335fdf54397dbcf2c8eb5a4bf925";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gazebo-video-monitor-interfaces gazebo-video-monitor-plugins gazebo-video-monitor-utils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage that groups together the gazebo_video_monitors packages.'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
