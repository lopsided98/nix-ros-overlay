
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rviz-plugin-tutorials, visualization-marker-tutorials, catkin, interactive-marker-tutorials, librviz-tutorial, rviz-python-tutorial }:
buildRosPackage {
  pname = "ros-kinetic-visualization-tutorials";
  version = "0.10.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/visualization_tutorials-release/archive/release/kinetic/visualization_tutorials/0.10.3-0.tar.gz";
    name = "0.10.3-0.tar.gz";
    sha256 = "a801eaedfd07578c2e80ea595caf484306812b50a0758a34821348a0b1d403a1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rviz-plugin-tutorials visualization-marker-tutorials interactive-marker-tutorials librviz-tutorial rviz-python-tutorial ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage referencing tutorials related to rviz and visualization.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
