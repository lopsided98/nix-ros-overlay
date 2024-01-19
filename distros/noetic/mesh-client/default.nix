
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, curl, eigen, jsoncpp, lvr2, pkg-config, roscpp }:
buildRosPackage {
  pname = "ros-noetic-mesh-client";
  version = "1.0.1-r2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/noetic/mesh_client/1.0.1-2.tar.gz";
    name = "1.0.1-2.tar.gz";
    sha256 = "2e48408be7af93a21f425580e2b528bf61f4e4563f2cb9c089acc717f5e4acfa";
  };

  buildType = "catkin";
  buildInputs = [ catkin pkg-config ];
  propagatedBuildInputs = [ curl eigen jsoncpp lvr2 roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mesh_client package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
