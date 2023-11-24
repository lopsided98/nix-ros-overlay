
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-srvs }:
buildRosPackage {
  pname = "ros-iron-gazebo-video-monitor-interfaces";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_video_monitors-release/archive/release/iron/gazebo_video_monitor_interfaces/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "78bd4f29980a4d2cc4d36051f154a478e6befcf10033dcc741b85f54c5bea20b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-srvs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''gazebo_video_monitor_interfaces defines interfaces for the gazebo_video_monitor_plugins package.'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
