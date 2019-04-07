
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, catkin, roscpp, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-kinetic-costmap-prohibition-layer";
  version = "0.0.5";

  src = fetchurl {
    url = https://github.com/rst-tu-dortmund/costmap_prohibition_layer-release/archive/release/kinetic/costmap_prohibition_layer/0.0.5-0.tar.gz;
    sha256 = "249a5d7b9bbd812905db2e734dd6ecdf38f35db27d615af06a816734f3ccc4c6";
  };

  buildInputs = [ costmap-2d roscpp dynamic-reconfigure ];
  propagatedBuildInputs = [ costmap-2d roscpp dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS-Package that implements a costmap layer to add prohibited areas to the costmap-2D by a user configuration.'';
    #license = lib.licenses.BSD;
  };
}
