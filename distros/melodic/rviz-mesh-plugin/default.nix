
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mesh-msgs, qt5, roscpp, rviz, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-rviz-mesh-plugin";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh-tools/archive/release/melodic/rviz_mesh_plugin/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "1ac3536d778bcff8100d72b5038947172f31cc12c6e88026f9f2acf06f289ed0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ mesh-msgs qt5.qtbase roscpp rviz std-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RViz display types and tools for the mesh_msgs package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
