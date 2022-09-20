
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, message-generation, message-runtime, roscpp, sensor-msgs, tf, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-nav2d-operator";
  version = "0.4.2";

  src = fetchurl {
    url = "https://github.com/skasperski/navigation_2d-release/archive/release/melodic/nav2d_operator/0.4.2-0.tar.gz";
    name = "0.4.2-0.tar.gz";
    sha256 = "a8ba977c06ec3334210448ff31687a876686fe661f3b50f407471465c81faccd";
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
