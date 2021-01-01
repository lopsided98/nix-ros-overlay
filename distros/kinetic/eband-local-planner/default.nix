
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, base-local-planner, catkin, cmake-modules, control-toolbox, costmap-2d, geometry-msgs, nav-core, nav-msgs, pluginlib, roscpp, tf, tf-conversions }:
buildRosPackage {
  pname = "ros-kinetic-eband-local-planner";
  version = "0.3.1-r2";

  src = fetchurl {
    url = "https://github.com/utexas-bwi-gbp/eband_local_planner-release/archive/release/kinetic/eband_local_planner/0.3.1-2.tar.gz";
    name = "0.3.1-2.tar.gz";
    sha256 = "f6b59fdb1a752463feb105a2b9722bbb207817654fc11ef72ed9fef70fe1ac7c";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  propagatedBuildInputs = [ base-local-planner control-toolbox costmap-2d geometry-msgs nav-core nav-msgs pluginlib roscpp tf tf-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''eband_local_planner implements a plugin to the
    base_local_planner. It implements the Elastic Band method on the
    SE2 manifold.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
