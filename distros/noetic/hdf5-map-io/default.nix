
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, lvr2 }:
buildRosPackage {
  pname = "ros-noetic-hdf5-map-io";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh-tools/archive/release/noetic/hdf5_map_io/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "31ca04db6683ffac320887907022e7d8ae3bf6965eb11252d0bf1f6836f4b571";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost lvr2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The hdf5_map_io package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
