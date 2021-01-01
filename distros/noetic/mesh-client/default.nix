
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, curl, eigen, jsoncpp, lvr2, roscpp }:
buildRosPackage {
  pname = "ros-noetic-mesh-client";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/noetic/mesh_client/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "6728b84c3d21b5732b75fa0a8ccdfca80f31a3a938ae6d0f37ffecb9f7d2ea6e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ curl eigen jsoncpp lvr2 roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mesh_client package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
