
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, sensor-msgs, catkin, roscpp, message-generation, message-runtime, tf }:
buildRosPackage {
  pname = "ros-lunar-nav2d-operator";
  version = "0.4.1";

  src = fetchurl {
    url = https://github.com/skasperski/navigation_2d-release/archive/release/lunar/nav2d_operator/0.4.1-0.tar.gz;
    sha256 = "662071092589a37cc384a74b14551a9613e41246ed3dfee794fd886ab271df5e";
  };

  buildInputs = [ costmap-2d message-generation sensor-msgs tf roscpp ];
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
