
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lvr2, mesh-msgs, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-mesh-msgs-conversions";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh-tools/archive/release/melodic/mesh_msgs_conversions/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "50b2422e61e2b03c92fc2a1d3e2c77921f4c23a4d7c1859ec56ec6b604f8eb08";
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
