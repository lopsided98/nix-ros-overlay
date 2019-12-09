
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, dynamic-reconfigure, pluginlib, tf, catkin, costmap-2d, nav-core, roscpp, angles, nav-msgs, navfn }:
buildRosPackage {
  pname = "ros-kinetic-global-planner";
  version = "1.14.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/kinetic/global_planner/1.14.5-1.tar.gz";
    name = "1.14.5-1.tar.gz";
    sha256 = "74d043e7c676b27c046324f1549fbdf644c75e5087cdc63f81891ea3cf988026";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs dynamic-reconfigure pluginlib tf costmap-2d nav-core roscpp angles nav-msgs navfn ];
  propagatedBuildInputs = [ geometry-msgs dynamic-reconfigure pluginlib tf costmap-2d nav-core roscpp nav-msgs navfn ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A path planner library and node.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
