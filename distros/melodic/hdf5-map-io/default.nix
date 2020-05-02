
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, hdf5 }:
buildRosPackage {
  pname = "ros-melodic-hdf5-map-io";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh-tools/archive/release/melodic/hdf5_map_io/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "4b25fc9823b115e2ffddf5f274ec81719b69c4b1761564c11072e0cdde9514fd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost hdf5 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The hdf5_map_io package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
