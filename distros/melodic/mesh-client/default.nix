
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, curl, eigen, jsoncpp, lvr2, roscpp }:
buildRosPackage {
  pname = "ros-melodic-mesh-client";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/melodic/mesh_client/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "7ba531188e9aa9e7d3456940fb3c6a8660761dec19172b485a5687e77cca61dc";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ curl eigen jsoncpp lvr2 roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mesh_client package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
