
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, adwaita-icon-theme, ament-copyright, ament-flake8, ament-pep257, glib, gobject-introspection, gtk4, libadwaita, python3Packages, rclpy, ros2cli, ros2launch, tf-transformations, tf2-ros, turtlesim }:
buildRosPackage {
  pname = "ros-jazzy-insight-gui";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/insight_gui-release/archive/release/jazzy/insight_gui/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "ba5df5559e1435337f9d469601c733725eb1c6af2fc8b8f10ea05808ec715940";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ adwaita-icon-theme glib gobject-introspection gtk4 libadwaita python3Packages.networkx python3Packages.pygobject3 python3Packages.pygraphviz rclpy ros2cli ros2launch tf-transformations tf2-ros turtlesim ];

  meta = {
    description = "Insight is a minimalist GUI alternative to rqt. It is a GTK4-based tool for exploring ROS2 topics, services, and messages, featuring the GNOME Adwaita style.";
    license = with lib.licenses; [ gpl3Only ];
  };
}
