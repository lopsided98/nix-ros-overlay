
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, base-local-planner, cmake-modules, control-toolbox, nav-core, catkin, roscpp, nav-msgs, tf-conversions, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-eband-local-planner";
  version = "0.3.1";

  src = fetchurl {
    url = "https://github.com/utexas-bwi-gbp/eband_local_planner-release/archive/release/kinetic/eband_local_planner/0.3.1-0.tar.gz";
    name = "0.3.1-0.tar.gz";
    sha256 = "28af2a7ee8fa4ef4b4bf938fd8314d9ccd334315caf5aa6eccc492230a0a3fe6";
  };

  buildType = "catkin";
  buildInputs = [ costmap-2d pluginlib cmake-modules base-local-planner control-toolbox nav-core roscpp nav-msgs tf-conversions tf geometry-msgs ];
  propagatedBuildInputs = [ costmap-2d pluginlib base-local-planner tf control-toolbox nav-core nav-msgs tf-conversions roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''eband_local_planner implements a plugin to the
    base_local_planner. It implements the Elastic Band method on the
    SE2 manifold.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
