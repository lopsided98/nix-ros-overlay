
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, librviz-tutorial, visualization-marker-tutorials, catkin, interactive-marker-tutorials, rviz-python-tutorial, rviz-plugin-tutorials }:
buildRosPackage {
  pname = "ros-lunar-visualization-tutorials";
  version = "0.10.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/visualization_tutorials-release/archive/release/lunar/visualization_tutorials/0.10.3-0.tar.gz;
    sha256 = "88cac71f39efdedfb43eba985047cc6b3c720137309cac9f265284ab9ea05073";
  };

  propagatedBuildInputs = [ librviz-tutorial interactive-marker-tutorials rviz-python-tutorial visualization-marker-tutorials rviz-plugin-tutorials ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage referencing tutorials related to rviz and visualization.'';
    #license = lib.licenses.BSD;
  };
}
