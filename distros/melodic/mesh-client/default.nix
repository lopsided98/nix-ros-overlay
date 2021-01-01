
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, curl, eigen, jsoncpp, lvr2, roscpp }:
buildRosPackage {
  pname = "ros-melodic-mesh-client";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/melodic/mesh_client/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "ee40d2fb496efd907d7159d037aa62ab91c49b5253f16a388c5852106338c056";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ curl eigen jsoncpp lvr2 roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mesh_client package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
