
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-video-monitor-interfaces, gazebo-video-monitor-plugins, gazebo-video-monitor-utils }:
buildRosPackage {
  pname = "ros-humble-gazebo-video-monitors";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_video_monitors-release/archive/release/humble/gazebo_video_monitors/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "c5664bb170a3dc9f449377cb87c3f031abb415e2a55bf23e736ea613ce8d5f0b";
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
