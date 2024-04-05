
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, python3Packages, pythonPackages, rclpy, rosbag2, rqt-bag, rqt-gui, rqt-gui-py, rqt-plot, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-rqt-bag-plugins";
  version = "1.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_bag-release/archive/release/rolling/rqt_bag_plugins/1.5.2-1.tar.gz";
    name = "1.5.2-1.tar.gz";
    sha256 = "e53810b9590d64f571d7694619f804342a38deddc8f1bb4a7715ad10e4405c89";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs python3Packages.pillow python3Packages.pycairo rclpy rosbag2 rqt-bag rqt-gui rqt-gui-py rqt-plot sensor-msgs std-msgs ];

  meta = {
    description = "rqt_bag provides a GUI plugin for displaying and replaying ROS bag files.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
