
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, builtin-interfaces, geometry-msgs, python3Packages, rclpy, rosbag2, rqt-bag, rqt-gui, rqt-gui-py, rqt-plot, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rqt-bag-plugins";
  version = "2.2.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_bag-release/archive/release/lyrical/rqt_bag_plugins/2.2.2-3.tar.gz";
    name = "2.2.2-3.tar.gz";
    sha256 = "57c774772c5f884e8f0c07c2eb772c406134bb619b6e72d6a18967bb583d2fe1";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python builtin-interfaces geometry-msgs python3Packages.numpy python3Packages.pillow python3Packages.pycairo rclpy rosbag2 rqt-bag rqt-gui rqt-gui-py rqt-plot sensor-msgs std-msgs ];

  meta = {
    description = "rqt_bag provides a GUI plugin for displaying and replaying ROS bag files.";
    license = with lib.licenses; [ bsdOriginal "HPND" ];
  };
}
