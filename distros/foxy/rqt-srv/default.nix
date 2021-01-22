
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclpy, rqt-gui, rqt-gui-py, rqt-msg }:
buildRosPackage {
  pname = "ros-foxy-rqt-srv";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_srv-release/archive/release/foxy/rqt_srv/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "5c4fb97379ed52db252a1d5cdeb059fe45c495b6f312459a85cbe1d3964b55b6";
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
