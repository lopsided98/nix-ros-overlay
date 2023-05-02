
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclpy, rqt-gui, rqt-gui-py, rqt-msg }:
buildRosPackage {
  pname = "ros-rolling-rqt-srv";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_srv-release/archive/release/rolling/rqt_srv/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "c0f9431ec7813a4687b5f382629346c301492982239c57b3c4c2431e6366a9a8";
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
