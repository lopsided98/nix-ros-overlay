
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-video-monitor-interfaces, gazebo-video-monitor-plugins, gazebo-video-monitor-utils }:
buildRosPackage {
  pname = "ros-humble-gazebo-video-monitors";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_video_monitors-release/archive/release/humble/gazebo_video_monitors/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "18dbb638fc517bb67fd56a669fad76048ab3d0f9ca63d3a6b0af9ec039a71e8b";
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
