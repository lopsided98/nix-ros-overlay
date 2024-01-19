
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-audibot-description";
  version = "0.2.2-r5";

  src = fetchurl {
    url = "https://github.com/robustify/audibot-release/archive/release/noetic/audibot_description/0.2.2-5.tar.gz";
    name = "0.2.2-5.tar.gz";
    sha256 = "331949031776854babd340f7e4628a1adf80a5aab2c55addc8dea91e843be816";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meshes and URDF descriptions for audibot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
