
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python-qt-binding, rclpy, rosbag2-py, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-humble-rqt-bag";
  version = "1.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_bag-release/archive/release/humble/rqt_bag/1.1.6-1.tar.gz";
    name = "1.1.6-1.tar.gz";
    sha256 = "01b811f324962d0d8fac1497e3da6f9877506a4359540dec2bff731ca45f6acc";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python-qt-binding rclpy rosbag2-py rqt-gui rqt-gui-py ];

  meta = {
    description = "rqt_bag provides a GUI plugin for displaying and replaying ROS bag files.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
