
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, interactive-marker-tutorials, librviz-tutorial, rviz-plugin-tutorials, rviz-python-tutorial, visualization-marker-tutorials }:
buildRosPackage {
  pname = "ros-noetic-visualization-tutorials";
  version = "0.11.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/visualization_tutorials-release/archive/release/noetic/visualization_tutorials/0.11.1-1.tar.gz";
    name = "0.11.1-1.tar.gz";
    sha256 = "69cfb74ad79efe78f89a20303bf623157e804cdc1843b502c1157b2fda0e637c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ interactive-marker-tutorials librviz-tutorial rviz-plugin-tutorials rviz-python-tutorial visualization-marker-tutorials ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Metapackage referencing tutorials related to rviz and visualization.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
