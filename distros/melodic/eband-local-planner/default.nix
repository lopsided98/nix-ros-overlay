
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, base-local-planner, catkin, cmake-modules, control-toolbox, costmap-2d, dynamic-reconfigure, geometry-msgs, nav-core, nav-msgs, pluginlib, roscpp, tf2-eigen, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-eband-local-planner";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/utexas-bwi-gbp/eband_local_planner-release/archive/release/melodic/eband_local_planner/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "5c4fcdfb8e5d7fa63ba539b3cb4017a9d1f315a4133fad4277f7df4c53254a92";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ base-local-planner control-toolbox costmap-2d dynamic-reconfigure geometry-msgs nav-core nav-msgs pluginlib roscpp tf2-eigen tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''eband_local_planner implements a plugin to the
    base_local_planner. It implements the Elastic Band method on the
    SE2 manifold.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
