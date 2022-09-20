
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, curl, eigen, jsoncpp, lvr2, pkg-config, roscpp }:
buildRosPackage {
  pname = "ros-melodic-mesh-client";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/melodic/mesh_client/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "48261f214dab66360d39ceb3d8ba5091f8c552600b3a484866489fa7ddce98f8";
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
