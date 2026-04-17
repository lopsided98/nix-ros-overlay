
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, builtin-interfaces, geometry-msgs, python3Packages, rclpy, rosbag2, rqt-bag, rqt-gui, rqt-gui-py, rqt-plot, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-rqt-bag-plugins";
  version = "2.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_bag-release/archive/release/kilted/rqt_bag_plugins/2.0.3-2.tar.gz";
    name = "2.0.3-2.tar.gz";
    sha256 = "f501eb21c1011df20cc6656ac8ab83a8dda9d05e32d459b2cb35de5134b92f00";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python builtin-interfaces geometry-msgs python3Packages.numpy python3Packages.pillow python3Packages.pycairo rclpy rosbag2 rqt-bag rqt-gui rqt-gui-py rqt-plot sensor-msgs std-msgs ];

  meta = {
    description = "rqt_bag provides a GUI plugin for displaying and replaying ROS bag files.";
    license = with lib.licenses; [ bsdOriginal "HPND" ];
  };
}
