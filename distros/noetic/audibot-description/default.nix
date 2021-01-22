
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-audibot-description";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/robustify/audibot-release/archive/release/noetic/audibot_description/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "21dabbcc305e4cf3baf8294ed177bab0eca6f205cbe74321e51459d646b3a9a8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meshes and URDF descriptions for audibot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
