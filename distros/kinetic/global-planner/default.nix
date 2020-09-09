
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, costmap-2d, dynamic-reconfigure, geometry-msgs, nav-core, nav-msgs, navfn, pluginlib, roscpp, tf }:
buildRosPackage {
  pname = "ros-kinetic-global-planner";
  version = "1.14.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/kinetic/global_planner/1.14.8-1.tar.gz";
    name = "1.14.8-1.tar.gz";
    sha256 = "74f7c6c9d88300b0bc695abda7f1f6a4a58a832efed0ccc5575186a89346ba84";
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
