
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-insight-gui";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/insight_gui-release/archive/release/jazzy/insight_gui/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "1b8127a1922ea026fe85ad44c49e820aa0186f5e5cdee6186fa4787139e21aef";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.networkx python3Packages.pygraphviz rclpy ];

  meta = {
    description = "Insight is a minimalist GUI alternative to rqt. It is a GTK4-based tool for exploring ROS2 topics, services, and messages, featuring the GNOME Adwaita style.";
    license = with lib.licenses; [ gpl3Only ];
  };
}
