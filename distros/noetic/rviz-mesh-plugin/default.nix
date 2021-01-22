
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mesh-msgs, qt5, roscpp, rviz, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-rviz-mesh-plugin";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh-tools/archive/release/noetic/rviz_mesh_plugin/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "587e99c2f192d14f98aa8a991eef0503a2c41a663d786065e411099565c6fb69";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ mesh-msgs qt5.qtbase roscpp rviz std-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RViz display types and tools for the mesh_msgs package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
