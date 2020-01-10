
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclpy, rqt-gui, rqt-gui-py, rqt-msg }:
buildRosPackage {
  pname = "ros-eloquent-rqt-srv";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_srv-release/archive/release/eloquent/rqt_srv/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "044bc13376e0298c25e917d5dd4159f9dbeac9dcbef7f348dd05ab65b3bb1692";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rclpy rqt-gui rqt-gui-py rqt-msg ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A Python GUI plugin for introspecting available ROS message types.
  Note that the srvs available through this plugin is the ones that are stored
  on your machine, not on the ROS core your rqt instance connects to.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
