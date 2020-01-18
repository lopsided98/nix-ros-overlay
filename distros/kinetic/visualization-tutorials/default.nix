
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, interactive-marker-tutorials, librviz-tutorial, rviz-plugin-tutorials, rviz-python-tutorial, visualization-marker-tutorials }:
buildRosPackage {
  pname = "ros-kinetic-visualization-tutorials";
  version = "0.10.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/visualization_tutorials-release/archive/release/kinetic/visualization_tutorials/0.10.3-0.tar.gz";
    name = "0.10.3-0.tar.gz";
    sha256 = "a801eaedfd07578c2e80ea595caf484306812b50a0758a34821348a0b1d403a1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ interactive-marker-tutorials librviz-tutorial rviz-plugin-tutorials rviz-python-tutorial visualization-marker-tutorials ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage referencing tutorials related to rviz and visualization.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
