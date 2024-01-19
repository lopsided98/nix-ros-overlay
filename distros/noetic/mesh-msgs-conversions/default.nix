
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lvr2, mesh-msgs, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-mesh-msgs-conversions";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh-tools/archive/release/noetic/mesh_msgs_conversions/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "e69f5498f0167c7d5088658e961b247233b9a4048016d7b82427e05247f3501d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ lvr2 mesh-msgs roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''converts point clouds and attributes into meshes and mesh attributes'';
    license = with lib.licenses; [ bsd3 ];
  };
}
