
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, tf, sensor-msgs, catkin, tf2-ros, message-generation, message-runtime, roscpp }:
buildRosPackage {
  pname = "ros-melodic-nav2d-operator";
  version = "0.4.2";

  src = fetchurl {
    url = https://github.com/skasperski/navigation_2d-release/archive/release/melodic/nav2d_operator/0.4.2-0.tar.gz;
    sha256 = "a8ba977c06ec3334210448ff31687a876686fe661f3b50f407471465c81faccd";
  };

  buildInputs = [ costmap-2d message-generation tf2-ros sensor-msgs tf roscpp ];
  propagatedBuildInputs = [ costmap-2d message-runtime sensor-msgs tf roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The operator is a lightweight, purely reactive obstacle-avoidance
    module for mobile robots moving in a planar environment. The operator node
    works by evaluating a set of predefined motion primitives based on a local
    costmap and a desired direction. The best evaluated motion command will be
    send to the mobile base.'';
    #license = lib.licenses.GPLv3;
  };
}
