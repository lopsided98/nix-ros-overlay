
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-youbot-description";
  version = "0.8.1";

  src = fetchurl {
    url = "https://github.com/youbot-release/youbot_description-release/archive/release/kinetic/youbot_description/0.8.1-0.tar.gz";
    name = "0.8.1-0.tar.gz";
    sha256 = "9b5201f020d399264085c9ea1f0f318149583bd8eb39cbb95c9b28f6008c534f";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Robot descriptions in form of URDF files and meshes'';
    license = with lib.licenses; [ gpl3 ];
  };
}
