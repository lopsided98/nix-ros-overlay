
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, geometry-msgs, joint-state-publisher, launch, launch-ros, python3Packages, rclpy, robot-state-publisher, rosbridge-server, std-msgs, tf2-ros-py, turtlebot3-manipulation-description, xacro }:
buildRosPackage {
  pname = "ros-jazzy-web-tf-editor";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/farshad-heravi/web_tf_editor-release/archive/release/jazzy/web_tf_editor/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "ba1e7f516cf1f72634ac2b6a7f4d7246b3d3fed75ea062eb78ffbd7d5be52998";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python geometry-msgs joint-state-publisher launch launch-ros rclpy robot-state-publisher rosbridge-server std-msgs tf2-ros-py turtlebot3-manipulation-description xacro ];

  meta = {
    description = "Browser-based, RViz-like 3D viewer for authoring TF frames interactively. Renders the robot
    URDF in a web page, lets you place and drag frames with a 6-DoF gizmo, and broadcasts them
    on /tf through rosbridge.";
    license = with lib.licenses; [ asl20 mit bsd2 ];
  };
}
