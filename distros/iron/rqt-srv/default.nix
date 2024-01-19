
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclpy, rqt-gui, rqt-gui-py, rqt-msg }:
buildRosPackage {
  pname = "ros-iron-rqt-srv";
  version = "1.1.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_srv-release/archive/release/iron/rqt_srv/1.1.1-3.tar.gz";
    name = "1.1.1-3.tar.gz";
    sha256 = "033cd821777f84da5c91823361c4068b627efd3024d41daf6b96a10b3cde1e18";
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
