
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, costmap-2d, dynamic-reconfigure, geometry-msgs, nav-core, nav-msgs, navfn, pluginlib, roscpp, tf }:
buildRosPackage {
  pname = "ros-kinetic-global-planner";
  version = "1.14.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/kinetic/global_planner/1.14.9-1.tar.gz";
    name = "1.14.9-1.tar.gz";
    sha256 = "3259e23fb780ec1cfa3979c7633e72ba2e5eddc9d6b63021faa5b8f02bd3e172";
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
