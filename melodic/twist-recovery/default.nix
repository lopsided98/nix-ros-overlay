
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, base-local-planner, tf2-geometry-msgs, nav-core, catkin, tf2-ros, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-twist-recovery";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_experimental-release/archive/release/melodic/twist_recovery/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "42f3ed698ba40488337c23be1ee88d0980097420c6ef3c81003dcfdad3d75d0b";
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
