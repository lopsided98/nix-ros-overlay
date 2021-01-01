
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lvr2, mesh-msgs, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-mesh-msgs-conversions";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh-tools/archive/release/melodic/mesh_msgs_conversions/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "64768b67d148491af1cd698e8a4b9aa78856e14a3d7af935c7ca801c498550e4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ lvr2 mesh-msgs roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''converts point clouds and attributes into meshes and mesh attributes'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
