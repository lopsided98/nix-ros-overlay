
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, python3Packages, rclpy, rosbag2, rqt-bag, rqt-gui, rqt-gui-py, rqt-plot, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-rqt-bag-plugins";
  version = "1.1.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_bag-release/archive/release/humble/rqt_bag_plugins/1.1.5-1.tar.gz";
    name = "1.1.5-1.tar.gz";
    sha256 = "49ff44917077186f3755e0c21eb494ccfd543c89dd32a890017dcdced9136b13";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ geometry-msgs python3Packages.pillow python3Packages.pycairo rclpy rosbag2 rqt-bag rqt-gui rqt-gui-py rqt-plot sensor-msgs std-msgs ];

  meta = {
    description = "rqt_bag provides a GUI plugin for displaying and replaying ROS bag files.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
