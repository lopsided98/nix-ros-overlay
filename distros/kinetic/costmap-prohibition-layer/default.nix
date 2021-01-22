
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, dynamic-reconfigure, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-costmap-prohibition-layer";
  version = "0.0.5";

  src = fetchurl {
    url = "https://github.com/rst-tu-dortmund/costmap_prohibition_layer-release/archive/release/kinetic/costmap_prohibition_layer/0.0.5-0.tar.gz";
    name = "0.0.5-0.tar.gz";
    sha256 = "249a5d7b9bbd812905db2e734dd6ecdf38f35db27d615af06a816734f3ccc4c6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ costmap-2d dynamic-reconfigure roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS-Package that implements a costmap layer to add prohibited areas to the costmap-2D by a user configuration.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
