
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, control-toolbox, pluginlib, tf, cmake-modules, base-local-planner, catkin, costmap-2d, nav-core, roscpp, tf-conversions, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-eband-local-planner";
  version = "0.3.1";

  src = fetchurl {
    url = "https://github.com/utexas-bwi-gbp/eband_local_planner-release/archive/release/kinetic/eband_local_planner/0.3.1-0.tar.gz";
    name = "0.3.1-0.tar.gz";
    sha256 = "28af2a7ee8fa4ef4b4bf938fd8314d9ccd334315caf5aa6eccc492230a0a3fe6";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs control-toolbox pluginlib tf base-local-planner cmake-modules costmap-2d nav-core roscpp tf-conversions nav-msgs ];
  propagatedBuildInputs = [ geometry-msgs control-toolbox pluginlib tf base-local-planner costmap-2d nav-core roscpp tf-conversions nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''eband_local_planner implements a plugin to the
    base_local_planner. It implements the Elastic Band method on the
    SE2 manifold.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
