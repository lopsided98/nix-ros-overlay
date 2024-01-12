
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclpy, rqt-gui, rqt-gui-py, rqt-msg }:
buildRosPackage {
  pname = "ros-humble-rqt-srv";
  version = "1.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_srv-release/archive/release/humble/rqt_srv/1.0.3-3.tar.gz";
    name = "1.0.3-3.tar.gz";
    sha256 = "02106a0281c9b037a9467941d92799e56bb601dcc016e1cfc0589faefffba913";
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
