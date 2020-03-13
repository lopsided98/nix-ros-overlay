
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, costmap-2d, dynamic-reconfigure, geometry-msgs, nav-core, nav-msgs, navfn, pluginlib, roscpp, tf }:
buildRosPackage {
  pname = "ros-kinetic-global-planner";
  version = "1.14.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/kinetic/global_planner/1.14.7-1.tar.gz";
    name = "1.14.7-1.tar.gz";
    sha256 = "c91be57e508c657412ed72ffde77b1b5382d4012d90ed709883e5c778b191ace";
  };

  buildType = "catkin";
  buildInputs = [ angles ];
  propagatedBuildInputs = [ costmap-2d dynamic-reconfigure geometry-msgs nav-core nav-msgs navfn pluginlib roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A path planner library and node.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
