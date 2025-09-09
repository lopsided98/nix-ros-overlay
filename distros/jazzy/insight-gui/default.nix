
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, adwaita-icon-theme, ament-copyright, ament-flake8, ament-pep257, glib, gobject-introspection, gtk4, libadwaita, python3Packages, rclpy, ros2cli, ros2launch, turtlesim }:
buildRosPackage {
  pname = "ros-jazzy-insight-gui";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/insight_gui-release/archive/release/jazzy/insight_gui/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "59a77eb89f88f97b4e1169070f900efab89effbd5207e87e27f2353cb00de2b0";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ adwaita-icon-theme glib gobject-introspection gtk4 libadwaita python3Packages.networkx python3Packages.pygobject3 python3Packages.pygraphviz rclpy ros2cli ros2launch turtlesim ];

  meta = {
    description = "Insight is a minimalist GUI alternative to rqt. It is a GTK4-based tool for exploring ROS2 topics, services, and messages, featuring the GNOME Adwaita style.";
    license = with lib.licenses; [ gpl3Only ];
  };
}
