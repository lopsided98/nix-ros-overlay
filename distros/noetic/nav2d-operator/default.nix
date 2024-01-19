
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, message-generation, message-runtime, roscpp, sensor-msgs, tf, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-nav2d-operator";
  version = "0.4.3-r1";

  src = fetchurl {
    url = "https://github.com/skasperski/navigation_2d-release/archive/release/noetic/nav2d_operator/0.4.3-1.tar.gz";
    name = "0.4.3-1.tar.gz";
    sha256 = "ac72183e832843c469d705fbf89c16da594efe0abaa1a85002963e98240dc017";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation tf2-ros ];
  propagatedBuildInputs = [ costmap-2d message-runtime roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The operator is a lightweight, purely reactive obstacle-avoidance
    module for mobile robots moving in a planar environment. The operator node
    works by evaluating a set of predefined motion primitives based on a local
    costmap and a desired direction. The best evaluated motion command will be
    send to the mobile base.'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
