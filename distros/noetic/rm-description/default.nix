
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-noetic-rm-description";
  version = "0.1.9-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_description-release/archive/release/noetic/rm_description/0.1.9-1.tar.gz";
    name = "0.1.9-1.tar.gz";
    sha256 = "c947b61f5e4064b3d11ec7321c6780f0688059d999b64a0a297a1e5d23e3b9fa";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RoboMaster robot description files'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
