
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python-qt-binding, python3Packages, rclpy, rqt-console, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-rolling-rqt-msg";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_msg-release/archive/release/rolling/rqt_msg/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "da9b3c844aa07be91a5d8488799410fe1ec710b848f7675e15ea2cee6977b16b";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python-qt-binding python3Packages.catkin-pkg rclpy rqt-console rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = ''A Python GUI plugin for introspecting available ROS message types.
  Note that the msgs available through this plugin is the ones that are stored
  on your machine, not on the ROS core your rqt instance connects to.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
