
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python-qt-binding, python3Packages, rclpy, rqt-console, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-galactic-rqt-msg";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_msg-release/archive/release/galactic/rqt_msg/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "30247626de271eaeb5bb5269eff0cfa3b652738ea9a41adb2310eb8532a14e51";
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
