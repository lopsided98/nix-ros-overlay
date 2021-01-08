
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lvr2, mesh-msgs, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-mesh-msgs-conversions";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh-tools/archive/release/noetic/mesh_msgs_conversions/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "e67224e431f1940b8ad49c207801fbd55da9d2430d7e1c2f230371b579a138d3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ lvr2 mesh-msgs roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''converts point clouds and attributes into meshes and mesh attributes'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
