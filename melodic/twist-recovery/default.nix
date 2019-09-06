
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, base-local-planner, tf2-geometry-msgs, nav-core, catkin, tf2-ros, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-twist-recovery";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_experimental-release/archive/release/melodic/twist_recovery/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "8c67a2c46844a984e92f59e344590deedd9525f2bfc7b3201c6a1e8999c2d881";
  };

  buildType = "catkin";
  buildInputs = [ costmap-2d pluginlib base-local-planner tf2-geometry-msgs nav-core tf2-ros geometry-msgs ];
  propagatedBuildInputs = [ costmap-2d pluginlib base-local-planner tf2-geometry-msgs nav-core tf2-ros geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A recovery behavior that performs a particular used-defined twist.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
