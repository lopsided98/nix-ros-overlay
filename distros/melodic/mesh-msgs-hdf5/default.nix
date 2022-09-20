
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hdf5-map-io, label-manager, mesh-msgs }:
buildRosPackage {
  pname = "ros-melodic-mesh-msgs-hdf5";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh-tools/archive/release/melodic/mesh_msgs_hdf5/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "5edca85324e48bd277331b12eddf4955d9c7cddbb3364e5261d9aba2907e8502";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ hdf5-map-io label-manager mesh-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Read mesh_msgs from hdf5'';
    license = with lib.licenses; [ bsd3 ];
  };
}
