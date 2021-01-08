
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-audibot-description";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/robustify/audibot-release/archive/release/kinetic/audibot_description/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "5c637ab0d5219209cbc72f38f43f80ca880344d104aece3683edf1efda42f2a5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meshes and URDF descriptions for audibot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
