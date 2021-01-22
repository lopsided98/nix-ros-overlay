
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, interactive-marker-tutorials, librviz-tutorial, rviz-plugin-tutorials, rviz-python-tutorial, visualization-marker-tutorials }:
buildRosPackage {
  pname = "ros-kinetic-visualization-tutorials";
  version = "0.10.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/visualization_tutorials-release/archive/release/kinetic/visualization_tutorials/0.10.5-1.tar.gz";
    name = "0.10.5-1.tar.gz";
    sha256 = "b9861b11940d4b13bb74d1b8f5948a0364043ad8887fc93dd2faee63f864cb80";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ interactive-marker-tutorials librviz-tutorial rviz-plugin-tutorials rviz-python-tutorial visualization-marker-tutorials ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage referencing tutorials related to rviz and visualization.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
