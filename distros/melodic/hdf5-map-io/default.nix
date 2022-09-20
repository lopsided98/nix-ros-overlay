
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, lvr2 }:
buildRosPackage {
  pname = "ros-melodic-hdf5-map-io";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh-tools/archive/release/melodic/hdf5_map_io/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "13f5cf1290c667d40005dfb864ec17d5a2329410dfa8714a4574ab4764754c72";
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
