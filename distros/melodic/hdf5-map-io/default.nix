
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, lvr2 }:
buildRosPackage {
  pname = "ros-melodic-hdf5-map-io";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh-tools/archive/release/melodic/hdf5_map_io/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "5805cfb79152f8350b95260d2eec609ac0292fe571e89f62cdc656454d84f819";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost lvr2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The hdf5_map_io package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
