
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, python3Packages, pythonPackages, rclpy, rosbag2, rqt-bag, rqt-gui, rqt-gui-py, rqt-plot, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-rqt-bag-plugins";
  version = "1.5.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_bag-release/archive/release/rolling/rqt_bag_plugins/1.5.1-2.tar.gz";
    name = "1.5.1-2.tar.gz";
    sha256 = "53d636051fafe5f00f77b6aff804e41f916d0ff44a549992f2148916d5c19d39";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs python3Packages.pillow python3Packages.pycairo rclpy rosbag2 rqt-bag rqt-gui rqt-gui-py rqt-plot sensor-msgs std-msgs ];

  meta = {
    description = ''rqt_bag provides a GUI plugin for displaying and replaying ROS bag files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
