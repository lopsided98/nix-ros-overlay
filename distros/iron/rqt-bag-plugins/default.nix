
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, python3Packages, rclpy, rosbag2, rqt-bag, rqt-gui, rqt-gui-py, rqt-plot, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-iron-rqt-bag-plugins";
  version = "1.3.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_bag-release/archive/release/iron/rqt_bag_plugins/1.3.5-1.tar.gz";
    name = "1.3.5-1.tar.gz";
    sha256 = "aab33ed685c0aab459c3a31c7c0c9e0e0aa5a236b23c48c9e1a206974a4f0359";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ geometry-msgs python3Packages.pillow python3Packages.pycairo rclpy rosbag2 rqt-bag rqt-gui rqt-gui-py rqt-plot sensor-msgs std-msgs ];

  meta = {
    description = "rqt_bag provides a GUI plugin for displaying and replaying ROS bag files.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
