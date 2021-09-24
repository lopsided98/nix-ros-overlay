
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclpy, rqt-gui, rqt-gui-py, rqt-msg }:
buildRosPackage {
  pname = "ros-foxy-rqt-srv";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_srv-release/archive/release/foxy/rqt_srv/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "7b126f474d382c6d52510f804ebc633a5b8f7b9912cfe3503404c1e4d8943df3";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rclpy rqt-gui rqt-gui-py rqt-msg ];

  meta = {
    description = ''A Python GUI plugin for introspecting available ROS message types.
  Note that the srvs available through this plugin is the ones that are stored
  on your machine, not on the ROS core your rqt instance connects to.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
