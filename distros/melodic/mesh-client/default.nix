
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, curl, eigen, jsoncpp, lvr2, pkg-config, roscpp }:
buildRosPackage {
  pname = "ros-melodic-mesh-client";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/melodic/mesh_client/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "92bdfddf3c31220bc9fce88f342bdc453db1f646a221862e18d3cfeb8445bd94";
  };

  buildType = "catkin";
  buildInputs = [ pkg-config ];
  propagatedBuildInputs = [ curl eigen jsoncpp lvr2 roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mesh_client package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
